import Mathlib.Data.Nat.Factorization.PrimePow
import Mathlib.Tactic

/-!
# Order regimes and deep-hole counts for the Clebsch family

Let `K` be a Clebsch hexagon over a field of order `q`, that is, a six-arc whose off-vertex
triple-chord concurrences number exactly ten, and let `u` be the number of points of the ambient
projective plane lying on no chord of `K`.  The chord-defect identity, together with the
ten-concurrence hypothesis, gives

```
u = q ^ 2 - 14 * q + 45.
```

That identity is proved elsewhere from the two chord moments; this file consumes it as a
hypothesis and records the arithmetic consequences that the geometric argument uses.

The first group of results factors the formula.  Writing `u = (q - 5) * (q - 9)` shows that the
uncovered set is empty exactly at orders five and nine, and comparing `u` with the number `q + 1`
of rational points of a nonsingular conic gives the off-conic excess `(q - 4) * (q - 11)`.  So a
Clebsch hexagon whose associated conic is contained in its uncovered set fills that conic exactly
when `q` is four or eleven.  Order nineteen is recorded separately as the smallest order in the
relevant residue class where the containment holds but the excess is positive.

The second group is the counting layer above a fixed uncovered set.  A projective direction
represents `q - 1` distinct nonzero syndromes, hence that many cosets; each maximum-distance coset
has one minimum-weight leader on each three-element coordinate support; and each coset contains as
many received words as the code has codewords.  These three facts are hypotheses here, supplied by
the arc-to-coset dictionary and the arc property; the theorem below records only the resulting
products.

All order arithmetic is stated over `ℤ`.  At orders four and five both factors of `(q - 5)(q - 9)`
are negative, so natural-number subtraction would state a different proposition.
-/

namespace RelativeConicArcs

namespace ClebschFamilyRegimes

section OrderRegimes

variable {q u : ℕ}

/-- The Clebsch uncovered-cardinality formula, factored.

The two roots are the orders at which a Clebsch hexagon is a complete arc. -/
theorem uncovered_eq_mul_of_formula
    (hformula : (u : ℤ) = (q : ℤ) ^ 2 - 14 * (q : ℤ) + 45) :
    (u : ℤ) = ((q : ℤ) - 5) * ((q : ℤ) - 9) := by
  rw [hformula]; ring

/-- A Clebsch hexagon has empty uncovered set exactly at orders five and nine.

At order five the associated-conic construction is unavailable, since the construction requires a
square root of five in a field of characteristic other than five.  At order nine the construction
applies and the hexagon is therefore a complete arc. -/
theorem uncovered_eq_zero_iff
    (hformula : (u : ℤ) = (q : ℤ) ^ 2 - 14 * (q : ℤ) + 45) :
    u = 0 ↔ q = 5 ∨ q = 9 := by
  constructor
  · intro hu
    subst hu
    have hfactor : ((q : ℤ) - 5) * ((q : ℤ) - 9) = 0 := by
      rw [← uncovered_eq_mul_of_formula hformula]; simp
    rcases mul_eq_zero.mp hfactor with h5 | h9
    · exact Or.inl (by omega)
    · exact Or.inr (by omega)
  · rintro (rfl | rfl) <;>
      · norm_num at hformula
        exact_mod_cast hformula

/-- The off-conic excess of a Clebsch hexagon.

The hypothesis is that the uncovered set contains the `q + 1` rational points of the associated
nonsingular conic; Dye's non-secant edge calculation supplies that containment in the residue
class `q ≡ 3 mod 4`.  The excess is the number of uncovered points off that conic. -/
theorem offConicExcess_eq_mul_of_formula
    (hformula : (u : ℤ) = (q : ℤ) ^ 2 - 14 * (q : ℤ) + 45) :
    (u : ℤ) - ((q : ℤ) + 1) = ((q : ℤ) - 4) * ((q : ℤ) - 11) := by
  rw [hformula]; ring

/-- Under the same containment hypothesis, the uncovered set of a Clebsch hexagon is exactly the
associated conic only at orders four and eleven.

Characteristic two is excluded by the existence hypothesis for a Clebsch hexagon, so among field
orders only eleven survives. -/
theorem orders_of_uncovered_eq_conic_card
    (hformula : (u : ℤ) = (q : ℤ) ^ 2 - 14 * (q : ℤ) + 45)
    (hfill : u = q + 1) :
    q = 4 ∨ q = 11 := by
  have hzero : ((q : ℤ) - 4) * ((q : ℤ) - 11) = 0 := by
    rw [← offConicExcess_eq_mul_of_formula hformula, hfill]
    push_cast; ring
  rcases mul_eq_zero.mp hzero with h4 | h11
  · exact Or.inl (by omega)
  · exact Or.inr (by omega)

/-- At order nineteen the uncovered set has one hundred forty points, of which the twenty points
of the associated conic are a proper subset.

This is the smallest field order in the residue class `q ≡ 3 mod 4` above eleven at which the
associated conic is uncovered but does not exhaust the uncovered set. -/
theorem uncovered_card_at_order_nineteen
    (hformula : (u : ℤ) = (q : ℤ) ^ 2 - 14 * (q : ℤ) + 45)
    (hq : q = 19) :
    u = 140 ∧ (u : ℤ) - ((q : ℤ) + 1) = 120 := by
  subst hq
  have hu : (u : ℤ) = 140 := by rw [hformula]; norm_num
  refine ⟨by exact_mod_cast hu, ?_⟩
  rw [offConicExcess_eq_mul_of_formula hformula]
  norm_num

end OrderRegimes

section DeepHoleCounts

/-- The counting layer above a maximum-distance syndrome locus.

The hypotheses record what the arc-to-coset dictionary supplies.  `directions` is the number of
projective directions of maximum syndrome weight; each represents `q - 1` distinct nonzero
syndromes and hence that many cosets.  `leadersPerCoset` is the number of minimum-weight leaders
of one such coset, which for a six-arc is the number of three-element coordinate supports, since
the arc property makes the three corresponding columns independent and maximum distance forces all
three coefficients to be nonzero.  `codeCard` is the number of codewords, so each coset contains
that many received words.

The conclusion is the resulting product count of cosets, leaders, and received-word deep holes. -/
theorem deepHole_counts
    (q directions cosets leadersPerCoset leaders codeCard words : ℕ)
    (hcosets : cosets = directions * (q - 1))
    (hleaders : leaders = cosets * leadersPerCoset)
    (hwords : words = cosets * codeCard) :
    leaders = directions * (q - 1) * leadersPerCoset ∧
      words = directions * (q - 1) * codeCard := by
  subst hcosets; exact ⟨hleaders, hwords⟩

/-- The deep-hole counts of the six-arc code of length six and dimension three over the field of
eleven elements, whose maximum-distance syndrome locus is the twelve-point conic.

The three numerical inputs are the twelve uncovered directions, the twenty three-element
coordinate supports, and the code cardinality `11 ^ 3`. -/
theorem witness_deepHole_counts
    (q directions cosets leadersPerCoset leaders codeCard words : ℕ)
    (hcosets : cosets = directions * (q - 1))
    (hleaders : leaders = cosets * leadersPerCoset)
    (hwords : words = cosets * codeCard)
    (hq : q = 11) (hdirections : directions = 12)
    (hleadersPerCoset : leadersPerCoset = 20) (hcodeCard : codeCard = q ^ 3) :
    cosets = 120 ∧ leaders = 2400 ∧ words = 159720 := by
  subst hq hdirections hleadersPerCoset hcodeCard hcosets hleaders hwords
  norm_num

/-! ### Discharging the numerical inputs

The three numerical inputs of the preceding theorem are not themselves arithmetic: each is
supplied by a structural fact about the code or the plane.  The lemmas here discharge the two that
are purely combinatorial, and record the third in the form in which the conic supplies it. -/

/-- A length-six code has exactly twenty three-element coordinate supports.

For a six-arc the three columns indexed by such a support are linearly independent, so a
maximum-distance coset has exactly one minimum-weight leader on each of them; this is the source
of the leader count per coset. -/
theorem card_threeElementSupports :
    (Finset.univ.powersetCard 3 : Finset (Finset (Fin 6))).card = 20 := by
  rw [Finset.card_powersetCard, Finset.card_univ, Fintype.card_fin]
  rfl

/-- A code of dimension three over the field of `q` elements has `q ^ 3` words, so each coset of
it contains that many received words. -/
theorem card_dimensionThree (q : ℕ) [NeZero q] :
    Fintype.card (Fin 3 → ZMod q) = q ^ 3 := by
  simp

/-- At order eleven a nonsingular conic has twelve rational points.

The uncovered set of the Clebsch hexagon at that order is exactly the conic, so the number of
maximum-distance projective directions is the conic's point count. -/
theorem conicPoints_at_order_eleven {q directions : ℕ} (hq : q = 11)
    (hd : directions = q + 1) : directions = 12 := by
  subst hq; omega

/-- The deep-hole counts of the six-arc code of length six and dimension three over the field of
eleven elements, with the leader count per coset and the code cardinality replaced by the
structural facts that discharge them.

The remaining hypotheses are that the coset count is the number of directions times `q - 1`, that
minimum-weight leaders of a maximum-distance coset correspond to three-element coordinate
supports, that cosets carry as many received words as the code has elements, and that the
directions are the rational points of the conic. -/
theorem witness_deepHole_counts_of_structure
    {q directions cosets leadersPerCoset leaders codeCard words : ℕ}
    (hq : q = 11)
    (hd : directions = q + 1)
    (hcosets : cosets = directions * (q - 1))
    (hleadersPerCoset :
      leadersPerCoset = (Finset.univ.powersetCard 3 : Finset (Finset (Fin 6))).card)
    (hleaders : leaders = cosets * leadersPerCoset)
    (hcodeCard : codeCard = 11 ^ 3)
    (hwords : words = cosets * codeCard) :
    cosets = 120 ∧ leaders = 2400 ∧ words = 159720 := by
  have hdir : directions = 12 := conicPoints_at_order_eleven hq hd
  rw [card_threeElementSupports] at hleadersPerCoset
  have hc : cosets = 120 := by rw [hcosets, hdir, hq]
  have hl : leaders = 2400 := by rw [hleaders, hc, hleadersPerCoset]
  have hw : words = 159720 := by rw [hwords, hc, hcodeCard]; norm_num
  exact ⟨hc, hl, hw⟩

end DeepHoleCounts

#print axioms uncovered_eq_zero_iff
#print axioms offConicExcess_eq_mul_of_formula
#print axioms orders_of_uncovered_eq_conic_card
#print axioms uncovered_card_at_order_nineteen
#print axioms witness_deepHole_counts
#print axioms card_threeElementSupports
#print axioms card_dimensionThree
#print axioms conicPoints_at_order_eleven
#print axioms witness_deepHole_counts_of_structure

end ClebschFamilyRegimes

end RelativeConicArcs
