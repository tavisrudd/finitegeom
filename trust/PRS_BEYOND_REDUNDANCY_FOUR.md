# Projective Reed--Solomon syndromes beyond redundancy four: formal boundary

This boundary is the paper-facing import closure for the formal results adopted
by the manuscript treating redundancies five through seven of projective
Reed--Solomon codes.

It carries the shared Hankel-kernel and coding interfaces, the redundancy-five
algebra with its finite-table arithmetic, coherent polar contraction, the
recursive contained-component and redundancy-six and seven synthesis interfaces,
the stable-component coordinate algebra with the dense irreducible-component
selection theorem, and the uniform iteration-budget and covering-radius
threshold bridges.

The exact project-local closure is rooted at
`RelativeConicArcs.Gates.PRSBeyondRedundancyFour`
and consists of:

- `RelativeConicArcs.Gates.PRSBeyondRedundancyFour`
- `RelativeConicArcs.Gates.PRSFoundation`
- `RelativeConicArcs.Gates.PRSPolarInductionRedundancySixSeven`
- `RelativeConicArcs.Gates.PRSRedundancyFive`
- `RelativeConicArcs.Gates.PRSStableComponents`
- `RelativeConicArcs.PRSContraction`
- `RelativeConicArcs.PRSFoundation`
- `RelativeConicArcs.PRSPolarInduction`
- `RelativeConicArcs.PRSRedundancyFive`
- `RelativeConicArcs.PRSRedundancyFiveCertificate`
- `RelativeConicArcs.PRSRedundancyFiveCertified`
- `RelativeConicArcs.PRSRedundancySixSeven`
- `RelativeConicArcs.PRSRedundancySixSevenCertificate`
- `RelativeConicArcs.PRSSquarefreeMarkerDensity`
- `RelativeConicArcs.PRSStableComponents`
- `RelativeConicArcs.PRSUniformCoveringRadius`

## Formal correspondence

A projective Reed--Solomon code's deep holes are described by syndromes, and the
covering radius question at a given redundancy asks how far a word can sit from
the code.  The closure develops that question above redundancy four.

It establishes the Hankel-kernel interface the syndrome algebra runs through,
the redundancy-five algebra and the finite-table arithmetic supporting it, and
the coherent polar contraction that drives the induction.  On top of those it
states the recursive contained-component interface and the synthesis results at
redundancies six and seven, develops the stable-component coordinate algebra,
proves the dense irreducible-component selection theorem, and bridges the
uniform iteration budget to the covering-radius threshold.

The synthesis theorems are conditional, and what they assume is deliberately
explicit.  Concrete projective-coordinate dictionaries, the Seroussi--Roth
nonextendability theorem, Dür's equivalence between completeness and radius,
geometric marker-to-row-space identifications and their component ledgers,
rational-point bounds, genuine projective and semilinear group actions, and the
semantic validation of externally generated finite records all remain explicit
hypotheses or structure fields rather than facts this closure establishes.  A
reader must supply them to draw the unconditional statements.

## Trust boundary

Every terminal is a kernel proof.  The closure imports no project-local axiom,
generated evaluator, native decision procedure, or external oracle, and contains
no unsafe declaration or admitted proof.  The assumptions listed above are
carried as hypotheses and structure fields, so the axiom audit shows them
nowhere; a consumer reads them from the statements themselves.

The observed axiom set of every terminal below is contained in `Classical.choice`, `Quot.sound`, `propext`.
Source and candidate bytes are recorded in
`trust/source-manifests/prs_beyond_redundancy_four.json` and
`trust/manifests/prs_beyond_redundancy_four.json`.

## Terminals

- `RelativeConicArcs.PRSFoundation.CoveringRadiusInput.deep_iff_splitFree`
- `RelativeConicArcs.PRSFoundation.HankelKernelDictionary.not_splitFree_iff_not_not_has_kernel_member`
- `RelativeConicArcs.PRSFoundation.HankelKernelDictionary.not_splitFree_of_kernel_member`
- `RelativeConicArcs.PRSFoundation.OrbitExhaustionInput.splitFree_iff_mem_persistent`
- `RelativeConicArcs.PRSFoundation.PersistentFamilies.persistent_card`
- `RelativeConicArcs.PRSFoundation.deep_iff_mem_persistent_of_compatible`
- `RelativeConicArcs.PRSFoundation.deep_iff_mem_persistent_of_exceptional_shallow`
- `RelativeConicArcs.PRSFoundation.exceptional_not_deep_of_geometric_kernel_member`
- `RelativeConicArcs.PRSPolarInduction.CoherentPolarInput.splitFree_implies_persistent_or_modular`
- `RelativeConicArcs.PRSPolarInduction.PointedKernelLift.lift_splitSquarefreeKernelMember`
- `RelativeConicArcs.PRSPolarInduction.RecursiveContainedInput.bad_implies_persistent_or_modular`
- `RelativeConicArcs.PRSPolarInduction.fifthPower_sigmaInversionOrbitCount`
- `RelativeConicArcs.PRSPolarInduction.iteratedProjectiveSequenceContraction_map`
- `RelativeConicArcs.PRSPolarInduction.mem_modularContractionKernel_iff`
- `RelativeConicArcs.PRSPolarInduction.sequenceContraction_agrees_with_finite`
- `RelativeConicArcs.PRSPolarInduction.tangentTranslate_of_cast_eq_zero`
- `RelativeConicArcs.PRSPolarInduction.tangentTranslate_surjective`
- `RelativeConicArcs.PRSRedundancyFive.FamilyData.deep_card_characteristicThree`
- `RelativeConicArcs.PRSRedundancyFive.FamilyData.deep_card_osculatingConjugate`
- `RelativeConicArcs.PRSRedundancyFive.FamilyData.deep_card_osculatingRational`
- `RelativeConicArcs.PRSRedundancyFive.FamilyData.family_arithmetic`
- `RelativeConicArcs.PRSRedundancyFive.affine_pair_infinity_span_product_mem_hankelKernel`
- `RelativeConicArcs.PRSRedundancyFive.affine_span_product_mem_hankelKernel`
- `RelativeConicArcs.PRSRedundancyFive.inHankelKernel_scale_iff`
- `RelativeConicArcs.PRSRedundancyFive.isSplitFree_iff_not_liesInThreeColumnSpan`
- `RelativeConicArcs.PRSRedundancyFive.isSplitFree_scale_iff`
- `RelativeConicArcs.PRSRedundancyFive.redundancyFiveSynthesis`
- `RelativeConicArcs.PRSRedundancyFiveCertificate.certified_comparison_band_has_no_sporadic`
- `RelativeConicArcs.PRSRedundancyFiveCertificate.certified_orbit_summaries_agree_with_sporadic_records`
- `RelativeConicArcs.PRSRedundancyFiveCertificate.sporadic_field_orders`
- `RelativeConicArcs.PRSRedundancyFiveCertificate.sporadic_frobenius_target`
- `RelativeConicArcs.PRSRedundancyFiveCertificate.sporadic_histogram_total`
- `RelativeConicArcs.PRSRedundancyFiveCertificate.sporadic_orbit_counts`
- `RelativeConicArcs.PRSRedundancyFiveCertificate.sporadic_orbit_stabilizer`
- `RelativeConicArcs.PRSRedundancyFiveCertificate.sporadic_point_counts`
- `RelativeConicArcs.PRSRedundancyFiveCertified.redundancyFiveSynthesisWithCertificate`
- `RelativeConicArcs.PRSRedundancySixSeven.PersistentModularFamilyData.classified_card_doubled`
- `RelativeConicArcs.PRSRedundancySixSeven.RedundancySixOrbitArithmetic.orbit_count_pairs`
- `RelativeConicArcs.PRSRedundancySixSeven.redundancySevenAllFieldSynthesis`
- `RelativeConicArcs.PRSRedundancySixSeven.redundancySevenHighFieldSynthesis`
- `RelativeConicArcs.PRSRedundancySixSeven.redundancySixAllFieldSynthesis`
- `RelativeConicArcs.PRSRedundancySixSeven.redundancySixHighFieldSynthesis`
- `RelativeConicArcs.PRSRedundancySixSevenCertificate.redundancySeven_count_exhaustion`
- `RelativeConicArcs.PRSRedundancySixSevenCertificate.redundancySix_count_exhaustion`
- `RelativeConicArcs.PRSSquarefreeMarkerDensity.eq_zero_of_eval_eq_zero_on_injective`
- `RelativeConicArcs.PRSSquarefreeMarkerDensity.eq_zero_of_splitCoefficientPullback_eval_eq_zero_on_injective`
- `RelativeConicArcs.PRSSquarefreeMarkerDensity.splitCoefficientPullback_injective`
- `RelativeConicArcs.PRSStableComponents.ContainedRowSpaceData.exists_component_containing_rowSpace`
- `RelativeConicArcs.PRSStableComponents.ContainedRowSpaceData.rowSpace_subset_badCarrier`
- `RelativeConicArcs.PRSStableComponents.RecursiveContainedGeometryInput.bad_implies_persistent_or_modular`
- `RelativeConicArcs.PRSStableComponents.RecursiveContainedGeometryInput.recursiveStep`
- `RelativeConicArcs.PRSStableComponents.RecursiveContainedGeometryInput.toRecursiveContainedInput`
- `RelativeConicArcs.PRSStableComponents.antiInvariantFactor_plucker`
- `RelativeConicArcs.PRSStableComponents.coherentFano_first_hankelMinor`
- `RelativeConicArcs.PRSStableComponents.coherentFano_fourth_hankelMinor`
- `RelativeConicArcs.PRSStableComponents.coherentFano_second_hankelMinor`
- `RelativeConicArcs.PRSStableComponents.coherentFano_third_hankelMinor`
- `RelativeConicArcs.PRSStableComponents.cyclicPlaneCatalecticant_blocks_cover`
- `RelativeConicArcs.PRSStableComponents.cyclicPlaneCatalecticant_no_nonzero_coefficient`
- `RelativeConicArcs.PRSStableComponents.exchangedFactor_plucker`
- `RelativeConicArcs.PRSStableComponents.mem_modularContractionKernel_prod_iff`
- `RelativeConicArcs.PRSStableComponents.symmetricFactor_plucker`
- `RelativeConicArcs.PRSUniformCoveringRadius.SeroussiRothDuerRadiusInput.radiusRange_of_externalSeroussiRothDuer`
- `RelativeConicArcs.PRSUniformCoveringRadius.SeroussiRothDuerRadiusInput.radiusRange_six_eight_of_externalSeroussiRothDuer`
- `RelativeConicArcs.PRSUniformCoveringRadius.UniformIteratedPackageInput.packages_fit_uniform_threshold`
- `RelativeConicArcs.PRSUniformCoveringRadius.bottomCurveDeletionBudget_eq`
- `RelativeConicArcs.PRSUniformCoveringRadius.deep_iff_splitFree_of_externalSeroussiRothDuer_uniformTransverseThreshold`
- `RelativeConicArcs.PRSUniformCoveringRadius.exactLinearFlagParameterBudget_lt_uniformParameterBudget`
- `RelativeConicArcs.PRSUniformCoveringRadius.exactLinearGraphDeletionBudget_eq`
- `RelativeConicArcs.PRSUniformCoveringRadius.exactLinearGraphDeletionBudget_lt_fieldOrder_add_one`
- `RelativeConicArcs.PRSUniformCoveringRadius.intermediateParameterBudget_lt_uniformParameterBudget`
- `RelativeConicArcs.PRSUniformCoveringRadius.seroussiRothDimensionRange_of_uniformTransverseThreshold`
- `RelativeConicArcs.PRSUniformCoveringRadius.two_mul_sub_three_le_uniformTransverseThreshold`
- `RelativeConicArcs.PRSUniformCoveringRadius.uniformParameterBudget_lt_fieldOrder_add_one`
