import ProjectiveCap.StableFacts
import ProjectiveCap.GridGame

/-!
# Odd projective-plane escape statements

This file records two forms of the residual-grid escape property.
`OddEscapeStatement` permits an external P-position predicate, while
`OddEscapeGameStatement` uses the normal-play game in `ProjectiveCap.GridGame`.
-/

namespace ProjectiveCap
namespace Almost

variable {K : Type*} [Field K] [Fintype K] [DecidableEq K]

/-- The abstract P-position predicate parameter for the parameterized `OddEscapeStatement`
below.  The concrete residual game is
`GridGame.IsP`; its corresponding proposition is `OddEscapeGameStatement`. -/
abbrev GridPPosition (K : Type*) [Field K] [Fintype K] [DecidableEq K] :=
  Finset (GridPoint K) -> Prop

/--
Every legal size-three residual position has a legal size-four child satisfying
the supplied P-position predicate.
-/
def OddEscapeStatement (IsP : GridPPosition K) : Prop :=
  ∀ S : Finset (GridPoint K),
    S.card = 3 ->
    GridCap S ->
    ∃ p : GridPoint K,
      p ∈ Stable.LegalGridExtensions (K := K) S ∧ IsP (insert p S)

/--
The escape property for the formal normal-play residual grid game.
-/
def OddEscapeGameStatement : Prop :=
  GridGame.OddEscapeStatement (K := K)

/-- The normal-play escape statement is equivalent to nonemptiness of the checked escape-extension
set at every legal size-three cap. -/
theorem oddEscapeGameStatement_iff_escapeExtensions_nonempty :
    OddEscapeGameStatement (K := K) ↔
      ∀ S : Finset (GridPoint K),
        S.card = 3 -> GridCap S -> (GridGame.EscapeExtensions (K := K) S).Nonempty :=
  GridGame.oddEscapeStatement_iff_escapeExtensions_nonempty

end Almost
end ProjectiveCap
