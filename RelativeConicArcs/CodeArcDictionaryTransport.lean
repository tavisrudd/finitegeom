import Mathlib.Tactic

/-!
# Transport of an arc classification along the arc-to-code dictionary

A projective `[k, k - 3, 4]` maximum-distance-separable code is determined, up to monomial
equivalence, by the unordered set of projective points spanned by the columns of a parity-check
matrix; that set is a `k`-arc, and two such codes are monomially equivalent exactly when the two
column sets are projectively equivalent.  Under the same dictionary the projective
distance-three syndrome locus of the code is the uncovered locus of the arc, that is, the set of
directions lying on no chord.

This file isolates the purely logical content of that translation.  Arcs and codes are abstract
types, `columns` is the passage from a code to its column arc, `ProjEquiv` and `MonEquiv` are the
two equivalence relations, and `arcLocus` and `codeLocus` are the two loci, valued in a common
type of point sets.  The dictionary is the pair of hypotheses that `columns` intertwines the two
equivalences and the two loci.  Given a classification of arcs whose uncovered locus has a
prescribed property up to projective equivalence, the theorems below produce the corresponding
classification of codes up to monomial equivalence, and conversely.

Applied to the classification of arcs of size four through eight whose uncovered locus is a
nonsingular conic, whose only members are the four-arc frame over the field of five elements and
the Clebsch six-arc over the field of eleven elements, the first theorem is exactly the
statement that a projective maximum-distance-separable code of those parameters whose projective
distance-three syndrome locus is a nonsingular conic is monomially equivalent to the frame code
or to the Clebsch code.

Trust boundary: nothing geometric is proved here.  The dictionary itself, the arc classification,
and the identification of the syndrome locus with the uncovered locus are hypotheses; the content
is that they combine without further geometric input.  Both the dictionary and the arc
classification are established elsewhere.
-/

namespace RelativeConicArcs

namespace CodeArcDictionaryTransport

variable {Code Arc PointSet : Type*}

/-- Transport of a two-member arc classification to codes.

`columns` sends a code to the arc of its parity-check columns.  `hdict` is the dictionary:
monomial equivalence of codes is projective equivalence of column arcs.  `hlocus` says the code's
syndrome locus is the uncovered locus of its column arc.  `hclass` is the arc classification: an
arc whose uncovered locus satisfies `Property` is projectively equivalent to `A₁` or to `A₂`.
`hcol₁` and `hcol₂` name codes realizing those two arcs.  The conclusion is that a code whose
syndrome locus satisfies `Property` is monomially equivalent to one of those two codes. -/
theorem monEquiv_of_arc_classification
    {columns : Code → Arc}
    {ProjEquiv : Arc → Arc → Prop} {MonEquiv : Code → Code → Prop}
    {arcLocus : Arc → PointSet} {codeLocus : Code → PointSet}
    {Property : PointSet → Prop}
    {A₁ A₂ : Arc} {C₁ C₂ : Code}
    (hdict : ∀ C D : Code, MonEquiv C D ↔ ProjEquiv (columns C) (columns D))
    (hlocus : ∀ C : Code, codeLocus C = arcLocus (columns C))
    (hclass : ∀ A : Arc, Property (arcLocus A) → ProjEquiv A A₁ ∨ ProjEquiv A A₂)
    (hcol₁ : columns C₁ = A₁) (hcol₂ : columns C₂ = A₂)
    (C : Code) (hC : Property (codeLocus C)) :
    MonEquiv C C₁ ∨ MonEquiv C C₂ := by
  have harc : Property (arcLocus (columns C)) := by rwa [hlocus C] at hC
  rcases hclass (columns C) harc with h₁ | h₂
  · refine Or.inl ((hdict C C₁).mpr ?_)
    rwa [hcol₁]
  · refine Or.inr ((hdict C C₂).mpr ?_)
    rwa [hcol₂]

/-- The converse direction of the same transport: each of the two named codes does have a syndrome
locus with the prescribed property.

The hypotheses are the locus half of the dictionary together with the corresponding geometric
statement about the two arcs. -/
theorem property_codeLocus_of_arc
    {columns : Code → Arc}
    {arcLocus : Arc → PointSet} {codeLocus : Code → PointSet}
    {Property : PointSet → Prop}
    {A : Arc} {C : Code}
    (hlocus : ∀ C : Code, codeLocus C = arcLocus (columns C))
    (hcol : columns C = A) (hA : Property (arcLocus A)) :
    Property (codeLocus C) := by
  rw [hlocus C, hcol]
  exact hA

#print axioms monEquiv_of_arc_classification
#print axioms property_codeLocus_of_arc

end CodeArcDictionaryTransport

end RelativeConicArcs
