# Arcs complete outside a prescribed conic: human library boundary

This boundary records the human-scale library accompanying the manuscript
*Arcs complete outside a prescribed conic*: the reusable plane geometry, the
asymptotic and averaging arguments, the small-field witnesses, the order-sixteen
classification definitions, and the kernel-checked step and reduction semantics.

The exhaustive order-sixteen transition, row, and leaf families are absent from
this repository.  They are distributed by the separately pinned
`finitegeom-q16-certificates` package, which depends on this library in one
direction.  That package supplies the exhaustive classification and proves the
exact order-sixteen exclusion and the value of the completion threshold; the
boundary exported here proves the two-sided bound alone.

The exact project-local closure is rooted at
`RelativeConicArcs.Gates.ArcsCompleteOutsideConic`
and consists of:

- `CapGame.BuildGame`
- `CapGame.GraphMirror`
- `CapGame.Mirror`
- `ProjectiveCap.Grid`
- `ProjectiveCap.PlaneAffineChart`
- `ProjectiveCap.PlaneTransitivity`
- `ProjectiveCap.Projective`
- `ProjectiveCap.Sym2ConicBridge`
- `RelativeConicArcs.Affine`
- `RelativeConicArcs.Arc`
- `RelativeConicArcs.Asymptotic`
- `RelativeConicArcs.Averaging`
- `RelativeConicArcs.Certificate`
- `RelativeConicArcs.CodingBridge`
- `RelativeConicArcs.Conic`
- `RelativeConicArcs.ConicSecantInvolution`
- `RelativeConicArcs.Defect`
- `RelativeConicArcs.EqualityConsequences`
- `RelativeConicArcs.EvaluationObstruction`
- `RelativeConicArcs.ExampleChecks.Q11`
- `RelativeConicArcs.ExampleChecks.Q16`
- `RelativeConicArcs.ExampleChecks.Q16Arc`
- `RelativeConicArcs.ExampleChecks.Q16Coverage`
- `RelativeConicArcs.ExampleChecks.Q16CoverageA`
- `RelativeConicArcs.ExampleChecks.Q16CoverageB`
- `RelativeConicArcs.ExampleChecks.Q16CoverageC`
- `RelativeConicArcs.ExampleChecks.Q16CoverageD`
- `RelativeConicArcs.ExampleChecks.Q16CoverageTail`
- `RelativeConicArcs.ExampleChecks.Q16Disjoint`
- `RelativeConicArcs.ExampleChecks.Q5`
- `RelativeConicArcs.ExampleChecks.Q8`
- `RelativeConicArcs.ExampleChecks.Q9`
- `RelativeConicArcs.Examples`
- `RelativeConicArcs.FiniteFields`
- `RelativeConicArcs.Gates.ArcsCompleteOutsideConic`
- `RelativeConicArcs.KleinFourOrbitCongruence`
- `RelativeConicArcs.MatchingDesignRigidity`
- `RelativeConicArcs.Moments`
- `RelativeConicArcs.Nucleus`
- `RelativeConicArcs.OddSixArcLineBound`
- `RelativeConicArcs.ParametrizedHoles`
- `RelativeConicArcs.Plane`
- `RelativeConicArcs.ProjectiveBridge`
- `RelativeConicArcs.Q11Coding`
- `RelativeConicArcs.Q11NonGRS`
- `RelativeConicArcs.Q11Residual`
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
- `RelativeConicArcs.QuadraticLineTriangleObstruction`
- `RelativeConicArcs.Results`
- `RelativeConicArcs.SyndromeGeometry`
- `RelativeConicArcs.TangentPairFourGroup`
- `RelativeConicArcs.UncoveredLocusReconstruction`
- `RelativeConicArcs.ZeroDefectConicInvariance`

## Formal correspondence

The closure develops arcs of a projective plane that are complete outside a
prescribed conic: an arc is relatively complete when every point off the conic
lies on one of its secants, and the threshold in question is the least size at
which such an arc exists over a field of given order.

It carries the averaging argument bounding the threshold in terms of a hypothesis
imported from the literature, the matching and clique packing combinatorics
behind the concurrence deficiency estimates, the explicit small-order witnesses
and their normalizations, and the parametrized-hole validity predicate together
with the conic parametrization and icosahedral adjacency of the order-eleven
residual analysis.

The two-player formulation of hole localization is deliberately outside this
boundary.  The validity predicate and the residual dictionary are exported in
their game-free form, and the game terminals, the game-side hole localization,
and the projective cap game are not part of the closure.

The order-sixteen threshold value itself is not proved here.  This boundary
proves the two-sided bound; the exact value follows from the exhaustive
classification distributed by the external certificate package named above.

## Trust boundary

Every terminal is a kernel proof.  The closure contains no user axiom, unsafe
declaration, admitted proof, native evaluation, or imported external certificate
data, and the trust registry permits no axiom in this area.  The hypothesis
imported from the literature enters as an explicit hypothesis of the statements
that consume it rather than as an assumption of the development, so a consumer
reads it directly from the terminal it appears in.

The observed axiom set of every terminal below is contained in `Classical.choice`, `Quot.sound`, `propext`.
Source and candidate bytes are recorded in
`trust/source-manifests/arcs_complete_outside_conic_human.json` and
`trust/manifests/arcs_complete_outside_conic_human.json`.

## Terminals

- `RelativeConicArcs.Averaging.exists_completeOutside_of_completeArc`
- `RelativeConicArcs.Averaging.rhoC_le_of_kimVuBound`
- `RelativeConicArcs.Averaging.rhoC_le_t2`
- `RelativeConicArcs.Certificate.check_sound`
- `RelativeConicArcs.Certificate.rawArc_iff_projectiveCap`
- `RelativeConicArcs.Conic.NonsingularConic.finite_lower_bound`
- `RelativeConicArcs.Conic.completeOutside_bound_general`
- `RelativeConicArcs.Conic.eventually_lt_centered`
- `RelativeConicArcs.Conic.rhoC_explicit_additive_lower_bound`
- `RelativeConicArcs.Examples.rhoC_GF8`
- `RelativeConicArcs.Examples.rhoC_GF9`
- `RelativeConicArcs.Examples.rhoC_ZMod11`
- `RelativeConicArcs.Examples.rhoC_ZMod5`
- `RelativeConicArcs.Examples.rho_points_ZMod5`
- `RelativeConicArcs.TangentPairFourGroup.even_standardConic_zeroDefect_charTwo_order`
- `RelativeConicArcs.TangentPairFourGroup.no_upper_even_equality_branch`
- `RelativeConicArcs.canonical_reconstruction`
- `RelativeConicArcs.completeAffine_bound`
- `RelativeConicArcs.completeAffine_bound_eq_iff`
- `RelativeConicArcs.completeAffine_equality_order`
- `RelativeConicArcs.concurrenceCenter_pointIndex_eq_half`
- `RelativeConicArcs.concurrenceCentersOnPair_card_eq_quotient`
- `RelativeConicArcs.concurrenceCentersOnPair_card_mul_sub_one`
- `RelativeConicArcs.concurrenceCenters_card_eq_quotient`
- `RelativeConicArcs.concurrenceCenters_card_mul_choose_half`
- `RelativeConicArcs.concurrence_matching_injective`
- `RelativeConicArcs.coverage_bound`
- `RelativeConicArcs.disjoint_arcPairs_existsUnique_concurrence`
- `RelativeConicArcs.eq_of_ordinaryUncovered_eq`
- `RelativeConicArcs.eq_zero_of_evaluationMap_injective`
- `RelativeConicArcs.evaluation_eq_zero_of_eq_sum`
- `RelativeConicArcs.even_completeOutside_zeroDefect_order_spectrum`
- `RelativeConicArcs.exists_secantDeletionSet`
- `RelativeConicArcs.first_secant_moment`
- `RelativeConicArcs.linesAboveUncoveredThreshold_eq_secants`
- `RelativeConicArcs.odd_completeOutside_zeroDefect_order_spectrum`
- `RelativeConicArcs.odd_standardConic_zeroDefect_charTwo_order`
- `RelativeConicArcs.pointIndex_le_half_card`
- `RelativeConicArcs.scaledDefect_eq_remainders`
- `RelativeConicArcs.scaledDefect_eq_zero_iff`
- `RelativeConicArcs.scaledDefect_eq_zero_or_half_sub_two_le`
- `RelativeConicArcs.second_secant_moment`
- `RelativeConicArcs.stability_bound`
- `RelativeConicArcs.stabilizes_iff_stabilizes_ordinaryUncovered`
- `RelativeConicArcs.ternaryQuadratic_eq_zero_of_standardLine_and_offLineTriangle`
- `RelativeConicArcs.two_mul_badConcurrenceEdgeCount_le`
- `RelativeConicArcs.uncovered_bound`
- `RelativeConicArcs.verticesOfLineFamily_secants_eq`
