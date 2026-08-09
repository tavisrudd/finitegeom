# Deep-hole rigidity of the Clebsch hexagon code: library boundary

This boundary records the library behind the rigidity and decoding
results for the Clebsch hexagon code: the coding dictionary, the decoding
synthesis, the rigidity spine and its bridge to the code, the chord defect, the
order-nine Sylvester configuration, the small-order geometric bridge, and the
golden orientation spine of the support cubic.

The exhaustive order-eleven point-orbit rows and the group-action payload are
absent from this repository.  They are distributed by the separately pinned
finitegeom-clebsch-q11-certificates package, which depends on this library in
one direction and supplies the enumerated orbit statements.

The exact project-local closure is rooted at
`RelativeConicArcs.Gates.ClebschRigidityTrust`
and consists of:

- `CapGame.BuildGame`
- `CapGame.GraphMirror`
- `CapGame.Mirror`
- `ProjectiveCap.Grid`
- `ProjectiveCap.PlaneAffineChart`
- `ProjectiveCap.PlaneTransitivity`
- `ProjectiveCap.Projective`
- `ProjectiveCap.Sym2ConicBridge`
- `RelativeConicArcs.Arc`
- `RelativeConicArcs.Certificate`
- `RelativeConicArcs.ClebschChordDefect`
- `RelativeConicArcs.ClebschGateway`
- `RelativeConicArcs.ClebschGatewayQ11Extension`
- `RelativeConicArcs.ClebschGoldenConference`
- `RelativeConicArcs.ClebschTwoGraph`
- `RelativeConicArcs.CodingBridge`
- `RelativeConicArcs.Conic`
- `RelativeConicArcs.Defect`
- `RelativeConicArcs.ExampleChecks.Q11`
- `RelativeConicArcs.Examples`
- `RelativeConicArcs.FiniteFields`
- `RelativeConicArcs.FrameCoordinates`
- `RelativeConicArcs.Gates.ClebschRigidityTrust`
- `RelativeConicArcs.GoldenCubicNodeElimination`
- `RelativeConicArcs.GoldenCubicNodeHessians`
- `RelativeConicArcs.GoldenCubicNodes`
- `RelativeConicArcs.GoldenCubicNodesBase`
- `RelativeConicArcs.GoldenHexagonNormalForm`
- `RelativeConicArcs.GoldenMatchingCubics`
- `RelativeConicArcs.GoldenMatchingJacobianBase`
- `RelativeConicArcs.KneserPairEigenspace`
- `RelativeConicArcs.MarkedClebschBridge`
- `RelativeConicArcs.Moments`
- `RelativeConicArcs.OddSixArcAffinePrism`
- `RelativeConicArcs.OddSixArcLineBound`
- `RelativeConicArcs.OddSixArcPrismExtraction`
- `RelativeConicArcs.ParametrizedHoles`
- `RelativeConicArcs.Plane`
- `RelativeConicArcs.ProjectiveBridge`
- `RelativeConicArcs.ProjectiveTripleNormalization`
- `RelativeConicArcs.Q11BrianchonClassification`
- `RelativeConicArcs.Q11BrianchonPetersen`
- `RelativeConicArcs.Q11CodeRigidityBridge`
- `RelativeConicArcs.Q11Coding`
- `RelativeConicArcs.Q11DecodingSynthesis`
- `RelativeConicArcs.Q11DyeConsequences`
- `RelativeConicArcs.Q11GoldenHexagonWitness`
- `RelativeConicArcs.Q11Residual`
- `RelativeConicArcs.Q11RigiditySpine`
- `RelativeConicArcs.Q11SemanticBase`
- `RelativeConicArcs.Q11SemanticDistribution`
- `RelativeConicArcs.Q11SemanticIndexCases`
- `RelativeConicArcs.Q11SemanticLeaders`
- `RelativeConicArcs.Q11SemanticOneAvoidance`
- `RelativeConicArcs.Q11SemanticOneRep`
- `RelativeConicArcs.Q11SemanticPairAvoidance`
- `RelativeConicArcs.Q11SemanticPairRep`
- `RelativeConicArcs.Q11SemanticPairRepA`
- `RelativeConicArcs.Q11SemanticPairRepB`
- `RelativeConicArcs.Q11SemanticPairRepC`
- `RelativeConicArcs.Q11SemanticPairRepD`
- `RelativeConicArcs.Q11SemanticRayData`
- `RelativeConicArcs.Q11SemanticSpectrum`
- `RelativeConicArcs.Q11SemanticSynthesis`
- `RelativeConicArcs.Q11SemanticTwoRep`
- `RelativeConicArcs.Q11SemanticTwoRepA`
- `RelativeConicArcs.Q11SemanticTwoRepB`
- `RelativeConicArcs.Q11SemanticTwoRepC`
- `RelativeConicArcs.Q11SemanticTwoRepD`
- `RelativeConicArcs.Q9Sylvester`
- `RelativeConicArcs.QuadrangleDiagonal`
- `RelativeConicArcs.SixArcChordMatchings`
- `RelativeConicArcs.SixArcConcurrence`
- `RelativeConicArcs.SixArcConcurrenceBound`
- `RelativeConicArcs.SixArcDefectBridge`
- `RelativeConicArcs.SixArcDegenerateConicExclusion`
- `RelativeConicArcs.SixArcGoldenNormalForm`
- `RelativeConicArcs.SixArcHexagonalOrder`
- `RelativeConicArcs.SixArcOneFactorization`
- `RelativeConicArcs.SixVertexOneFactorization`
- `RelativeConicArcs.SmallKChordMoments`
- `RelativeConicArcs.SmallKGeometricBridge`
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
- `RelativeConicArcs.SyndromeGeometry`

## Formal correspondence

The closure develops the correspondence between the Clebsch hexagon code and the
geometry of its deep-hole syndrome locus, and proves that the geometry
determines the code: the coding dictionary translating between codewords and
point configurations, the synthesis reconstructing a decoder from the syndrome
stratification, the rigidity spine and the bridge carrying it to the code, and
the chord-defect estimate the rigidity argument consumes.

Two statements about six-arcs attaining the ten-point triple-concurrence bound
are recorded in `RelativeConicArcs.Q11BrianchonClassification`, specialized to
order eleven.
They appear as the ten-point count of Section 2.2, page 275 and Theorem 1(ii),
page 275 of R. H. Dye, *Hexagons, conics, `A₅` and `PSL₂(K)`*, Journal of the
London Mathematical Society (2) 44 (1991), 270--286,
doi:10.1112/jlms/s2-44.2.270, which is cited as their antecedent.  Both are
theorems of this library: they are proved from the general-field six-arc
concurrence development at their own quantifier range and specialized here.

The order-eleven orbit enumeration itself is not proved here.  The statements
that quantify over the enumerated orbits are supplied by the external
certificate package named above.

## Trust boundary

Every terminal is a kernel proof.  The closure contains no user axiom, unsafe
declaration, admitted proof, native evaluation, or imported external certificate
data, and the trust registry permits no axiom in this area.  In particular the
two statements attributed to the literature above are proved rather than
assumed, so no result in this boundary rests on them as trusted input.

The observed axiom set of every terminal below is contained in `Classical.choice`, `Quot.sound`, `propext`.
Source and candidate bytes are recorded in
`trust/source-manifests/clebsch_rigidity.json` and
`trust/manifests/clebsch_rigidity.json`.

## Terminals

- `RelativeConicArcs.ClebschChordDefect.chordDefect_identity_of_moments`
- `RelativeConicArcs.ClebschChordDefect.clebsch_uncovered_formula`
- `RelativeConicArcs.ClebschChordDefect.orders_of_clebsch_uncovered_conic_card`
- `RelativeConicArcs.ClebschDye.deepHoleLocus_rigidifies_witnessCode`
- `RelativeConicArcs.ClebschDye.isClebschHexagon_of_uncovered_subset_conic`
- `RelativeConicArcs.ClebschDye.isClebschHexagon_of_uncovered_subset_planeConic`
- `RelativeConicArcs.ClebschDye.sixArc_cards_of_uncovered_subset_conic`
- `RelativeConicArcs.ClebschDye.sixArc_twelve_le_uncovered_card`
- `RelativeConicArcs.ClebschDye.sixArc_uncovered_add_brianchon_card`
- `RelativeConicArcs.ClebschDye.sixArc_uncovered_card_le_twelve_of_subset_planeQuadraticLocus`
- `RelativeConicArcs.Examples.Q11Coding.ambiguity_strata_counts`
- `RelativeConicArcs.Examples.Q11Coding.ambiguity_strata_sound`
- `RelativeConicArcs.Examples.Q11Coding.brianchonDirectionIndices_eq_indexThree`
- `RelativeConicArcs.Examples.Q11Coding.brianchon_decoder_matching_dictionary`
- `RelativeConicArcs.Examples.Q11Coding.brianchon_weightTwo_leaderSupports`
- `RelativeConicArcs.Examples.Q11Coding.distanceThree_leaderSupports_eq_chiralitySheets`
- `RelativeConicArcs.Examples.Q11Coding.projective_distanceThreeDirections_eq_standardConic`
- `RelativeConicArcs.Examples.Q11Coding.supportChirality_generatorOrbits_and_exchange`
- `RelativeConicArcs.Examples.Q11Coding.totalSyndromeDistance_exact`
- `RelativeConicArcs.Examples.Q11Coding.witness_code_coveringRadius_three`
- `RelativeConicArcs.Examples.Q11Coding.witness_mds_columns`
- `RelativeConicArcs.OddSixArcPrismExtraction.sixArc_uncoveredOnLine_card_le_order_sub_five`
- `RelativeConicArcs.Q9Sylvester.distanceTwo_clique_number_five`
- `RelativeConicArcs.SmallKGeometricBridge.fiveArc_not_conic_card`
- `RelativeConicArcs.SmallKGeometricBridge.fourArc_conic_card_order`
- `RelativeConicArcs.SmallKGeometricBridge.fourArc_uncovered_card`
- `RelativeConicArcs.SmallKGeometricBridge.sevenArc_primePower_conic_card_spectra`
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
