# Structural Clebsch passages: formal boundary

This boundary records the algebraic mechanisms accompanying Tavis Rudd,
*Golden descent and operator realizations of the Clebsch cubic*
(DOI 10.5281/zenodo.21682515).

The exact project-local closure is rooted at
`RelativeConicArcs.Gates.ClebschPassages`
and consists of:

- `RelativeConicArcs.AlignedFamilyFaithfulness`
- `RelativeConicArcs.AlignedQueryFaithfulness`
- `RelativeConicArcs.AlignedQueryFamily`
- `RelativeConicArcs.AlignedTwoGraph`
- `RelativeConicArcs.ClebschGoldenConference`
- `RelativeConicArcs.ClebschGoldenSteinChart`
- `RelativeConicArcs.ClebschInvariantCubic`
- `RelativeConicArcs.ClebschPassagesCorrespondence`
- `RelativeConicArcs.ClebschSteinChart`
- `RelativeConicArcs.ClebschTwoGraph`
- `RelativeConicArcs.Gates.ClebschPassages`
- `RelativeConicArcs.GoldenQuadraticCharacters`
- `RelativeConicArcs.GoldenResidueAlgebra`
- `RelativeConicArcs.InvolutiveOddUnit`
- `RelativeConicArcs.KneserPairEigenspace`
- `RelativeConicArcs.MarkedClebschBridge`
- `RelativeConicArcs.NormalizedMarkedIncidence`
- `RelativeConicArcs.NormalizedMarkedIncidenceData`
- `RelativeConicArcs.PetersenHarmonicKernel`
- `RelativeConicArcs.QuadraticPinching`
- `RelativeConicArcs.SeidelPrincipalMinors`
- `RelativeConicArcs.SignedEquiangularGram`
- `RelativeConicArcs.SphereIntegralMoments`
- `RelativeConicArcs.SphericalMomentFunctional`
- `RelativeConicArcs.SpinorSquareClass`
- `RelativeConicArcs.SplitQuadraticPinching`
- `RelativeConicArcs.TightFrameConference`
- `RelativeConicArcs.TraceSplitQuadraticAlgebra`

## Formal correspondence

The exported closure proves the residue-field pinching of a two-branch
quadratic singularity, identifies its conductor with the residue kernel and,
in the split case, with the branch ideal, and gives the involutive even/odd
splitting together with the multiplication law satisfied by the square of an
anti-invariant unit.  Over a commutative base it characterizes existence of a
root of `t^2 = t + 1` by existence of a square root of five, factors the
golden exchanger as a product of two reflections, and checks that two is not a
square modulo eleven.  It derives the conference identity `C^2 = 5I` from the
tight-frame Gram condition, computes the signed equiangular Gram determinants
of both golden orientations, and proves that the triangle cubic of the
displayed order-six conference matrix is invariant under switching.  For the
marked chart it proves the deck-sign scaling law and the two negative
comparisons that separate the sheet triangle cubic and the sheet pair sum.
On the Petersen side it exhibits the unique pair-sum eigenvector of a general
Kneser pair operator, computes the dimension of the eigenspace at eigenvalue
negative two, and evaluates the pair-sum Gram scalar and its norm.  It fixes
the marked invariant cubic up to scale, identifies its value with a multiple
of the third elementary symmetric polynomial, and factors the resulting Gaunt
coefficient.  For aligned two-graphs it proves complementation, the rooted
exclusive-or form of the triangle function, both bounds behind the triangle
Ramsey equality on six labelled points and the aligned anchor they produce,
the pair-signature classification and its swap elimination, injectivity of the
normalized seven-point signature, global agreement from common seven-point
restrictions, the calibrated-triangle exclusion, recovery of a signing up to
switching and negation, the four-point signing determinant, and the exact
query counts.  Finally it transports these mechanisms to the chart
correspondence: the branch square, the chart conductor, the golden structural
package, the Petersen pullback scalar, the normalized marked chart value, and
the two structural factors the marked value determines.

This formal artifact does not assert the geometric correspondence between Hitchin's
spaces and these algebraic models, and it does not claim the integral
Mukai--Umemura comparison.  Those inputs are established in the accompanying
paper by ordinary mathematical proof or cited literature, and no manuscript
row is claimed to be formalized in full.

## Trust boundary

Every terminal is a kernel proof.  The finite steps use kernel `decide` on the
displayed reflection matrices, the eleven residues, and the two aligned
two-graph classifiers over their sixteen thousand three hundred eighty-four
and eight cases; `norm_num` on the marked fixed vector, its third elementary
symmetric value, the reflection norms, and the identification of each
displayed integral reflection with the rational reflection formula; and one
cofactor expansion for a determinant.  Compiled evaluation enters no terminal,
so each one depends on `propext`, `Classical.choice` and `Quot.sound` or on no
axiom at all.  The closure contains no generated certificate, native
evaluation, imported external data, user axiom, unsafe declaration, or
admitted proof.

The observed axiom set of every terminal below is contained in `Classical.choice`, `Quot.sound`, `propext`.
Source and candidate bytes are recorded in
`trust/source-manifests/clebsch_passages.json` and
`trust/manifests/clebsch_passages.json`.

## Terminals

- `RelativeConicArcs.AlignedTwoGraph.alignedAnchor_of_ramseyTriple`
- `RelativeConicArcs.AlignedTwoGraph.aligned_complement_iff`
- `RelativeConicArcs.AlignedTwoGraph.anchorSignature_eq_false_iff_balanced`
- `RelativeConicArcs.AlignedTwoGraph.calibratedTriangle_forces_no_complement`
- `RelativeConicArcs.AlignedTwoGraph.det_fourSigningMatrix_eq_three_sub_two_cycleSum`
- `RelativeConicArcs.AlignedTwoGraph.exists_alignedAnchor`
- `RelativeConicArcs.AlignedTwoGraph.exists_monochromatic_triple`
- `RelativeConicArcs.AlignedTwoGraph.global_agreement_of_common_seven_restrictions`
- `RelativeConicArcs.AlignedTwoGraph.no_monochromatic_triple_five`
- `RelativeConicArcs.AlignedTwoGraph.normalizedSevenSignature_injective`
- `RelativeConicArcs.AlignedTwoGraph.pairSignature_classification`
- `RelativeConicArcs.AlignedTwoGraph.selectedQueryCount_eq`
- `RelativeConicArcs.AlignedTwoGraph.signing_eq_up_to_switching_and_negation`
- `RelativeConicArcs.AlignedTwoGraph.sixPointAnchor_testCount`
- `RelativeConicArcs.AlignedTwoGraph.threePairOutcomes_eliminate_swaps`
- `RelativeConicArcs.AlignedTwoGraph.triangle_eq_rooted_xor`
- `RelativeConicArcs.ClebschGoldenConference.conferenceMatrixOver_sq`
- `RelativeConicArcs.ClebschGoldenConference.triangleCubic_switch`
- `RelativeConicArcs.ClebschInvariantCubic.eq_gauntCoefficient_mul_sigmaThree`
- `RelativeConicArcs.ClebschInvariantCubic.exists_smul_markedFixedVector`
- `RelativeConicArcs.ClebschInvariantCubic.gauntCoefficient_factorization`
- `RelativeConicArcs.ClebschPassagesCorrespondence.chartBranch_square`
- `RelativeConicArcs.ClebschPassagesCorrespondence.chartConductor_eq_branchIdeal`
- `RelativeConicArcs.ClebschPassagesCorrespondence.gauntCoefficient_has_two_structural_factors`
- `RelativeConicArcs.ClebschPassagesCorrespondence.goldenRoot_structural_package`
- `RelativeConicArcs.ClebschPassagesCorrespondence.markedValue_determines_gauntCoefficient`
- `RelativeConicArcs.ClebschPassagesCorrespondence.normalizedMarked_chart_value`
- `RelativeConicArcs.ClebschPassagesCorrespondence.petersenPullback_scalar`
- `RelativeConicArcs.GoldenQuadraticCharacters.exchanger_eq_reflection_mul`
- `RelativeConicArcs.GoldenQuadraticCharacters.exchanger_reflection_factorization`
- `RelativeConicArcs.GoldenQuadraticCharacters.exists_goldenRoot_iff_exists_sqrtFive`
- `RelativeConicArcs.GoldenQuadraticCharacters.two_not_square_zmod11`
- `RelativeConicArcs.InvolutiveOddUnit.existsUnique_invariant_add_mul_invariant`
- `RelativeConicArcs.InvolutiveOddUnit.square_invariant_of_antiInvariant`
- `RelativeConicArcs.KneserPairEigenspace.existsUnique_pairSum_of_petersenEigen`
- `RelativeConicArcs.KneserPairEigenspace.finrank_petersenNegTwoEigenspace`
- `RelativeConicArcs.MarkedClebschBridge.chartLift_smul`
- `RelativeConicArcs.MarkedClebschBridge.sheetPairSum_not`
- `RelativeConicArcs.MarkedClebschBridge.sheetTriangleCubic_not`
- `RelativeConicArcs.PetersenHarmonicKernel.gramOperator_pairSum`
- `RelativeConicArcs.PetersenHarmonicKernel.pairSum_norm_sq`
- `RelativeConicArcs.PetersenHarmonicKernel.pairSum_norm_sq_general`
- `RelativeConicArcs.QuadraticPinching.conductor_eq_ker`
- `RelativeConicArcs.QuadraticPinching.exists_pinching_add_alpha_mul`
- `RelativeConicArcs.SignedEquiangularGram.golden_det_negative`
- `RelativeConicArcs.SignedEquiangularGram.golden_det_positive`
- `RelativeConicArcs.SplitQuadraticPinching.algebra_isIntegral`
- `RelativeConicArcs.SplitQuadraticPinching.conductor_eq_branchIdeal`
- `RelativeConicArcs.SplitQuadraticPinching.splitPinching_eq_top_of_isUnit`
- `RelativeConicArcs.TightFrameConference.conference_sq_of_gram`
