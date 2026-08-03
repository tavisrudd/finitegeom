import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

/-!
# Opposite triangle signs on complementary triples of a signed orbital matrix

A *signed orbital matrix* on six indices is an integer matrix `B` of size six that is symmetric,
has vanishing diagonal, has every off-diagonal entry equal to `1` or `-1`, and satisfies
`B * B = 5 • 1`.  For three distinct indices `i, j, k` its *triangle product* is
`B i j * B j k * B k i`; this product is unchanged by switching, that is, by conjugating `B` with a
diagonal sign matrix, and is the coefficient attached to the triple in the associated cubic form.

The theorem proved here is that the triangle products of a triple and of its complementary triple
are opposite.  The proof is structural rather than an enumeration of sign patterns.  Split the six
indices into a triple and its complement, so that

```
B = [[X, Y], [Yᵀ, Z]]
```

with `X` and `Z` symmetric with vanishing diagonal and `Y` of size three.  The off-diagonal block
of `B * B = 5 • 1` is `X * Y + Y * Z = 0`, and the diagonal block is `X * X + Y * Yᵀ = 5 • 1`.
For a three-index symmetric matrix with vanishing diagonal and unit entries the second identity
forces `det (Y * Yᵀ) = 16`, so `Y` is invertible over the rationals; taking determinants in the
first identity then gives `det X = - det Z`.  Finally the determinant of a symmetric
three-index matrix with vanishing diagonal is twice its triangle product, so the two triangle
products are opposite.

Two consequences are recorded.  The triangle product of any triple is `1` or `-1`, so no triple is
neutral; and complementation exchanges the two sign classes of triples.  Together these say that
the twenty triples of a six-element index set fall into two classes exchanged by complementation.

Trust boundary: the argument is symbolic.  The only finite case analysis is over the eight sign
choices of the three off-diagonal entries of a three-index block, performed while evaluating one
explicit three-by-three determinant; no certificate, generated data, or native evaluation is used.
-/

namespace RelativeConicArcs

namespace ComplementaryTriangleSign

open Matrix

/-- A signed orbital matrix on six indices: symmetric, vanishing diagonal, off-diagonal entries
`1` or `-1`, and squaring to five times the identity.

This is the integral form of the operator obtained from a five-valent self-paired orbital of a
degree-six action after choosing one representative above each of the six axes.  Changing a
representative conjugates `B` by a diagonal sign matrix and preserves all four conditions. -/
structure IsSignedOrbital (B : Matrix (Fin 6) (Fin 6) ℤ) : Prop where
  /-- The diagonal vanishes. -/
  diag : ∀ i, B i i = 0
  /-- The matrix is symmetric. -/
  symm : ∀ i j, B i j = B j i
  /-- Every off-diagonal entry is a unit sign. -/
  sign : ∀ i j, i ≠ j → B i j = 1 ∨ B i j = -1
  /-- The defining quadratic identity. -/
  sq : B * B = (5 : ℤ) • (1 : Matrix (Fin 6) (Fin 6) ℤ)

/-- The determinant of a symmetric three-index matrix with vanishing diagonal is twice its
triangle product. -/
theorem det_fin_three_of_symm_diag_zero (M : Matrix (Fin 3) (Fin 3) ℤ)
    (hdiag : ∀ i, M i i = 0) (hsymm : ∀ i j, M i j = M j i) :
    M.det = 2 * (M 0 1 * M 1 2 * M 2 0) := by
  rw [Matrix.det_fin_three, hdiag 0, hdiag 1, hdiag 2, hsymm 1 0, hsymm 2 0, hsymm 2 1]
  ring

/-- For a symmetric three-index matrix `M` with vanishing diagonal and unit off-diagonal entries,
the matrix `5 • 1 - M * M` has determinant sixteen.

In the block decomposition of a signed orbital matrix this matrix is `Y * Yᵀ`, so the identity
below is what makes the off-diagonal block invertible. -/
theorem det_five_sub_sq (M : Matrix (Fin 3) (Fin 3) ℤ)
    (hdiag : ∀ i, M i i = 0) (hsymm : ∀ i j, M i j = M j i)
    (hsign : ∀ i j, i ≠ j → M i j = 1 ∨ M i j = -1) :
    ((5 : ℤ) • (1 : Matrix (Fin 3) (Fin 3) ℤ) - M * M).det = 16 := by
  have h01 := hsign 0 1 (by decide)
  have h02 := hsign 0 2 (by decide)
  have h12 := hsign 1 2 (by decide)
  rcases h01 with h01 | h01 <;> rcases h02 with h02 | h02 <;> rcases h12 with h12 | h12 <;>
    · rw [Matrix.det_fin_three]
      simp only [Matrix.sub_apply, Matrix.smul_apply, Matrix.one_apply, Matrix.mul_apply,
        Fin.sum_univ_three, smul_eq_mul, hdiag, hsymm 1 0, hsymm 2 0, hsymm 2 1, h01, h02, h12,
        Fin.isValue, Fin.reduceEq, reduceIte]
      norm_num

section Blocks

variable {B : Matrix (Fin 6) (Fin 6) ℤ}

/-- Splitting the index set through a bijection `Fin 3 ⊕ Fin 3 ≃ Fin 6` splits every entry of
`B * B` into the two partial sums over the two halves. -/
theorem mul_apply_split (B : Matrix (Fin 6) (Fin 6) ℤ) (σ : Fin 3 ⊕ Fin 3 ≃ Fin 6) (a b : Fin 6) :
    (B * B) a b
      = (∑ u : Fin 3, B a (σ (Sum.inl u)) * B (σ (Sum.inl u)) b)
        + ∑ v : Fin 3, B a (σ (Sum.inr v)) * B (σ (Sum.inr v)) b := by
  rw [Matrix.mul_apply, ← Equiv.sum_comp σ fun k => B a k * B k b, Fintype.sum_sum_type]

/-- Triangle products of complementary triples of a signed orbital matrix are opposite.

`σ` names an ordering of the six indices as a triple followed by its complementary triple.  The
conclusion equates the triangle product of the first triple with the negative of the triangle
product of the second. -/
theorem triangleProduct_complement (h : IsSignedOrbital B) (σ : Fin 3 ⊕ Fin 3 ≃ Fin 6) :
    B (σ (Sum.inl 0)) (σ (Sum.inl 1)) * B (σ (Sum.inl 1)) (σ (Sum.inl 2)) *
        B (σ (Sum.inl 2)) (σ (Sum.inl 0))
      = -(B (σ (Sum.inr 0)) (σ (Sum.inr 1)) * B (σ (Sum.inr 1)) (σ (Sum.inr 2)) *
          B (σ (Sum.inr 2)) (σ (Sum.inr 0))) := by
  classical
  set e : Fin 3 → Fin 6 := fun i => σ (Sum.inl i) with he
  set f : Fin 3 → Fin 6 := fun i => σ (Sum.inr i) with hf
  have hemem : ∀ i j : Fin 3, i ≠ j → e i ≠ e j := by
    intro i j hij hne
    exact hij (Sum.inl_injective (σ.injective hne))
  have hef : ∀ i j : Fin 3, e i ≠ f j := by
    intro i j hne
    exact absurd (σ.injective hne) (by simp)
  set X : Matrix (Fin 3) (Fin 3) ℤ := Matrix.of fun i j => B (e i) (e j) with hX
  set Y : Matrix (Fin 3) (Fin 3) ℤ := Matrix.of fun i j => B (e i) (f j) with hY
  set Z : Matrix (Fin 3) (Fin 3) ℤ := Matrix.of fun i j => B (f i) (f j) with hZ
  have hXdiag : ∀ i, X i i = 0 := fun i => h.diag (e i)
  have hXsymm : ∀ i j, X i j = X j i := fun i j => h.symm (e i) (e j)
  have hXsign : ∀ i j, i ≠ j → X i j = 1 ∨ X i j = -1 := fun i j hij =>
    h.sign (e i) (e j) (hemem i j hij)
  have hZdiag : ∀ i, Z i i = 0 := fun i => h.diag (f i)
  have hZsymm : ∀ i j, Z i j = Z j i := fun i j => h.symm (f i) (f j)
  -- The off-diagonal block of the defining identity.
  have hoff : X * Y = -(Y * Z) := by
    ext i j
    have hzero : (B * B) (e i) (f j) = 0 := by
      rw [h.sq]
      simp [hef i j]
    rw [mul_apply_split B σ (e i) (f j)] at hzero
    have h1 : (X * Y) i j = ∑ u : Fin 3, B (e i) (e u) * B (e u) (f j) := by
      simp [Matrix.mul_apply, hX, hY]
    have h2 : (Y * Z) i j = ∑ v : Fin 3, B (e i) (f v) * B (f v) (f j) := by
      simp [Matrix.mul_apply, hY, hZ]
    have := hzero
    rw [← h1, ← h2] at this
    simp only [Matrix.neg_apply]
    linarith [this]
  -- The diagonal block of the defining identity.
  have hdiagBlock : Y * Yᵀ = (5 : ℤ) • (1 : Matrix (Fin 3) (Fin 3) ℤ) - X * X := by
    ext i j
    have hval : (B * B) (e i) (e j) = ((5 : ℤ) • (1 : Matrix (Fin 3) (Fin 3) ℤ)) i j := by
      rw [h.sq]
      by_cases hij : i = j
      · subst hij; simp
      · simp [hij, hemem i j hij]
    rw [mul_apply_split B σ (e i) (e j)] at hval
    have h1 : (X * X) i j = ∑ u : Fin 3, B (e i) (e u) * B (e u) (e j) := by
      simp [Matrix.mul_apply, hX]
    have h2 : (Y * Yᵀ) i j = ∑ v : Fin 3, B (e i) (f v) * B (f v) (e j) := by
      simp only [Matrix.mul_apply, Matrix.transpose_apply, hY, Matrix.of_apply]
      exact Finset.sum_congr rfl fun v _ => by rw [h.symm (f v) (e j)]
    rw [← h1, ← h2] at hval
    simp only [Matrix.sub_apply]
    linarith [hval]
  -- The off-diagonal block is invertible over the rationals.
  have hYdet : Y.det ≠ 0 := by
    have hsq : Y.det * Y.det = 16 := by
      have := congrArg Matrix.det hdiagBlock
      rw [Matrix.det_mul, Matrix.det_transpose] at this
      rw [this]
      exact det_five_sub_sq X hXdiag hXsymm hXsign
    intro h0
    rw [h0] at hsq
    norm_num at hsq
  -- Determinants of the two diagonal blocks are opposite.
  have hdet : X.det = -Z.det := by
    have := congrArg Matrix.det hoff
    rw [Matrix.det_mul, Matrix.det_neg, Matrix.det_mul] at this
    have hcard : ((-1 : ℤ) ^ Fintype.card (Fin 3)) = -1 := by
      simp
    rw [hcard] at this
    have hfac : Y.det * (X.det + Z.det) = 0 := by ring_nf; ring_nf at this; linarith [this]
    rcases mul_eq_zero.mp hfac with h0 | h0
    · exact absurd h0 hYdet
    · linarith
  rw [det_fin_three_of_symm_diag_zero X hXdiag hXsymm,
    det_fin_three_of_symm_diag_zero Z hZdiag hZsymm] at hdet
  have hXentry : X 0 1 * X 1 2 * X 2 0 = -(Z 0 1 * Z 1 2 * Z 2 0) := by linarith
  simpa [hX, hZ] using hXentry

end Blocks

/-- The triangle product of three distinct indices of a signed orbital matrix is a unit sign, so
no triple is neutral. -/
theorem triangleProduct_eq_one_or_neg_one {B : Matrix (Fin 6) (Fin 6) ℤ} (h : IsSignedOrbital B)
    {i j k : Fin 6} (hij : i ≠ j) (hjk : j ≠ k) (hki : k ≠ i) :
    B i j * B j k * B k i = 1 ∨ B i j * B j k * B k i = -1 := by
  rcases h.sign i j hij with h1 | h1 <;> rcases h.sign j k hjk with h2 | h2 <;>
    rcases h.sign k i hki with h3 | h3 <;> rw [h1, h2, h3] <;> norm_num

#print axioms det_fin_three_of_symm_diag_zero
#print axioms det_five_sub_sq
#print axioms mul_apply_split
#print axioms triangleProduct_complement
#print axioms triangleProduct_eq_one_or_neg_one

end ComplementaryTriangleSign

end RelativeConicArcs
