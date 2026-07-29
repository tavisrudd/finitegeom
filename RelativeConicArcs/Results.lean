import RelativeConicArcs.ExampleChecks.Q5
import RelativeConicArcs.ExampleChecks.Q8
import RelativeConicArcs.ExampleChecks.Q9
import RelativeConicArcs.ExampleChecks.Q11
import RelativeConicArcs.ExampleChecks.Q16
import RelativeConicArcs.Q11NonGRS

/-!
# Exact small-field results

This module combines the arithmetic lower bound `L2` with explicit checked
witnesses over fields of orders 8, 9, 11, and 16.  It deliberately stops at
the two-sided bound over `GF(16)`.  The exhaustive certificate proving the
exact value over `GF(16)` lives in the separate q16 certificate package.
-/

namespace RelativeConicArcs
namespace Examples

open Certificate Conic FiniteFields

private instance : Fact (Nat.Prime 11) := ⟨by decide⟩

/-- The arithmetic lower-bound threshold at field order eight is six. -/
theorem L2_eight : L2 8 = 6 := by
  apply Nat.le_antisymm
  · apply Nat.sInf_le
    norm_num [L2Admissible, Nat.choose]
  · have hadm : L2Admissible 8 (L2 8) := by
      rw [L2]
      change sInf {k : ℕ | L2Admissible 8 k} ∈ {k : ℕ | L2Admissible 8 k}
      exact Nat.sInf_mem ⟨6, by norm_num [L2Admissible, Nat.choose]⟩
    by_contra h
    have hlt : L2 8 < 6 := by omega
    interval_cases hval : L2 8 <;>
      norm_num [L2Admissible, Nat.choose, hval] at hadm

/-- The arithmetic lower-bound threshold at field order nine is six. -/
theorem L2_nine : L2 9 = 6 := by
  apply Nat.le_antisymm
  · apply Nat.sInf_le
    norm_num [L2Admissible, Nat.choose]
  · have hadm : L2Admissible 9 (L2 9) := by
      rw [L2]
      change sInf {k : ℕ | L2Admissible 9 k} ∈ {k : ℕ | L2Admissible 9 k}
      exact Nat.sInf_mem ⟨6, by norm_num [L2Admissible, Nat.choose]⟩
    by_contra h
    have hlt : L2 9 < 6 := by omega
    interval_cases hval : L2 9 <;>
      norm_num [L2Admissible, Nat.choose, hval] at hadm

/-- The arithmetic lower-bound threshold at field order eleven is six. -/
theorem L2_eleven : L2 11 = 6 := by
  apply Nat.le_antisymm
  · apply Nat.sInf_le
    norm_num [L2Admissible, Nat.choose]
  · have hadm : L2Admissible 11 (L2 11) := by
      rw [L2]
      change sInf {k : ℕ | L2Admissible 11 k} ∈ {k : ℕ | L2Admissible 11 k}
      exact Nat.sInf_mem ⟨6, by norm_num [L2Admissible, Nat.choose]⟩
    by_contra h
    have hlt : L2 11 < 6 := by omega
    interval_cases hval : L2 11 <;>
      norm_num [L2Admissible, Nat.choose, hval] at hadm

/-- The arithmetic lower-bound threshold at field order sixteen is eight. -/
theorem L2_sixteen : L2 16 = 8 := by
  apply Nat.le_antisymm
  · apply Nat.sInf_le
    norm_num [L2Admissible, Nat.choose]
  · have hadm : L2Admissible 16 (L2 16) := by
      rw [L2]
      change sInf {k : ℕ | L2Admissible 16 k} ∈ {k : ℕ | L2Admissible 16 k}
      exact Nat.sInf_mem ⟨8, by norm_num [L2Admissible, Nat.choose]⟩
    by_contra h
    have hlt : L2 16 < 8 := by omega
    interval_cases hval : L2 16 <;>
      norm_num [L2Admissible, Nat.choose, hval] at hadm

/-- Six points are necessary and sufficient outside the standard conic over `GF(8)`. -/
theorem rhoC_GF8 : rhoC (K := GF8) = 6 := by
  apply Nat.le_antisymm
  · simpa [q8Witness] using rhoC_le_length_of_check q8_check
  · rw [← L2_eight]
    simpa using (NonsingularConic.standard (K := GF8)).finite_lower_bound.2

/-- Six points are necessary and sufficient outside the standard conic over `GF(9)`. -/
theorem rhoC_GF9 : rhoC (K := GF9) = 6 := by
  apply Nat.le_antisymm
  · simpa [q9Witness] using rhoC_le_length_of_check q9_check
  · rw [← L2_nine]
    simpa using (NonsingularConic.standard (K := GF9)).finite_lower_bound.2

/-- Six points are necessary and sufficient outside the standard conic over `ZMod 11`. -/
theorem rhoC_ZMod11 : rhoC (K := ZMod 11) = 6 := by
  apply Nat.le_antisymm
  · simpa [q11Witness] using rhoC_le_length_of_check q11_check
  · rw [← L2_eleven]
    simpa using (NonsingularConic.standard (K := ZMod 11)).finite_lower_bound.2

/-- Over `GF(16)`, the minimum size lies between eight and nine inclusive. -/
theorem rhoC_GF16_bounds : 8 ≤ rhoC (K := GF16) ∧ rhoC (K := GF16) ≤ 9 := by
  constructor
  · rw [← L2_sixteen]
    simpa using (NonsingularConic.standard (K := GF16)).finite_lower_bound.2
  · simpa [q16Witness] using rhoC_le_length_of_check q16_check

end Examples
end RelativeConicArcs
