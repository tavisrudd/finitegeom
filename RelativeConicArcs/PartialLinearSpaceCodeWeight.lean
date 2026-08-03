import Mathlib.Data.ZMod.Basic
import Mathlib.Tactic

/-!
# Parity and the minimum weight of the binary incidence kernel of a partial linear space

Fix a finite point set `P` and a finite set `L` of lines, a line being given by its point set
`line l : Finset P`.  Two hypotheses are imposed.  Every point lies on exactly `r` lines, and two
distinct lines share at most one point; the second is the partial-linear-space condition, and it
is the only geometry used below.

The binary incidence kernel is the set of maps `w : P → ZMod 2` whose restriction to every line
sums to zero.  Its support is the set of points where `w` is nonzero, and the weight of `w` is the
cardinality of that support.  Two elementary bounds hold.

The parity bound: when `r` is odd, summing the line equations counts each point `r` times, so the
total sum of `w` vanishes and the weight is even.  This is the "all-one functional" step.

The lower bound: if `w` is nonzero at a point, each of the `r` lines through that point must carry
a second support point, and those second points are pairwise distinct because two of the lines
already meet at the chosen point.  Hence the weight is at least `r + 1`.

Specialized to the incidence structure of the passant lines and internal points of a nonsingular
conic in the projective plane of order thirteen, where every internal point lies on exactly seven
passants, the two bounds give even weight at least eight for every nonzero kernel word.  That
specialization is the final theorem; the value seven is supplied as a hypothesis, since it is a
fact about the plane rather than about the incidence axioms used here.

Trust boundary: the proofs are symbolic and use only finite summation, the pigeonhole form of
`Finset.card_le_card_of_injOn`, and the parity of the ring `ZMod 2`.  No certificate, no native
evaluation, and no enumeration of the incidence structure occur; in particular nothing here is
specific to a field order.
-/

namespace RelativeConicArcs

namespace PartialLinearSpaceCodeWeight

open Finset

variable {P L : Type*} [Fintype P] [DecidableEq P] [Fintype L]

/-- The lines through a given point. -/
def linesThrough (line : L → Finset P) (p : P) : Finset L :=
  univ.filter fun l => p ∈ line l

omit [Fintype P] in
@[simp]
theorem mem_linesThrough {line : L → Finset P} {p : P} {l : L} :
    l ∈ linesThrough line p ↔ p ∈ line l := by
  simp [linesThrough]

/-- The support of a binary point function: the set of points where it is nonzero. -/
def support (w : P → ZMod 2) : Finset P :=
  univ.filter fun p => w p ≠ 0

omit [DecidableEq P] in
@[simp]
theorem mem_support {w : P → ZMod 2} {p : P} : p ∈ support w ↔ w p ≠ 0 := by
  simp [support]

/-- Summing the line equations of a kernel word counts every point once for each line through it.

`line` is the point set of each line, `w` is a binary point function vanishing on every line in
the sense that its restricted sum is zero, and every point lies on exactly `r` lines.  The
conclusion is that `r` times the total sum of `w` vanishes. -/
theorem natCast_mul_total_sum_eq_zero {line : L → Finset P} {r : ℕ}
    (hdeg : ∀ p : P, (linesThrough line p).card = r)
    {w : P → ZMod 2} (hw : ∀ l : L, ∑ p ∈ line l, w p = 0) :
    (r : ZMod 2) * ∑ p : P, w p = 0 := by
  have hswap : ∑ l : L, ∑ p ∈ line l, w p
      = ∑ p : P, ((linesThrough line p).card : ZMod 2) * w p := by
    have hline : ∀ l : L, ∑ p ∈ line l, w p
        = ∑ p : P, if p ∈ line l then w p else 0 := by
      intro l
      rw [sum_ite_mem, univ_inter]
    calc ∑ l : L, ∑ p ∈ line l, w p
        = ∑ l : L, ∑ p : P, if p ∈ line l then w p else 0 := by
          exact sum_congr rfl fun l _ => hline l
      _ = ∑ p : P, ∑ l : L, if p ∈ line l then w p else 0 := Finset.sum_comm
      _ = ∑ p : P, ((linesThrough line p).card : ZMod 2) * w p := by
          refine sum_congr rfl fun p _ => ?_
          rw [← sum_filter, sum_const, nsmul_eq_mul]
          rfl
  have hzero : ∑ l : L, ∑ p ∈ line l, w p = 0 := by
    simp [hw]
  rw [hswap] at hzero
  calc (r : ZMod 2) * ∑ p : P, w p
      = ∑ p : P, (r : ZMod 2) * w p := by rw [mul_sum]
    _ = ∑ p : P, ((linesThrough line p).card : ZMod 2) * w p := by
        exact sum_congr rfl fun p _ => by rw [hdeg p]
    _ = 0 := hzero

/-- A kernel word of a partial linear space with odd constant point degree has even weight.

The hypotheses are that every point lies on exactly `r` lines with `r` odd, and that the
restriction of `w` to every line sums to zero.  The conclusion is that the number of points where
`w` is nonzero is even. -/
theorem even_card_support {line : L → Finset P} {r : ℕ}
    (hdeg : ∀ p : P, (linesThrough line p).card = r) (hodd : Odd r)
    {w : P → ZMod 2} (hw : ∀ l : L, ∑ p ∈ line l, w p = 0) :
    Even (support w).card := by
  have hr : (r : ZMod 2) = 1 := by
    have h := ZMod.natCast_mod r 2
    rw [Nat.odd_iff.mp hodd] at h
    simpa using h.symm
  have htotal : ∑ p : P, w p = 0 := by
    have := natCast_mul_total_sum_eq_zero hdeg hw
    rwa [hr, one_mul] at this
  have hsupp : ∑ p : P, w p = ((support w).card : ZMod 2) := by
    rw [← sum_filter_add_sum_filter_not univ (fun p => w p ≠ 0) w]
    have hvanish : ∑ p ∈ univ.filter (fun p => ¬ w p ≠ 0), w p = 0 :=
      sum_eq_zero fun p hp => by simpa using (mem_filter.mp hp).2
    have hones : ∑ p ∈ univ.filter (fun p => w p ≠ 0), w p
        = ∑ _p ∈ univ.filter (fun p => w p ≠ 0), (1 : ZMod 2) := by
      refine sum_congr rfl fun p hp => ?_
      have := (mem_filter.mp hp).2
      revert this
      generalize w p = x
      revert x
      decide
    rw [hvanish, hones, add_zero, sum_const, nsmul_eq_mul, mul_one]
    rfl
  rw [hsupp] at htotal
  exact ZMod.natCast_eq_zero_iff_even.mp htotal

/-- A nonzero kernel word of a partial linear space with constant point degree `r` has weight at
least `r + 1`.

The hypotheses are that every point lies on exactly `r` lines, that two distinct lines share at
most one point, that the restriction of `w` to every line sums to zero, and that `w` is nonzero at
the point `p₀`.  Each line through `p₀` must carry a second point of the support, and two such
second points on different lines are distinct because the two lines already meet at `p₀`. -/
theorem card_support_ge_of_ne_zero {line : L → Finset P} {r : ℕ}
    (hdeg : ∀ p : P, (linesThrough line p).card = r)
    (hmeet : ∀ l m : L, l ≠ m → ∀ x y : P,
      x ∈ line l → x ∈ line m → y ∈ line l → y ∈ line m → x = y)
    {w : P → ZMod 2} (hw : ∀ l : L, ∑ p ∈ line l, w p = 0)
    {p₀ : P} (hp₀ : w p₀ ≠ 0) :
    r + 1 ≤ (support w).card := by
  classical
  have hsecond : ∀ l ∈ linesThrough line p₀,
      ∃ q, q ∈ line l ∧ q ≠ p₀ ∧ w q ≠ 0 := by
    intro l hl
    by_contra hcon
    push Not at hcon
    have hmem : p₀ ∈ line l := mem_linesThrough.mp hl
    have : ∑ p ∈ line l, w p = w p₀ := by
      refine sum_eq_single_of_mem p₀ hmem fun q hq hqne => ?_
      exact hcon q hq hqne
    rw [hw l] at this
    exact hp₀ this.symm
  choose g hgmem hgne hgsupp using hsecond
  have hcard : (linesThrough line p₀).card ≤ ((support w).erase p₀).card := by
    refine card_le_card_of_injOn (fun l => if hl : l ∈ linesThrough line p₀ then g l hl else p₀)
      ?_ ?_
    · intro l hl
      simp only [mem_coe] at hl
      simp only [hl, dif_pos]
      exact mem_erase.mpr ⟨hgne l hl, mem_support.mpr (hgsupp l hl)⟩
    · intro l hl m hm hlm
      simp only [mem_coe] at hl hm
      simp only [hl, hm, dif_pos] at hlm
      by_contra hne
      have h1 : p₀ ∈ line l := mem_linesThrough.mp hl
      have h2 : p₀ ∈ line m := mem_linesThrough.mp hm
      have h3 : g l hl ∈ line l := hgmem l hl
      have h4 : g l hl ∈ line m := by rw [hlm]; exact hgmem m hm
      exact hgne l hl (hmeet l m hne (g l hl) p₀ h3 h4 h1 h2)
  have hp₀mem : p₀ ∈ support w := mem_support.mpr hp₀
  have herase : ((support w).erase p₀).card + 1 = (support w).card :=
    card_erase_add_one hp₀mem
  rw [hdeg p₀] at hcard
  omega

/-- Every nonzero word of the binary incidence kernel of a partial linear space of constant point
degree seven has even weight at least eight.

This is the elementary minimum-weight bound for the kernel of the passant/internal-point incidence
matrix of a nonsingular conic in the projective plane of order thirteen, where every internal
point lies on exactly seven passant lines and two distinct lines meet in at most one point. -/
theorem even_and_eight_le_card_support {line : L → Finset P}
    (hdeg : ∀ p : P, (linesThrough line p).card = 7)
    (hmeet : ∀ l m : L, l ≠ m → ∀ x y : P,
      x ∈ line l → x ∈ line m → y ∈ line l → y ∈ line m → x = y)
    {w : P → ZMod 2} (hw : ∀ l : L, ∑ p ∈ line l, w p = 0)
    (hne : ∃ p₀, w p₀ ≠ 0) :
    Even (support w).card ∧ 8 ≤ (support w).card := by
  obtain ⟨p₀, hp₀⟩ := hne
  exact ⟨even_card_support hdeg (Nat.odd_iff.mpr rfl) hw,
    card_support_ge_of_ne_zero hdeg hmeet hw hp₀⟩

#print axioms natCast_mul_total_sum_eq_zero
#print axioms even_card_support
#print axioms card_support_ge_of_ne_zero
#print axioms even_and_eight_le_card_support

end PartialLinearSpaceCodeWeight

end RelativeConicArcs
