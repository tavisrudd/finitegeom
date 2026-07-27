import Mathlib.Algebra.Field.Basic
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Finset.Basic

/-!
# Grid caps for the residual `PG(2,q)` game

The residual board after the opening projective pair is an affine grid over
the coordinate field. Its legal positions are partial permutations—at most
one selected cell in each row and column—with no three affine-collinear
cells. This module defines those conditions and proves their elementary
structural properties.
-/

namespace ProjectiveCap

variable {K : Type*} [Field K]

/-- A grid cell in the residual affine plane. -/
abbrev GridPoint (K : Type*) := K × K

/-- Affine collinearity in coordinates, written without division. -/
def Collinear (p q r : GridPoint K) : Prop :=
  (q.1 - p.1) * (r.2 - p.2) = (q.2 - p.2) * (r.1 - p.1)

/-- A finite set of grid cells has at most one point in each row. -/
def RowSparse (S : Finset (GridPoint K)) : Prop :=
  ∀ ⦃p q : GridPoint K⦄, p ∈ S → q ∈ S → p.1 = q.1 → p = q

/-- A finite set of grid cells has at most one point in each column. -/
def ColSparse (S : Finset (GridPoint K)) : Prop :=
  ∀ ⦃p q : GridPoint K⦄, p ∈ S → q ∈ S → p.2 = q.2 → p = q

/-- The burned-direction constraint: at most one point per row and column. -/
def PartialPermutation (S : Finset (GridPoint K)) : Prop :=
  RowSparse S ∧ ColSparse S

/-- No three distinct selected grid cells are affine-collinear. -/
def AffineCap (S : Finset (GridPoint K)) : Prop :=
  ∀ ⦃a b c : GridPoint K⦄,
    a ∈ S → b ∈ S → c ∈ S →
      a ≠ b → a ≠ c → b ≠ c → ¬ Collinear a b c

/-- Legal residual positions after the projective opening pair. -/
def GridCap (S : Finset (GridPoint K)) : Prop :=
  PartialPermutation S ∧ AffineCap S

instance instDecidableCollinear {K : Type*} [Field K] [DecidableEq K] (p q r : GridPoint K) :
    Decidable (Collinear (K := K) p q r) := by
  unfold Collinear
  infer_instance

instance instDecidableRowSparse {K : Type*} [Field K] [Fintype K] [DecidableEq K]
    (S : Finset (GridPoint K)) :
    Decidable (RowSparse (K := K) S) :=
  decidable_of_iff
    (∀ p ∈ (Finset.univ : Finset (GridPoint K)),
      ∀ q ∈ (Finset.univ : Finset (GridPoint K)), p ∈ S -> q ∈ S -> p.1 = q.1 -> p = q)
    (by
      constructor
      · intro h p q hp hq hrow
        exact h p (Finset.mem_univ p) q (Finset.mem_univ q) hp hq hrow
      · intro h p _hpU q _hqU hp hq hrow
        exact h hp hq hrow)

instance instDecidableColSparse {K : Type*} [Field K] [Fintype K] [DecidableEq K]
    (S : Finset (GridPoint K)) :
    Decidable (ColSparse (K := K) S) :=
  decidable_of_iff
    (∀ p ∈ (Finset.univ : Finset (GridPoint K)),
      ∀ q ∈ (Finset.univ : Finset (GridPoint K)), p ∈ S -> q ∈ S -> p.2 = q.2 -> p = q)
    (by
      constructor
      · intro h p q hp hq hcol
        exact h p (Finset.mem_univ p) q (Finset.mem_univ q) hp hq hcol
      · intro h p _hpU q _hqU hp hq hcol
        exact h hp hq hcol)

set_option checkBinderAnnotations false in
instance instDecidablePartialPermutation {K : Type*} [Field K] [Fintype K] [DecidableEq K]
    (S : Finset (GridPoint K)) :
    Decidable (PartialPermutation (K := K) S) := by
  unfold PartialPermutation
  infer_instance

instance instDecidableAffineCap {K : Type*} [Field K] [Fintype K] [DecidableEq K]
    (S : Finset (GridPoint K)) :
    Decidable (AffineCap (K := K) S) :=
  decidable_of_iff
    (∀ a ∈ (Finset.univ : Finset (GridPoint K)),
      ∀ b ∈ (Finset.univ : Finset (GridPoint K)),
      ∀ c ∈ (Finset.univ : Finset (GridPoint K)),
      a ∈ S -> b ∈ S -> c ∈ S ->
        a ≠ b -> a ≠ c -> b ≠ c -> ¬ Collinear (K := K) a b c)
    (by
      constructor
      · intro h a b c ha hb hc hab hac hbc
        exact h a (Finset.mem_univ a) b (Finset.mem_univ b) c (Finset.mem_univ c)
          ha hb hc hab hac hbc
      · intro h a _haU b _hbU c _hcU ha hb hc hab hac hbc
        exact h ha hb hc hab hac hbc)

set_option checkBinderAnnotations false in
instance instDecidableGridCap {K : Type*} [Field K] [Fintype K] [DecidableEq K]
    (S : Finset (GridPoint K)) :
    Decidable (GridCap (K := K) S) := by
  unfold GridCap
  infer_instance

omit [Field K] in
private theorem rowSparse_mono {S T : Finset (GridPoint K)}
    (hST : S ⊆ T) (hT : RowSparse T) : RowSparse S := by
  intro p q hp hq heq
  exact hT (hST hp) (hST hq) heq

omit [Field K] in
private theorem colSparse_mono {S T : Finset (GridPoint K)}
    (hST : S ⊆ T) (hT : ColSparse T) : ColSparse S := by
  intro p q hp hq heq
  exact hT (hST hp) (hST hq) heq

omit [Field K] in
private theorem partialPermutation_mono {S T : Finset (GridPoint K)}
    (hST : S ⊆ T) (hT : PartialPermutation T) : PartialPermutation S :=
  ⟨rowSparse_mono hST hT.1, colSparse_mono hST hT.2⟩

private theorem affineCap_mono {S T : Finset (GridPoint K)}
    (hST : S ⊆ T) (hT : AffineCap T) : AffineCap S := by
  intro a b c ha hb hc hab hac hbc
  exact hT (hST ha) (hST hb) (hST hc) hab hac hbc

/-- Every subset of a residual grid cap is a residual grid cap. -/
theorem gridCap_mono {S T : Finset (GridPoint K)}
    (hST : S ⊆ T) (hT : GridCap T) : GridCap S :=
  ⟨partialPermutation_mono hST hT.1, affineCap_mono hST hT.2⟩

end ProjectiveCap
