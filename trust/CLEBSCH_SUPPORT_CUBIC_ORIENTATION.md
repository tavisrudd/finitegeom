# Golden orientation of the Clebsch support cubic: formal boundary

This boundary records the orientation mechanisms accompanying Tavis Rudd,
*Reconstructing the Clebsch code and its golden orientation from its deep-hole
syndrome locus* (DOI 10.5281/zenodo.21652792).

The exact project-local closure is rooted at
`RelativeConicArcs.SupportOrientationSpine`
and consists of:

- `RelativeConicArcs.ClebschGoldenConference`
- `RelativeConicArcs.ClebschTwoGraph`
- `RelativeConicArcs.GoldenCubicNodeElimination`
- `RelativeConicArcs.GoldenCubicNodeHessians`
- `RelativeConicArcs.GoldenCubicNodes`
- `RelativeConicArcs.GoldenCubicNodesBase`
- `RelativeConicArcs.GoldenMatchingCubics`
- `RelativeConicArcs.GoldenMatchingJacobianBase`
- `RelativeConicArcs.KneserPairEigenspace`
- `RelativeConicArcs.MarkedClebschBridge`
- `RelativeConicArcs.SupportOrientationCommutant`
- `RelativeConicArcs.SupportOrientationCover`
- `RelativeConicArcs.SupportOrientationDeterminant`
- `RelativeConicArcs.SupportOrientationHolonomy`
- `RelativeConicArcs.SupportOrientationNodes`
- `RelativeConicArcs.SupportOrientationPentagon`
- `RelativeConicArcs.SupportOrientationSpine`
- `RelativeConicArcs.SupportOrientationSymmetry`
- `RelativeConicArcs.SupportOrientationSymmetryCore`
- `RelativeConicArcs.SupportOrientationSymmetryGenerators`
- `RelativeConicArcs.SupportOrientationTraceDual`

## Formal correspondence

The exported closure constructs the antipodal homogeneous cover of the eleven
point classes together with its signed golden orbital, proves the
switching-invariant triangle holonomy identities for the associated two-graph,
identifies the odd part of the determinant pencil with the support cubic, and
compresses the diagonal operator between the two conjugate golden eigenspaces
to obtain the cross-golden block whose determinant is the negative oriented
triangle cubic.  Over a field of characteristic zero containing a root of
`t^2 = t + 1`, it identifies the singular locus of that determinantal cubic
with the six golden axis classes and proves each singular point an ordinary
double point.  It further recovers the projective stabilizer of the support
cubic as a copy of `S₅`, its oriented subgroup as a copy of `A₅` of index two,
and computes the rational and integral commutants of the odd module, the last
two conditional on the explicit classical splitting interface named in the
exported spine module.

The companion does not prove the deep-hole syndrome classification, the
code--arc dictionary, the decoder stratification, or the small-arc exclusions.
Those results are established in the accompanying paper by ordinary
mathematical proof, cited literature, or exact certificate computation, and the
generated finite tables supporting them are distributed separately.

The ten-point bound on the triple-concurrence points of a six-arc and the
classification of the arcs attaining it are also outside this boundary.  They
are proved in the separate six-arc concurrence boundary distributed alongside
it, which shares no module and no terminal with this one: that development is
plane incidence geometry of six points and their fifteen chords, while this one
concerns the antipodal cover, determinant pencil, and singular locus of a cubic
threefold.

## Trust boundary

Every unconditional terminal is a kernel proof over an explicit finite index
type or an arbitrary field of characteristic zero containing a root of
`t^2 = t + 1`.  The commutant terminals carry the classical splitting
interface as an explicit hypothesis rather than an axiom.  The closure
contains no generated certificate, native evaluation, imported external data,
user axiom, unsafe declaration, or admitted proof.

The observed axiom set of every terminal below is contained in `Classical.choice`, `Quot.sound`, `propext`.
Source and candidate bytes are recorded in
`trust/source-manifests/clebsch_support_cubic_orientation.json` and
`trust/manifests/clebsch_support_cubic_orientation.json`.

## Terminals

- `RelativeConicArcs.SupportOrientationCommutant.adjoinGolden_integralPoints_eq_ZsqrtFive`
- `RelativeConicArcs.SupportOrientationCommutant.oddLattice_integralCommutant_eq_ZsqrtFive`
- `RelativeConicArcs.SupportOrientationCommutant.oddModule_rationalCommutant_eq_adjoinGoldenOperator`
- `RelativeConicArcs.SupportOrientationCover.antipodalQuotient_fiber_card_two`
- `RelativeConicArcs.SupportOrientationCover.fiveOrbital_one_mem_each_other_fiber`
- `RelativeConicArcs.SupportOrientationCover.fiveOrbitals_selfPaired`
- `RelativeConicArcs.SupportOrientationDeterminant.det_signedOrbital_add_diagonal`
- `RelativeConicArcs.SupportOrientationDeterminant.determinantPencil_oddPart_eq_supportCubic`
- `RelativeConicArcs.SupportOrientationHolonomy.fourPoint_twoGraph_identity`
- `RelativeConicArcs.SupportOrientationHolonomy.pairBalance_iff_sq_five`
- `RelativeConicArcs.SupportOrientationHolonomy.supportCubic_translation_invariant`
- `RelativeConicArcs.SupportOrientationHolonomy.supportSign_eq_triangleProduct`
- `RelativeConicArcs.SupportOrientationNodes.derivative_crossGoldenDeterminantLine_eval`
- `RelativeConicArcs.SupportOrientationNodes.singularPoints_crossGoldenDeterminant_eq_axisClasses`
- `RelativeConicArcs.SupportOrientationNodes.supportCubic_framePoints_ordinaryNodes`
- `RelativeConicArcs.SupportOrientationNodes.supportCubic_singularLocus_eq_frame`
- `RelativeConicArcs.SupportOrientationPentagon.orbitalDifference_sq_eq_ten_one_sub_deck`
- `RelativeConicArcs.SupportOrientationPentagon.signedOrbitalMatrix_sq`
- `RelativeConicArcs.SupportOrientationSymmetry.mem_orientedSupportCubicStabilizer_iff`
- `RelativeConicArcs.SupportOrientationSymmetry.mem_supportCubicProjectiveStabilizer_iff_cubicLine`
- `RelativeConicArcs.SupportOrientationSymmetry.orientedSupportCubic_index_two`
- `RelativeConicArcs.SupportOrientationSymmetry.orientedSupportCubic_stabilizer_equiv_A5`
- `RelativeConicArcs.SupportOrientationSymmetry.supportCubic_projectiveStabilizer_equiv_S5`
- `RelativeConicArcs.SupportOrientationTraceDual.det_crossGoldenBlock_eq_neg_supportCubic`
