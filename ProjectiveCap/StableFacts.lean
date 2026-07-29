import ProjectiveCap.GridGame
import Mathlib.Data.Fintype.Basic
import Mathlib.Data.Fintype.Card
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Finset.Card

/-!
# Residual-grid statement interfaces

This module gives compatibility interfaces for residual-grid extension counts
and projective-frame reductions.  The concrete game definitions live in
`ProjectiveCap.GridGame`.
-/

namespace ProjectiveCap
namespace Stable

variable {K : Type*} [Field K] [Fintype K] [DecidableEq K]

/-- Legal one-step extensions of a residual grid cap. -/
noncomputable def LegalGridExtensions (S : Finset (GridPoint K)) : Finset (GridPoint K) := by
  classical
  exact Finset.univ.filter fun p => p ∉ S ∧ GridCap (insert p S)

theorem legalGridExtensions_eq_gridGame (S : Finset (GridPoint K)) :
    LegalGridExtensions (K := K) S = GridGame.LegalExtensions (K := K) S := by
  classical
  ext p
  simp [LegalGridExtensions, GridGame.LegalExtensions,
    FiniteBuildGame.LegalExtensions, FiniteBuildGame.Move]

/-- Membership in the stable extension interface is exactly freshness together with preservation
of the residual-grid cap predicate. -/
theorem mem_legalGridExtensions {S : Finset (GridPoint K)} {p : GridPoint K} :
    p ∈ LegalGridExtensions (K := K) S ↔ p ∉ S ∧ GridCap (K := K) (insert p S) := by
  classical
  simp [LegalGridExtensions]

/--
The proposition that every size-three residual grid cap has exactly
`q^2 - 9q + 21` legal children.
-/
def SizeThreeExtensionCountStatement (K : Type*) [Field K] [Fintype K] [DecidableEq K] :
    Prop :=
  ∀ S : Finset (GridPoint K),
    S.card = 3 ->
    GridCap S ->
    ((LegalGridExtensions (K := K) S).card : Int) =
      (Fintype.card K : Int) ^ 2 - 9 * (Fintype.card K : Int) + 21

/--
Abstract interface for a frame-reduction statement.  For the concrete
projective plane,
`ProjectiveCap.Projective.initialPStatement_iff_isP_frame_of_finrank`
in `ProjectiveCap.PlaneTransitivity` formalizes the position type and frame
extraction directly.
-/
structure FrameReductionInterface where
  Position : Type*
  IsP : Position -> Prop
  frame : Position -> Position

/-- The abstract frame reduction `P` if and only if its chosen frame is `P`. -/
def FrameReductionStatement (I : FrameReductionInterface) : Prop :=
  ∀ P : I.Position, I.IsP P ↔ I.IsP (I.frame P)

end Stable
end ProjectiveCap
