# Triple concurrence of a six-arc and the golden hexagon: formal boundary

This boundary records the six-arc concurrence results accompanying Tavis Rudd,
*Reconstructing the Clebsch code and its golden orientation from its deep-hole
syndrome locus* (DOI 10.5281/zenodo.21652792).

It is separate from the golden orientation boundary of the Clebsch support
cubic recorded alongside it.  The two share no module and no terminal, and
neither uses the other: this boundary is plane incidence geometry of a six-point
arc and the fifteen chords it spans, whereas the orientation boundary concerns
the antipodal cover, signed golden orbital, determinant pencil, and singular
locus of a cubic threefold.  The two are exported separately so that each can be
pinned, audited, and superseded on its own.

The exact project-local closure is rooted at
`RelativeConicArcs.SixArcConcurrenceSpine`
and consists of:

- `CapGame.BuildGame`
- `ProjectiveCap.Grid`
- `ProjectiveCap.PlaneAffineChart`
- `ProjectiveCap.PlaneTransitivity`
- `ProjectiveCap.Projective`
- `ProjectiveCap.Sym2ConicBridge`
- `RelativeConicArcs.Arc`
- `RelativeConicArcs.Certificate`
- `RelativeConicArcs.Conic`
- `RelativeConicArcs.Defect`
- `RelativeConicArcs.Examples`
- `RelativeConicArcs.FiniteFields`
- `RelativeConicArcs.FrameCoordinates`
- `RelativeConicArcs.GoldenHexagonNormalForm`
- `RelativeConicArcs.Moments`
- `RelativeConicArcs.Plane`
- `RelativeConicArcs.ProjectiveBridge`
- `RelativeConicArcs.Q11GoldenHexagonWitness`
- `RelativeConicArcs.QuadrangleDiagonal`
- `RelativeConicArcs.SixArcChordMatchings`
- `RelativeConicArcs.SixArcConcurrence`
- `RelativeConicArcs.SixArcConcurrenceBound`
- `RelativeConicArcs.SixArcConcurrenceSpine`
- `RelativeConicArcs.SixArcGoldenNormalForm`
- `RelativeConicArcs.SixArcHexagonalOrder`
- `RelativeConicArcs.SixArcOneFactorization`

## Formal correspondence

Call a point of the plane off a six-arc `A` a triple-concurrence point of `A`
when it lies on three secants of `A`.  The exported closure proves that over any
field in which two is invertible a six-arc has at most ten of them, by way of
the bound of two on a single secant, whose proof identifies such a point with a
diagonal point of the complete quadrangle formed by the four arc points off that
secant.

It then proves that sending a triple-concurrence point to the set of chords
through it is a bijection onto the chord matchings whose three chords are
concurrent; that an arc with exactly ten triple-concurrence points has five
non-concurrent chord matchings, each chord lying in exactly one of them, so they
partition the fifteen chords; that two chord matchings without a common chord
list the six points as a hexagon whose two matchings are the alternating chord
triples; and that a hexagon whose four named chord triples are concurrent takes
the coordinates `(1:0:0)`, `(φ:1:1)`, `(0:1:0)`, `(1:φ:1)`, `(0:0:1)`,
`(1:1:2−φ)` in a suitable frame, with `φ² = φ + 1`.  Consequently a plane
carrying a six-arc that attains the bound has a golden root in its ground field.
Over the field of eleven elements the two roots are `4` and `8`, and an explicit
projectivity for each carries its golden hexagon onto the displayed six-point
witness.

The ten-point bound and the classification of the six-arcs attaining it appear
as the ten-point count of Section 2.2, page 275 and Theorem 1(ii), page 275 of
R. H. Dye, *Hexagons, conics, `A₅` and `PSL₂(K)`*, Journal of the London
Mathematical Society (2) 44 (1991), 270--286, doi:10.1112/jlms/s2-44.2.270.
That paper is cited as the antecedent for both.  The module
`RelativeConicArcs.Q11DyeAxioms` records the same two statements, specialized to
order eleven, as explicit axioms; the terminals exported here prove them, at
their own quantifier range, from the definitions in this library.

This boundary does not prove the deep-hole syndrome classification, the
code--arc dictionary, the decoder stratification, or the small-arc exclusions,
and it constructs no orientation data for the support cubic.

## Trust boundary

Every terminal is a kernel proof.  All but one quantify over an arbitrary field
in which two is invertible, or over an arbitrary finite point set with the
incidence hypotheses named in the statement; the order-eleven identification
with the displayed witness is the sole terminal that fixes a field.  The closure
contains no generated certificate, native evaluation, imported external data,
user axiom, unsafe declaration, or admitted proof.

The observed axiom set of every terminal below is contained in `Classical.choice`, `Quot.sound`, `propext`.
Source and candidate bytes are recorded in
`trust/source-manifests/clebsch_six_arc_concurrence.json` and
`trust/manifests/clebsch_six_arc_concurrence.json`.

## Terminals

- `RelativeConicArcs.GoldenHexagonNormalForm.golden_normal_form_of_concurrent_matchings`
- `RelativeConicArcs.Q11GoldenHexagonWitness.exists_mapEquiv_toWitness`
- `RelativeConicArcs.SixArcChordMatchings.card_concurrentMatchings_eq_card_triplePoints`
- `RelativeConicArcs.SixArcConcurrence.card_triplePoints_le_ten`
- `RelativeConicArcs.SixArcConcurrence.card_triplePoints_on_secant_le_two`
- `RelativeConicArcs.SixArcGoldenNormalForm.exists_golden_frame`
- `RelativeConicArcs.SixArcGoldenNormalForm.exists_golden_root`
- `RelativeConicArcs.SixArcHexagonalOrder.exists_hexagonal_order`
- `RelativeConicArcs.SixArcOneFactorization.card_filter_mem_nonconcurrentMatchings`
- `RelativeConicArcs.SixArcOneFactorization.card_nonconcurrentMatchings`
- `RelativeConicArcs.SixArcOneFactorization.disjoint_of_mem_nonconcurrentMatchings`
