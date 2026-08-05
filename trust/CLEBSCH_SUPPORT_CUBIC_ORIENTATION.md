# Golden orientation of the Clebsch support cubic: formal boundary

This boundary records the orientation mechanisms accompanying Tavis Rudd,
*Reconstructing the Clebsch code and its golden orientation from its deep-hole
syndrome locus* (DOI 10.5281/zenodo.21652792).

The exact project-local closure is rooted at
`RelativeConicArcs.PaperIOrientationSpine`
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
- `RelativeConicArcs.PaperIOrientationCommutant`
- `RelativeConicArcs.PaperIOrientationCover`
- `RelativeConicArcs.PaperIOrientationDeterminant`
- `RelativeConicArcs.PaperIOrientationHolonomy`
- `RelativeConicArcs.PaperIOrientationNodes`
- `RelativeConicArcs.PaperIOrientationPentagon`
- `RelativeConicArcs.PaperIOrientationSpine`
- `RelativeConicArcs.PaperIOrientationSymmetry`
- `RelativeConicArcs.PaperIOrientationSymmetryCore`
- `RelativeConicArcs.PaperIOrientationSymmetryGenerators`
- `RelativeConicArcs.PaperIOrientationTraceDual`

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
code--arc dictionary, the decoder stratification, the ten-point Brianchon
bound and its equality classification, or the small-arc exclusions.  Those
results are established in the accompanying paper by ordinary mathematical
proof, cited literature, or exact certificate computation, and the generated
finite tables supporting them are distributed separately.

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

- `RelativeConicArcs.PaperIOrientationCommutant.adjoinGolden_integralPoints_eq_ZsqrtFive`
- `RelativeConicArcs.PaperIOrientationCommutant.oddLattice_integralCommutant_eq_ZsqrtFive`
- `RelativeConicArcs.PaperIOrientationCommutant.oddModule_rationalCommutant_eq_adjoin_B`
- `RelativeConicArcs.PaperIOrientationCover.antipodalQuotient_fiber_card_two`
- `RelativeConicArcs.PaperIOrientationCover.fiveOrbital_one_mem_each_other_fiber`
- `RelativeConicArcs.PaperIOrientationCover.fiveOrbitals_selfPaired`
- `RelativeConicArcs.PaperIOrientationDeterminant.det_signedOrbital_add_diagonal`
- `RelativeConicArcs.PaperIOrientationDeterminant.determinantPencil_oddPart_eq_supportCubic`
- `RelativeConicArcs.PaperIOrientationHolonomy.fourPoint_twoGraph_identity`
- `RelativeConicArcs.PaperIOrientationHolonomy.pairBalance_iff_sq_five`
- `RelativeConicArcs.PaperIOrientationHolonomy.supportCubic_translation_invariant`
- `RelativeConicArcs.PaperIOrientationHolonomy.supportSign_eq_triangleProduct`
- `RelativeConicArcs.PaperIOrientationNodes.derivative_crossGoldenDeterminantLine_eval`
- `RelativeConicArcs.PaperIOrientationNodes.singularPoints_crossGoldenDeterminant_eq_axisClasses`
- `RelativeConicArcs.PaperIOrientationNodes.supportCubic_framePoints_ordinaryNodes`
- `RelativeConicArcs.PaperIOrientationNodes.supportCubic_singularLocus_eq_frame`
- `RelativeConicArcs.PaperIOrientationPentagon.orbitalDifference_sq_eq_ten_one_sub_deck`
- `RelativeConicArcs.PaperIOrientationPentagon.signedOrbitalMatrix_sq`
- `RelativeConicArcs.PaperIOrientationSymmetry.mem_orientedSupportCubicStabilizer_iff`
- `RelativeConicArcs.PaperIOrientationSymmetry.mem_supportCubicProjectiveStabilizer_iff_cubicLine`
- `RelativeConicArcs.PaperIOrientationSymmetry.orientedSupportCubic_index_two`
- `RelativeConicArcs.PaperIOrientationSymmetry.orientedSupportCubic_stabilizer_equiv_A5`
- `RelativeConicArcs.PaperIOrientationSymmetry.supportCubic_projectiveStabilizer_equiv_S5`
- `RelativeConicArcs.PaperIOrientationTraceDual.det_crossGoldenBlock_eq_neg_supportCubic`
