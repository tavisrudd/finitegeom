# The complete bounded repair-port theorem: formal boundary

This boundary records the formal development of bounded repair ports: the
paper-facing coefficient-port object, the intrinsic reconstruction radius, the
bridge to standard-code duality, minimum-port reconstruction for maximum
distance separable codes, exact pointed transfer, and the finite reliability and
bounded-radius erasure calculus.  It also records the completed projective
twisted-cubic parameters, radius-four stabilization, and exact cubic/axis rows.

The exact project-local closure is rooted at
`RepairPorts.Gates.CompletePorts`
and consists of:

- `FiniteGeom.AxisTwistedCubic`
- `FiniteGeom.AxisTwistedCubicCircuits`
- `FiniteGeom.Code`
- `FiniteGeom.CodeDuality`
- `FiniteGeom.ColoredCompleteGraph`
- `FiniteGeom.ColumnCode`
- `FiniteGeom.EvalCode`
- `FiniteGeom.ExplicitRainbowMatching`
- `FiniteGeom.Hypergraph`
- `FiniteGeom.MomentCurve`
- `FiniteGeom.ProjectiveAxisTwistedCubic`
- `FiniteGeom.ProjectiveAxisTwistedCubicCircuits`
- `FiniteGeom.Repair`
- `FiniteGeom.Weight`
- `FiniteGeom.ZeroSumTriple`
- `RepairCodes.AxisTwistedCubic`
- `RepairCodes.AxisTwistedCubicInvariants`
- `RepairCodes.CodeInstance`
- `RepairCodes.OuterDual`
- `RepairCodes.ProjectiveAxisTwistedCubic`
- `RepairCodes.ProjectiveAxisTwistedCubicInvariants`
- `RepairCodes.SeedLift`
- `RepairCodes.TraceDual`
- `RepairCodes.Transfer`
- `RepairCodes.WeightedStrictExample`
- `RepairCodes.WeightedTransfer`
- `RepairCodes.WeightedTransferExact`
- `RepairPorts.CoefficientPort`
- `RepairPorts.FunctionalCost`
- `RepairPorts.Gates.CompletePorts`
- `RepairPorts.HarmonicQuartic`
- `RepairPorts.MDSReconstruction`
- `RepairPorts.PointedTransfer`
- `RepairPorts.PointedTutte`
- `RepairPorts.PositiveDensity`
- `RepairPorts.Reliability`

## Formal correspondence

A repair port of a code is a set of coefficients from which a lost symbol can be
reconstructed, and the reconstruction radius is the least size at which such a
port exists.  The closure develops that object intrinsically, relates it to the
dual code through the standard duality bridge, and computes it for maximum
distance separable codes, where a port of minimum size reconstructs.

It then proves exact transfer of ports along pointed maps, and develops the
erasure calculus in two forms: a finite reliability statement, and a
bounded-radius statement in which the reconstruction radius is constrained in
advance.

For the completed projective twisted cubic with its common axis, the closure
proves the `[2q+2,4,q]_q` parameters, identifies radius four with the full
minimal repair hypergraph, and computes the uniform matching and transversal
rows for both coordinate orbits.

One statement is conditional.  The strict weighted example assumes the displayed
regular Singer-action input and asserts nothing without it; every other terminal
is unconditional.  No executable certificate or fiber enumerator appears in any
dependency closure of this gate.

## Trust boundary

Every terminal is a kernel proof.  The closure contains no generated certificate
family, executable checker, fiber enumerator, native evaluation, imported
external data, unsafe declaration, or admitted proof.  The single conditional
result carries its hypothesis in its own statement rather than as an assumption
of the development.

The observed axiom set of every terminal below is contained in `Classical.choice`, `Quot.sound`, `propext`.
Source and candidate bytes are recorded in
`trust/source-manifests/complete_ports.json` and
`trust/manifests/complete_ports.json`.

## Terminals

- `FiniteGeom.dualCode_dualCode`
- `FiniteGeom.dualCode_injective`
- `FiniteGeom.projectiveAxisTwistedCubic_code_parameters`
- `RepairCodes.minimalProjectiveAxisRepair_four_invariants`
- `RepairCodes.minimalProjectiveAxisRepair_full_invariants`
- `RepairCodes.minimalProjectiveAxisTwistedCubicRepair_full_eq_four`
- `RepairCodes.minimalProjectiveCubicRepair_four_invariants`
- `RepairCodes.minimalProjectiveCubicRepair_full_invariants`
- `RepairCodes.projectiveAxisTwistedCubic_strict_weighted_transfer_of_regular_projective_action`
- `RepairPorts.HasMDSDualParameters.exists_normalized_word`
- `RepairPorts.HasMDSDualParameters.pointedZeroFunctionalCost_eq`
- `RepairPorts.HasMDSDualParameters.reconstructionRadius_eq`
- `RepairPorts.HasMDSDualParameters.reconstructsAt`
- `RepairPorts.HasMDSDualParameters.reconstructsAt_iff`
- `RepairPorts.HasMDSDualParameters.repairHypergraph_eq_powersetCard`
- `RepairPorts.PointedCoefficientPortIso.reconstructionRadius_eq`
- `RepairPorts.PointedCoefficientPortIso.reconstructsAt_iff`
- `RepairPorts.blockerCount_eq_minimalBlockerCount_at_minimum`
- `RepairPorts.blockerFailurePolynomial_eq_minimum_term_add_remainder`
- `RepairPorts.cheapestRepairRadiusProbability`
- `RepairPorts.cheapestRepairRadiusProbability_eq_failure_sub`
- `RepairPorts.coeff_blockerFailurePolynomial_at_minimum`
- `RepairPorts.coeff_blockerFailurePolynomial_eq_zero_below_minimum`
- `RepairPorts.coefficientPort_concatenatedCode_eq_image_pointed`
- `RepairPorts.concatenatedRestrictedCode_parameters`
- `RepairPorts.deletionContractionRankDifference_eq_successfulSetEnumerator`
- `RepairPorts.disjointTripleRepairs_reliability`
- `RepairPorts.disjointTripleRepairs_reliability_ne_overlapping`
- `RepairPorts.dualDist_harmonicQuarticCode`
- `RepairPorts.elementaryPerspectiveSubsetEvaluation_eq_pointedTutte`
- `RepairPorts.erasureFailureProbability_delete_contract`
- `RepairPorts.eventually_mdsMinimumCoefficientFingerprints`
- `RepairPorts.eventually_pointedConfinement_iff_zeroCost`
- `RepairPorts.eventually_prescribedPorts`
- `RepairPorts.eventually_radiusThree_prescribedPortPair`
- `RepairPorts.exactFunctionalStrata`
- `RepairPorts.exactPointedConfinementAndTransfer`
- `RepairPorts.existsUnique_harmonicQuarticCompletion`
- `RepairPorts.finiteHarmonicBlock_repairPort`
- `RepairPorts.harmonicPortClosure_of_containsBlock_iff`
- `RepairPorts.harmonicPortClosure_of_containsNoBlock_iff`
- `RepairPorts.harmonicPortClosure_withNucleus_iff`
- `RepairPorts.harmonicQuarticCode_parameters_of_sharp_section`
- `RepairPorts.harmonicQuarticDeterminant_finite`
- `RepairPorts.harmonicQuarticDeterminant_infinity`
- `RepairPorts.harmonicQuarticFamily_projective_linearIndependent_iff`
- `RepairPorts.harmonicQuarticGenerator_smallColumnIndependent`
- `RepairPorts.hasDerivAt_homogeneous_portReliability`
- `RepairPorts.hasDerivAt_portReliability_update`
- `RepairPorts.infinityHarmonicBlock_repairPort`
- `RepairPorts.noRepairProbability_eq_erasureFailure`
- `RepairPorts.nonzeroOuterPointedRealizationCost_eq_fiberCost`
- `RepairPorts.overlappingTripleRepairs_reliability`
- `RepairPorts.pointedConfinement_iff_zeroCost_of_outerDualDistance`
- `RepairPorts.pointedFunctionalTupleRealizationCost_eq`
- `RepairPorts.portReliability_delete_contract`
- `RepairPorts.portReliability_pair_homogeneous`
- `RepairPorts.prescribedPorts_of_outerDualDistance`
- `RepairPorts.reconstructedCode_eq`
- `RepairPorts.representedTargets_density`
- `RepairPorts.zeroFunctionalPointedNonembeddedCost_eq_closed`
