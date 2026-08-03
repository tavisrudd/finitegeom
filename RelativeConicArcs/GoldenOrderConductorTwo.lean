import Mathlib.LinearAlgebra.Matrix.Rank
import Mathlib.RingTheory.AdjoinRoot
import Mathlib.Tactic

/-!
# The conductor-two degeneration of the golden order

Let `B` be a signed orbital matrix on a finite index set: its diagonal vanishes and every
off-diagonal entry is `1` or `-1`.  Over `ℤ` such a matrix can satisfy `B ^ 2 = 5`, and the
subring it generates is then a copy of `ℤ[√5]`, which sits inside the ring of integers
`ℤ[(1 + √5) / 2]` of the real quadratic field of discriminant five with conductor two.  This
file records the elementary algebra of that conductor, in three independent pieces.

The first piece is the reduction of `B` modulo two.  All signs coalesce there, so the reduced
matrix has vanishing diagonal and every off-diagonal entry equal to one; equivalently the
reduction of `B - 1` is the all-ones matrix.  Over a field the all-ones matrix on an index set
of even cardinality squares to zero and has rank one, so the reduced shifted matrix is a
nonzero square-zero operator with one-dimensional image.  The same coalescence makes every
triangle product `B i j * B j k * B k i` of three distinct indices reduce to one.  Nothing in
this piece uses `B ^ 2 = 5` or any ambient geometry; only the sign pattern enters.

The second piece is the ring degeneration behind that collapse.  Reducing the defining
polynomial `X ^ 2 - 5` modulo two gives `(X - 1) ^ 2`, so the reduction of `ℤ[√5]` is the local
`𝔽₂`-algebra `𝔽₂[u] / (u - 1) ^ 2` rather than a product of fields or a quadratic field
extension.  This is stated as an identity of polynomials over `ZMod 2` together with the
induced identification of the associated root algebras.

The third piece is the conductor itself, stated on additive coordinates.  Write an element of
the golden order in the basis `(1, φ)` with `φ = (1 + √5) / 2`, so that a pair `(a, b)` denotes
`a + b * φ`.  Then `√5 = 2 * φ - 1`, so `c + d * √5` has coordinates `(c - d, 2 * d)`.  The
theorems below show that the coordinate pairs arising this way are exactly those with even
second coordinate, that doubling always lands in that sublattice, and that `φ` itself does not.
Together these say `ℤ[√5] = ℤ + 2 * ℤ[φ]`, which is the assertion that the conductor is two.
The basis convention is the only input; no property of the real embedding is used.
-/

open Polynomial

namespace RelativeConicArcs

namespace GoldenOrderConductorTwo

/-! ## Signed orbital matrices modulo two -/

/-- The all-ones matrix on `Fin m` over the field with two elements. -/
def allOnes (m : ℕ) : Matrix (Fin m) (Fin m) (ZMod 2) := Matrix.of fun _ _ => 1

@[simp]
theorem allOnes_apply (m : ℕ) (i j : Fin m) : allOnes m i j = 1 := rfl

/-- Reducing a signed orbital matrix modulo two collapses the sign pattern: the diagonal
entry `0` and the off-diagonal entries `1` and `-1` all become `1` after subtracting the
identity matrix, so the reduction of `B - 1` is the all-ones matrix. -/
theorem map_sub_one_eq_allOnes {m : ℕ} (B : Matrix (Fin m) (Fin m) ℤ)
    (hdiag : ∀ i, B i i = 0)
    (hoff : ∀ i j, i ≠ j → B i j = 1 ∨ B i j = -1) :
    B.map (fun x : ℤ => (x : ZMod 2)) - 1 = allOnes m := by
  ext i j
  by_cases h : i = j
  · subst h
    simp [Matrix.one_apply_eq, hdiag i]
  · rcases hoff i j h with h1 | h1 <;>
      simp [Matrix.one_apply_ne h, h1]

/-- Every triangle product of a signed orbital matrix on three distinct indices reduces to one
modulo two, since each factor is an odd integer. -/
theorem triangleProduct_cast_eq_one {m : ℕ} (B : Matrix (Fin m) (Fin m) ℤ)
    (hoff : ∀ i j, i ≠ j → B i j = 1 ∨ B i j = -1)
    {i j k : Fin m} (hij : i ≠ j) (hjk : j ≠ k) (hki : k ≠ i) :
    ((B i j * B j k * B k i : ℤ) : ZMod 2) = 1 := by
  rcases hoff i j hij with h1 | h1 <;> rcases hoff j k hjk with h2 | h2 <;>
    rcases hoff k i hki with h3 | h3 <;> rw [h1, h2, h3] <;> decide

/-- On an index set of even cardinality the all-ones matrix squares to zero, because each entry
of the product is a sum of an even number of ones. -/
theorem allOnes_mul_self_eq_zero {m : ℕ} (hm : Even m) :
    allOnes m * allOnes m = 0 := by
  ext i j
  have hcard : ((m : ZMod 2)) = 0 := by
    obtain ⟨r, hr⟩ := hm
    subst hr
    have h2 : (2 : ZMod 2) = 0 := by decide
    push_cast
    rw [← two_mul, h2, zero_mul]
  simp [Matrix.mul_apply, allOnes, Finset.sum_const, hcard]

/-- The all-ones matrix on a nonempty index set has rank one: all of its columns are the
constant vector `1`, so its column space is the line spanned by that vector. -/
theorem allOnes_rank {m : ℕ} (hm : 0 < m) : (allOnes m).rank = 1 := by
  classical
  haveI : Nonempty (Fin m) := ⟨⟨0, hm⟩⟩
  have hone : (fun _ : Fin m => (1 : ZMod 2)) ≠ 0 := by
    intro h
    have := congrFun h ⟨0, hm⟩
    simp at this
  have hcol : (allOnes m).col = fun _ : Fin m => (fun _ : Fin m => (1 : ZMod 2)) := rfl
  rw [Matrix.rank_eq_finrank_span_cols, hcol, Set.range_const]
  exact finrank_span_singleton hone

/-- The modulo-two reduction of `B - 1` for a signed orbital matrix on an index set of even
cardinality is a nonzero square-zero matrix of rank one. -/
theorem map_sub_one_sq_eq_zero_and_rank {m : ℕ} (hm : Even m) (hpos : 0 < m)
    (B : Matrix (Fin m) (Fin m) ℤ)
    (hdiag : ∀ i, B i i = 0)
    (hoff : ∀ i j, i ≠ j → B i j = 1 ∨ B i j = -1) :
    (B.map (fun x : ℤ => (x : ZMod 2)) - 1) *
        (B.map (fun x : ℤ => (x : ZMod 2)) - 1) = 0 ∧
      (B.map (fun x : ℤ => (x : ZMod 2)) - 1).rank = 1 := by
  rw [map_sub_one_eq_allOnes B hdiag hoff]
  exact ⟨allOnes_mul_self_eq_zero hm, allOnes_rank hpos⟩

/-! ## The reduced quadratic algebra -/

/-- Modulo two the defining polynomial of `ℤ[√5]` becomes a square: `X ^ 2 - 5 = (X - 1) ^ 2`
over the field with two elements. -/
theorem X_sq_sub_five_eq_sq :
    (X ^ 2 - C (5 : ZMod 2) : (ZMod 2)[X]) = (X - 1) ^ 2 := by
  have h5 : C (5 : ZMod 2) = 1 := by
    rw [show (5 : ZMod 2) = 1 from by decide, map_one]
  have h2 : (2 : (ZMod 2)[X]) = 0 := by
    simpa using CharP.cast_eq_zero ((ZMod 2)[X]) 2
  rw [h5]
  linear_combination (X - 1 : (ZMod 2)[X]) * h2

/-- The algebra obtained by adjoining a square root of five to the field with two elements is
the local algebra `𝔽₂[u] / (u - 1) ^ 2`, not a quadratic field extension or a product of
fields. -/
noncomputable def adjoinRootEquiv :
    AdjoinRoot (X ^ 2 - C (5 : ZMod 2)) ≃+* AdjoinRoot ((X - 1) ^ 2 : (ZMod 2)[X]) :=
  X_sq_sub_five_eq_sq ▸ RingEquiv.refl _

/-! ## The conductor on golden coordinates -/

/-- Coordinates of `c + d * √5` in the basis `(1, φ)` of the golden order, where
`φ = (1 + √5) / 2` and hence `√5 = 2 * φ - 1`. -/
def sqrtFiveCoords (c d : ℤ) : ℤ × ℤ := (c - d, 2 * d)

/-- An element of the golden order lies in `ℤ[√5]` exactly when its coordinate along `φ` is
even.  Equivalently `ℤ[√5] = ℤ + 2 * ℤ[φ]`, which is the statement that `ℤ[√5]` has conductor
two. -/
theorem mem_sqrtFive_range_iff (a b : ℤ) :
    (∃ c d : ℤ, sqrtFiveCoords c d = (a, b)) ↔ 2 ∣ b := by
  constructor
  · rintro ⟨c, d, hcd⟩
    have hb : 2 * d = b := congrArg Prod.snd hcd
    exact ⟨d, hb.symm⟩
  · rintro ⟨d, rfl⟩
    exact ⟨a + d, d, by simp [sqrtFiveCoords]⟩

/-- Doubling carries the whole golden order into `ℤ[√5]`. -/
theorem two_mul_mem_sqrtFive_range (a b : ℤ) :
    ∃ c d : ℤ, sqrtFiveCoords c d = (2 * a, 2 * b) :=
  (mem_sqrtFive_range_iff (2 * a) (2 * b)).mpr ⟨b, rfl⟩

/-- The golden element `φ` itself is not in `ℤ[√5]`, so the containment of the previous theorem
is proper and the conductor is exactly two rather than one. -/
theorem golden_not_mem_sqrtFive_range :
    ¬ ∃ c d : ℤ, sqrtFiveCoords c d = (0, 1) := by
  intro h
  obtain ⟨d, hd⟩ := (mem_sqrtFive_range_iff 0 1).mp h
  omega

#print axioms allOnes_apply
#print axioms map_sub_one_eq_allOnes
#print axioms triangleProduct_cast_eq_one
#print axioms allOnes_mul_self_eq_zero
#print axioms allOnes_rank
#print axioms map_sub_one_sq_eq_zero_and_rank
#print axioms X_sq_sub_five_eq_sq
#print axioms adjoinRootEquiv
#print axioms mem_sqrtFive_range_iff
#print axioms two_mul_mem_sqrtFive_range
#print axioms golden_not_mem_sqrtFive_range

end GoldenOrderConductorTwo

end RelativeConicArcs
