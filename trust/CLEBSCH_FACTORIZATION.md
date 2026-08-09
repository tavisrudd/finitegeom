# Clebsch factorization Paper II: formal boundary

This boundary records the 54 unique Lean terminals used by the second
Clebsch-factorization paper.  It combines the structural all-field
conic-matching reduction, the explicit `A3`, `B3`, and `H3` arithmetic endpoint
checks at field orders five, seven, and eleven, Hilbert-symmetry forcing, and the
hyperplane-square annihilator argument.

The exact project-local closure is rooted at
`RelativeConicArcs.Gates.ClebschFactorizationBoundary`
and consists of:

- `ProjectiveCap.Grid`
- `ProjectiveCap.PlaneAffineChart`
- `ProjectiveCap.PlaneTransitivity`
- `ProjectiveCap.Projective`
- `ProjectiveCap.Sym2ConicBridge`
- `RelativeConicArcs.Arc`
- `RelativeConicArcs.Certificate`
- `RelativeConicArcs.ClebschA3InvariantMatching`
- `RelativeConicArcs.ClebschAffineContractionCohomology`
- `RelativeConicArcs.ClebschAffineExtensionContraction`
- `RelativeConicArcs.ClebschArithmeticGluing`
- `RelativeConicArcs.ClebschArithmeticGluingData`
- `RelativeConicArcs.ClebschB3InvariantMatchings`
- `RelativeConicArcs.ClebschBalancedOrbitEndgame`
- `RelativeConicArcs.ClebschBalancedSheets`
- `RelativeConicArcs.ClebschBalancedSheetsB3`
- `RelativeConicArcs.ClebschBalancedSheetsH3`
- `RelativeConicArcs.ClebschConicMatchingQuotient`
- `RelativeConicArcs.ClebschDetectingIntertwiners`
- `RelativeConicArcs.ClebschDetectingModuleVanishings`
- `RelativeConicArcs.ClebschDihedralReflectionParity`
- `RelativeConicArcs.ClebschDividedPowerTopSlices`
- `RelativeConicArcs.ClebschFactorizationB3`
- `RelativeConicArcs.ClebschFactorizationData`
- `RelativeConicArcs.ClebschFactorizationH3`
- `RelativeConicArcs.ClebschFiniteRootRecurrenceBridge`
- `RelativeConicArcs.ClebschFiniteRootWeightSlice`
- `RelativeConicArcs.ClebschFirstFrobeniusSection`
- `RelativeConicArcs.ClebschFixedLineRadialTranslation`
- `RelativeConicArcs.ClebschGateway`
- `RelativeConicArcs.ClebschH3InvariantMatchings`
- `RelativeConicArcs.ClebschHarmonicQuotient`
- `RelativeConicArcs.ClebschHilbertSymmetry`
- `RelativeConicArcs.ClebschHyperplaneSquare`
- `RelativeConicArcs.ClebschInvariantMatchingCriterion`
- `RelativeConicArcs.ClebschLucasCoefficientBasis`
- `RelativeConicArcs.ClebschLucasPolynomialFactorization`
- `RelativeConicArcs.ClebschMomentTrade`
- `RelativeConicArcs.ClebschOrbitOrderReduction`
- `RelativeConicArcs.ClebschOuterParityInjection`
- `RelativeConicArcs.ClebschOuterParityWeights`
- `RelativeConicArcs.ClebschPolyhedralInvariantAverages`
- `RelativeConicArcs.ClebschPolynomialTopSliceDetection`
- `RelativeConicArcs.ClebschProjectiveTradeReduction`
- `RelativeConicArcs.ClebschRankThreeBalancedEndgame`
- `RelativeConicArcs.ClebschRegularMatching`
- `RelativeConicArcs.ClebschRootDefect`
- `RelativeConicArcs.ClebschSchemeChirality`
- `RelativeConicArcs.ClebschSchemeChiralityData`
- `RelativeConicArcs.CodingBridge`
- `RelativeConicArcs.Conic`
- `RelativeConicArcs.Defect`
- `RelativeConicArcs.Gates.ClebschArithmeticGluing`
- `RelativeConicArcs.Gates.ClebschBalancedSheets`
- `RelativeConicArcs.Gates.ClebschFactorizationBoundary`
- `RelativeConicArcs.Gates.ClebschHilbertSymmetry`
- `RelativeConicArcs.Gates.ClebschHyperplaneSquare`
- `RelativeConicArcs.Gates.ClebschPaperIIStructural`
- `RelativeConicArcs.Moments`
- `RelativeConicArcs.Plane`
- `RelativeConicArcs.ProjectiveBridge`
- `RelativeConicArcs.SyndromeGeometry`

## Formal correspondence

The structural terminals follow the mathematical order of the quadratic-trade
argument: pullback splitting, Lucas coefficients and parity, finite-field root
defect, the Frobenius section, detector coefficients, contraction and coboundary
descent, regular matching and dihedral parity, the exceptional-order endgame,
and fixed-line radial translation.  The arithmetic terminals then verify the
literal rank-three reductions, matching sheet actions, polynomial splitting,
Coxeter-square orbits, exact projective stabilizer and orbit statements, golden
certificate tables, and the bounded split/fused trichotomy.  Two Hilbert
terminals force socle degree three and its final one-dimensional value; one
hyperplane-square terminal proves that the stated full-support quadratic
annihilator line leaves no nonzero cubic annihilator.

This correspondence is a formal boundary, not a claim that every sentence in
the manuscript has been formalized.  In particular, the gate does not supply
the classical representation-theoretic and subgroup identifications recorded
as inputs in the claim ledger, nor does it generalize the finite endpoint checks
to an all-prime theorem.

## Trust boundary

Every exported terminal is a kernel proof.  Finite statements are discharged by
kernel reduction through `decide`, not native evaluation.  The closure uses no
project axiom, unsafe declaration, or admitted proof.  Classical and replay
inputs used alongside these terminals remain identified separately in the
manuscript claim ledger.

The observed axiom set of every terminal below is contained in `Classical.choice`, `Quot.sound`, `propext`.
Source and candidate bytes are recorded in
`trust/source-manifests/clebsch_factorization.json` and
`trust/manifests/clebsch_factorization.json`.

## Terminals

- `RelativeConicArcs.ClebschAffineContractionCohomology.contraction_maps_coboundary`
- `RelativeConicArcs.ClebschAffineExtensionContraction.contractedCochain_eq`
- `RelativeConicArcs.ClebschArithmeticGluing.a3_fused_stabilizer_and_orbit`
- `RelativeConicArcs.ClebschArithmeticGluing.a3_matching_is_fused`
- `RelativeConicArcs.ClebschArithmeticGluing.a3_two_has_no_root`
- `RelativeConicArcs.ClebschArithmeticGluing.b3_reductions_induce_split_matchings`
- `RelativeConicArcs.ClebschArithmeticGluing.b3_split_stabilizers_and_orbits`
- `RelativeConicArcs.ClebschArithmeticGluing.b3_two_roots`
- `RelativeConicArcs.ClebschArithmeticGluing.coxeterSquare_orbits`
- `RelativeConicArcs.ClebschArithmeticGluing.coxeterSquare_orders_and_square_determinants`
- `RelativeConicArcs.ClebschArithmeticGluing.frozen_matching_mates_are_fixedPointFree_involutions`
- `RelativeConicArcs.ClebschArithmeticGluing.goldenTransporter_swaps_matchings`
- `RelativeConicArcs.ClebschArithmeticGluing.h3_certificate_literal_checks`
- `RelativeConicArcs.ClebschArithmeticGluing.h3_five_roots`
- `RelativeConicArcs.ClebschArithmeticGluing.h3_golden_roots`
- `RelativeConicArcs.ClebschArithmeticGluing.h3_stabilizer_generation_word_data`
- `RelativeConicArcs.ClebschArithmeticGluing.matchingEdgeLists_encode_frozen_matchings`
- `RelativeConicArcs.ClebschArithmeticGluing.projective_group_orders`
- `RelativeConicArcs.ClebschArithmeticGluing.rankThree_split_fused_trichotomy`
- `RelativeConicArcs.ClebschArithmeticGluing.reduced_vertex_polynomials_split`
- `RelativeConicArcs.ClebschArithmeticGluing.sheetCharacter_eq_of_kernel_eq`
- `RelativeConicArcs.ClebschArithmeticGluing.silverTransporter_swaps_matchings`
- `RelativeConicArcs.ClebschArithmeticGluing.stabilizer_eq_character_kernel`
- `RelativeConicArcs.ClebschArithmeticGluing.transporters_are_outer`
- `RelativeConicArcs.ClebschArithmeticGluing.vertexReductions_are_bijective`
- `RelativeConicArcs.ClebschBalancedOrbitEndgame.exceptionalSplit_regularMatching_iff`
- `RelativeConicArcs.ClebschDetectingIntertwiners.eq_zero_of_two_generator_relations`
- `RelativeConicArcs.ClebschDetectingModuleVanishings.characteristic_three_scalar_eq_zero`
- `RelativeConicArcs.ClebschDetectingModuleVanishings.steinberg_head_above_quadratic_ceiling`
- `RelativeConicArcs.ClebschDihedralReflectionParity.exists_two_mul_add_one_dvd_iff_odd`
- `RelativeConicArcs.ClebschDividedPowerTopSlices.twoLeafCoefficient_ne_zero`
- `RelativeConicArcs.ClebschFiniteRootRecurrenceBridge.finiteRootInvariant_iff_satisfiesOneDigitRecurrence`
- `RelativeConicArcs.ClebschFiniteRootWeightSlice.finiteRootInvariant_iff_exists_scalar_alternatingBinomial`
- `RelativeConicArcs.ClebschFirstFrobeniusSection.upper_C_sub_B`
- `RelativeConicArcs.ClebschFixedLineRadialTranslation.RadialEvaluationFamily.evaluationSpace_eq_reference`
- `RelativeConicArcs.ClebschFixedLineRadialTranslation.annihilates_hadamardSquare_iff_eq_sheetSignLine_of_noncoalescent`
- `RelativeConicArcs.ClebschFixedLineRadialTranslation.card_nonmatchingNoncoalescentParameters`
- `RelativeConicArcs.ClebschFixedLineRadialTranslation.hadamardSquare_eq_equalSheetSum_of_noncoalescent`
- `RelativeConicArcs.ClebschFixedLineRadialTranslation.nonmatchingNoncoalescentParameters_tradeLine_and_card`
- `RelativeConicArcs.ClebschFixedLineRadialTranslation.outerRadialConstantAt_sub`
- `RelativeConicArcs.ClebschFixedLineRadialTranslation.topConfigurations_first_secondMoments_invariant`
- `RelativeConicArcs.ClebschLucasCoefficientBasis.satisfiesDigitRecurrences_iff_exists_scalar_digitTensorCoefficient`
- `RelativeConicArcs.ClebschLucasPolynomialFactorization.coeff_expandedProduct_digitValue`
- `RelativeConicArcs.ClebschOuterParityInjection.fourWeightConstruction_injective_of_middleDifference`
- `RelativeConicArcs.ClebschOuterParityWeights.odd_weight_eq_q_sub_one_or_one_sub_q`
- `RelativeConicArcs.ClebschPolyhedralInvariantAverages.icosahedral_average_eq_one`
- `RelativeConicArcs.ClebschPolynomialTopSliceDetection.general_top_slice_map_eq_zero`
- `RelativeConicArcs.ClebschProjectiveTradeReduction.kernel_or_split_pullback`
- `RelativeConicArcs.ClebschRankThreeBalancedEndgame.certifiedBalancedSheets_endpoint_and_uniquePartner`
- `RelativeConicArcs.ClebschRegularMatching.leftRegularEquivariant_perfectMatching_iff`
- `RelativeConicArcs.ClebschRootDefect.finiteCoordinate_vanishing_factorization`
- `RelativeConicArcs.HilbertSymmetry.socleDegree_eq_three`
- `RelativeConicArcs.HilbertSymmetry.value_three_eq_one`
- `RelativeConicArcs.HyperplaneSquare.cubicAnnihilator_eq_zero`
