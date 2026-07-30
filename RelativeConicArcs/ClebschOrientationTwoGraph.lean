import Mathlib.Data.Matrix.Mul
import Mathlib.LinearAlgebra.Matrix.Notation
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-!
# The Clebsch orientation two-graph

This module formalizes the six-axis signed matrix attached to the Clebsch
orientation.  Its triangle products are invariant under switching, its square
is five times the identity, and those products define a translation-invariant
cubic on the five-dimensional augmentation quotient.

The matrix and polynomial identities are proved by kernel-checked reduction and
ring normalization.  No generated certificate, native evaluation, external
computer algebra, or additional axiom is used.

For the standard Seidel-matrix and switching-class description of two-graphs,
see David M. Duncan, Thomas R. Hoffman, and James P. Solazzo, *Numerical
measures for two-graphs*, Rocky Mountain Journal of Mathematics 41 (2011),
133–154, §2, doi:10.1216/RMJ-2011-41-1-133, arXiv:0810.3189.
-/

namespace RelativeConicArcs.ClebschOrientationTwoGraph

open Matrix

/-- The six axes carrying the Clebsch orientation. -/
abbrev Axis := Fin 6

section Switching

variable {ι R : Type*} [CommRing R]

/-- Diagonal switching of a matrix by a sign function. -/
def switch (d : ι → R) (B : Matrix ι ι R) : Matrix ι ι R :=
  fun i j => d i * B i j * d j

/-- The triangle product of three off-diagonal matrix entries. -/
def triangleProduct (B : Matrix ι ι R) (i j k : ι) : R :=
  B i j * B j k * B k i

/-- Triangle products are unchanged by switching with square-one signs. -/
theorem triangleProduct_switch
    (d : ι → R) (B : Matrix ι ι R)
    (hd : ∀ i, d i * d i = 1) (i j k : ι) :
    triangleProduct (switch d B) i j k = triangleProduct B i j k := by
  simp only [triangleProduct, switch]
  calc
    _ = (d i * d i) * (d j * d j) * (d k * d k) *
        (B i j * B j k * B k i) := by ring
    _ = B i j * B j k * B k i := by simp [hd]

end Switching

/-- A fixed gauge for the balanced six-axis Clebsch Seidel matrix. -/
def goldenMatrix : Matrix Axis Axis ℤ :=
  !![0, 1, 1, 1, 1, 1;
     1, 0, 1, 1, -1, -1;
     1, 1, 0, -1, 1, -1;
     1, 1, -1, 0, -1, 1;
     1, -1, 1, -1, 0, 1;
     1, -1, -1, 1, 1, 0]

/-- The Clebsch signed matrix is a symmetric conference matrix:
its square is five times the identity. -/
theorem goldenMatrix_sq :
    goldenMatrix * goldenMatrix = 5 • (1 : Matrix Axis Axis ℤ) := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [goldenMatrix, Matrix.mul_apply, Fin.sum_univ_succ]

/-- The off-diagonal pair-balance equations of the Clebsch signed matrix. -/
theorem goldenMatrix_pairBalance {i j : Axis} (hij : i ≠ j) :
    ∑ k, goldenMatrix i k * goldenMatrix k j = 0 := by
  have h := congr_fun (congr_fun goldenMatrix_sq i) j
  simpa [Matrix.mul_apply, hij] using h

/-- The row from an axis to the other five axes. -/
def deletedRow (a : Axis) : Fin 5 → ℤ :=
  fun i => goldenMatrix a (a.succAbove i)

/-- The principal five-by-five block obtained by deleting one axis. -/
def principalBlock (a : Axis) : Matrix (Fin 5) (Fin 5) ℤ :=
  fun i j => goldenMatrix (a.succAbove i) (a.succAbove j)

/-- The deleted row lies in the kernel of the principal block. -/
theorem principalBlock_mulVec_deletedRow (a : Axis) :
    principalBlock a *ᵥ deletedRow a = 0 := by
  fin_cases a <;> decide

/-- The square of a principal block is five times the identity minus the
rank-one projector defined by the deleted row.  This identity gives the
conceptual rank-four Hessian proof. -/
theorem principalBlock_sq (a : Axis) :
    principalBlock a * principalBlock a =
      5 • (1 : Matrix (Fin 5) (Fin 5) ℤ) -
        Matrix.vecMulVec (deletedRow a) (deletedRow a) := by
  fin_cases a <;> decide

/-- The support-orientation cubic in the displayed gauge. -/
def supportCubic {R : Type*} [CommRing R] (x : Axis → R) : R :=
    x 0 * x 1 * x 2 + x 0 * x 1 * x 3 - x 0 * x 1 * x 4 -
    x 0 * x 1 * x 5 - x 0 * x 2 * x 3 + x 0 * x 2 * x 4 -
    x 0 * x 2 * x 5 - x 0 * x 3 * x 4 + x 0 * x 3 * x 5 +
    x 0 * x 4 * x 5 - x 1 * x 2 * x 3 - x 1 * x 2 * x 4 +
    x 1 * x 2 * x 5 + x 1 * x 3 * x 4 - x 1 * x 3 * x 5 +
    x 1 * x 4 * x 5 + x 2 * x 3 * x 4 + x 2 * x 3 * x 5 -
    x 2 * x 4 * x 5 - x 3 * x 4 * x 5

/-- The support cubic is invariant under translation by the all-one vector,
so it descends to the augmentation quotient. -/
theorem supportCubic_add_const {R : Type*} [CommRing R]
    (x : Axis → R) (t : R) :
    supportCubic (fun i => x i + t) = supportCubic x := by
  simp only [supportCubic]
  ring

/-- The coefficients of the support cubic are exactly the triangle
products of the Clebsch signed matrix. -/
theorem supportCubic_eq_triangle_sum (x : Axis → ℤ) :
    supportCubic x =
      ∑ i, ∑ j, ∑ k,
        if i < j ∧ j < k then
          triangleProduct goldenMatrix i j k * x i * x j * x k
        else 0 := by
  simp [supportCubic, triangleProduct, goldenMatrix, Fin.sum_univ_succ]
  ring

/-- The six coordinate representatives of the singular projective frame. -/
def node (a : Axis) : Axis → ℤ :=
  fun i => 1 - 6 * if i = a then 1 else 0

/-- The gradient of the support cubic, written in coordinates. -/
def supportGradient {R : Type*} [CommRing R] (x : Axis → R) : Axis → R
  | 0 =>
      x 1 * x 2 + x 1 * x 3 - x 1 * x 4 - x 1 * x 5 -
      x 2 * x 3 + x 2 * x 4 - x 2 * x 5 - x 3 * x 4 +
      x 3 * x 5 + x 4 * x 5
  | 1 =>
      x 0 * x 2 + x 0 * x 3 - x 0 * x 4 - x 0 * x 5 -
      x 2 * x 3 - x 2 * x 4 + x 2 * x 5 + x 3 * x 4 -
      x 3 * x 5 + x 4 * x 5
  | 2 =>
      x 0 * x 1 - x 0 * x 3 + x 0 * x 4 - x 0 * x 5 -
      x 1 * x 3 - x 1 * x 4 + x 1 * x 5 + x 3 * x 4 +
      x 3 * x 5 - x 4 * x 5
  | 3 =>
      x 0 * x 1 - x 0 * x 2 - x 0 * x 4 + x 0 * x 5 -
      x 1 * x 2 + x 1 * x 4 - x 1 * x 5 + x 2 * x 4 +
      x 2 * x 5 - x 4 * x 5
  | 4 =>
      -x 0 * x 1 + x 0 * x 2 - x 0 * x 3 + x 0 * x 5 -
      x 1 * x 2 + x 1 * x 3 + x 1 * x 5 + x 2 * x 3 -
      x 2 * x 5 - x 3 * x 5
  | 5 =>
      -x 0 * x 1 - x 0 * x 2 + x 0 * x 3 + x 0 * x 4 +
      x 1 * x 2 - x 1 * x 3 + x 1 * x 4 + x 2 * x 3 -
      x 2 * x 4 - x 3 * x 4

/-- Every coordinate-frame representative is a singular point of the
support cubic. -/
theorem supportGradient_node (a i : Axis) :
    supportGradient (node a) i = 0 := by
  fin_cases a <;> fin_cases i <;>
    simp [supportGradient, node]

end RelativeConicArcs.ClebschOrientationTwoGraph
