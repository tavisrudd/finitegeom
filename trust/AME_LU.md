# Stabilizer-AME rigidity and local-unitary equivalence: formal boundary

This boundary records the formal development behind absolutely maximally
entangled stabilizer states and their local-unitary rigidity: the length-generic
code and state, exact maximum-distance-separable shortening, marginal
covariance, the arbitrary-arity diagonal-axis theorem, the supported-label
dimension squeeze, linear minimum-support transitions with their
atlas-equivalence relation, the full-Weyl diagonal intertwining criterion, the
local-unitary to local-Clifford terminal over an explicit marginal Weyl
expansion, the unconditional equal-phase MDS--CSS specialization, holonomy
reductions for normal and arbitrary subgroups, projective Clifford finiteness,
and the associated product-unitary topological groups and scalar-phase
quotients.

The exact project-local closure is rooted at
`RelativeConicArcs.Gates.AMELUAggregate`
and consists of:

- `FiniteGeom.Code`
- `ProjectiveCap.PlaneTransitivity`
- `ProjectiveCap.Projective`
- `RelativeConicArcs.AMELU.AutomorphismExactSequence`
- `RelativeConicArcs.AMELU.CSS`
- `RelativeConicArcs.AMELU.Definitions`
- `RelativeConicArcs.AMELU.DiagonalIsoduality`
- `RelativeConicArcs.AMELU.DiagonalTensor`
- `RelativeConicArcs.AMELU.DiagonalTensorEquiv`
- `RelativeConicArcs.AMELU.Dictionary`
- `RelativeConicArcs.AMELU.EncoderTransversal`
- `RelativeConicArcs.AMELU.ExtensionFieldPencil`
- `RelativeConicArcs.AMELU.FourCopyContraction`
- `RelativeConicArcs.AMELU.FourMarginalDiagonal`
- `RelativeConicArcs.AMELU.FourMarginalIntertwining`
- `RelativeConicArcs.AMELU.GenericDefinitions`
- `RelativeConicArcs.AMELU.GenericDiagonalTensor`
- `RelativeConicArcs.AMELU.GenericLURigidity`
- `RelativeConicArcs.AMELU.GenericMDS`
- `RelativeConicArcs.AMELU.GenericMarginal`
- `RelativeConicArcs.AMELU.GenericMarginalCovariance`
- `RelativeConicArcs.AMELU.GenericPartyPermutation`
- `RelativeConicArcs.AMELU.GenericSubsystemWeyl`
- `RelativeConicArcs.AMELU.GenericTensorRigidity`
- `RelativeConicArcs.AMELU.HolonomyCentralizer`
- `RelativeConicArcs.AMELU.LUPencilClassification`
- `RelativeConicArcs.AMELU.LURigidity`
- `RelativeConicArcs.AMELU.LogicalPhase`
- `RelativeConicArcs.AMELU.MDSShortening`
- `RelativeConicArcs.AMELU.MarginalAxisRigidity`
- `RelativeConicArcs.AMELU.MarginalMoment`
- `RelativeConicArcs.AMELU.MarginalWeylExpansion`
- `RelativeConicArcs.AMELU.NonabelianExtensionInvariant`
- `RelativeConicArcs.AMELU.OrderedFourConjugation`
- `RelativeConicArcs.AMELU.PartialTraceCovariance`
- `RelativeConicArcs.AMELU.PartyExtensionSplitting`
- `RelativeConicArcs.AMELU.PartyPermutation`
- `RelativeConicArcs.AMELU.PencilClassification`
- `RelativeConicArcs.AMELU.ProductUnitaryAutomorphismGroup`
- `RelativeConicArcs.AMELU.ProductUnitarySymmetry`
- `RelativeConicArcs.AMELU.ProductUnitarySymmetryTopology`
- `RelativeConicArcs.AMELU.ProjectiveClifford`
- `RelativeConicArcs.AMELU.StabilizerAMERigidity`
- `RelativeConicArcs.AMELU.StabilizerAMESupport`
- `RelativeConicArcs.AMELU.StabilizerDictionary`
- `RelativeConicArcs.AMELU.StateMarginalCovariance`
- `RelativeConicArcs.AMELU.SubsystemConjugation`
- `RelativeConicArcs.AMELU.SubsystemWeylBasis`
- `RelativeConicArcs.AMELU.SyndromeGeometry`
- `RelativeConicArcs.AMELU.TransportDivisor`
- `RelativeConicArcs.AMELU.UnitaryConjugation`
- `RelativeConicArcs.AMELU.WeylBasis`
- `RelativeConicArcs.Arc`
- `RelativeConicArcs.CodingBridge`
- `RelativeConicArcs.Defect`
- `RelativeConicArcs.Gates.AMELUAggregate`
- `RelativeConicArcs.Gates.AMELUDefinitions`
- `RelativeConicArcs.Gates.AMELUDictionary`
- `RelativeConicArcs.Gates.AMELULogicalPhaseFourCopy`
- `RelativeConicArcs.Gates.AMELUMarginalMoment`
- `RelativeConicArcs.Gates.AMELUPencilClassification`
- `RelativeConicArcs.Gates.AMELUStabilizerDictionary`
- `RelativeConicArcs.Gates.AMELUTransportDivisor`
- `RelativeConicArcs.Moments`
- `RelativeConicArcs.Plane`
- `RelativeConicArcs.ProjectiveBridge`
- `RelativeConicArcs.SyndromeGeometry`

## Formal correspondence

An absolutely maximally entangled state is one every sufficiently small marginal
of which is maximally mixed, and the question here is when two such stabilizer
states related by a local unitary are related by a local Clifford operation.

The closure builds the stabilizer dictionary carrying such states to
maximum-distance-separable codes, proves the marginal covariance and shortening
statements that make the correspondence usable, and establishes the diagonal-axis
theorem at arbitrary arity.  It then develops the transition structure: linear
minimum-support transitions, the equivalence relation their atlases generate, and
the criterion under which a full-Weyl diagonal operator intertwines two
realizations.

The rigidity terminal concludes local-Clifford equivalence from local-unitary
equivalence over the explicit marginal Weyl expansion realization, and the
equal-phase MDS--CSS specialization is unconditional.  The holonomy reductions
treat normal and arbitrary subgroups separately, and the finiteness of the
projective Clifford group is proved rather than assumed.

## Trust boundary

Every terminal is a kernel proof, depending only on `propext` and, where
classical reasoning or quotients are used, `Classical.choice` and `Quot.sound`.
The closure uses no project axiom, no unsafe declaration, no admitted proof, and
no native evaluation, and it imports no external certificate data.

The three finite counts the rigidity separator consumes — the unordered marginal
triples, the three-edge stars among them, and the perfect matchings — are
discharged exhaustively by kernel reduction at a raised recursion and heartbeat
allowance, so their values are checked rather than trusted to a compiled
evaluator.

The observed axiom set of every terminal below is contained in `Classical.choice`, `Quot.sound`, `propext`.
Source and candidate bytes are recorded in
`trust/source-manifests/ame_lu.json` and
`trust/manifests/ame_lu.json`.

## Terminals

- `GroupExtension.Splitting.existsUnique_inl_mul_splitting`
- `GroupExtension.Splitting.inl_conj_eq_inv`
- `GroupExtension.Splitting.invertingInvolutionWitness`
- `GroupExtension.Splitting.natCard_middle`
- `GroupExtension.Splitting.semidirectProductEquiv`
- `GroupExtension.Splitting.trivializingCochain_coboundary`
- `GroupExtension.factorSet_associativity`
- `GroupExtension.factorSet_change`
- `GroupExtension.factorSet_trivializable_iff`
- `GroupExtension.factorSet_trivializable_iff_splitting`
- `GroupExtension.outerAction_eq_sectionClass`
- `GroupExtension.sectionAction_mul`
- `RelativeConicArcs.AMELU.AMESupportedSubspaceProfile.erase_sup_erase_eq`
- `RelativeConicArcs.AMELU.AMESupportedSubspaceProfile.minimumSupportSpan_univ_eq_top`
- `RelativeConicArcs.AMELU.AMESupportedSubspaceProfile.space_eq_minimumSupportSpan`
- `RelativeConicArcs.AMELU.AdditiveStabilizerProjector.MinimumSupportAtlasEquivalent.symm`
- `RelativeConicArcs.AMELU.AdditiveStabilizerProjector.MinimumSupportAtlasEquivalent.trans`
- `RelativeConicArcs.AMELU.AdditiveStabilizerProjector.minimumSupportAtlasEquivalent_refl`
- `RelativeConicArcs.AMELU.AdditiveStabilizerProjector.minimumSupportSpan_univ_eq_top`
- `RelativeConicArcs.AMELU.AdditiveStabilizerProjector.minimumSupportTransition_apply_supportedLabel`
- `RelativeConicArcs.AMELU.AdditiveStabilizerProjector.reindexedMarginalArray_eq_diagonal`
- `RelativeConicArcs.AMELU.AdditiveStabilizerProjector.supportedLocalProjection_bijective`
- `RelativeConicArcs.AMELU.AdditiveStabilizerState.reindexedMarginalArray_eq_diagonal`
- `RelativeConicArcs.AMELU.GenericDiagonalDuality.diagonalMultiplierBilinForm_eq_zero`
- `RelativeConicArcs.AMELU.HolonomyAtlas.compatibleGaugeEquivHolonomyCentralizer`
- `RelativeConicArcs.AMELU.HolonomyAtlas.compatibleGaugesInNormalSubgroupEquiv`
- `RelativeConicArcs.AMELU.HolonomyAtlas.compatibleGaugesInSubgroupEquiv`
- `RelativeConicArcs.AMELU.HolonomyAtlas.transition_intertwines_iff_commute_holonomy`
- `RelativeConicArcs.AMELU.IsCliffordMatrix.conjTranspose`
- `RelativeConicArcs.AMELU.IsCliffordMatrix.conjugate`
- `RelativeConicArcs.AMELU.IsCliffordMatrix.transpose`
- `RelativeConicArcs.AMELU.IsUnitaryMatrix.transpose`
- `RelativeConicArcs.AMELU.TransportCycleCoverInputs.axial_det_factor`
- `RelativeConicArcs.AMELU.TransportCycleCoverInputs.negativeSigned_det_factor`
- `RelativeConicArcs.AMELU.TransportCycleCoverInputs.positiveSigned_det_factor`
- `RelativeConicArcs.AMELU.TransportOrbitGeometryInputs.card_axial_union_negative`
- `RelativeConicArcs.AMELU.TransportOrbitGeometryInputs.card_axial_union_positive`
- `RelativeConicArcs.AMELU.TransportRankBridgeInputs.matchingRank_eq_twentyOne_of_transportRank_eq_nine`
- `RelativeConicArcs.AMELU.TransportRankBridgeInputs.matchingRank_eq_twenty_of_transportRank_eq_eight`
- `RelativeConicArcs.AMELU.additiveStabilizer_all_isClifford_of_localAction`
- `RelativeConicArcs.AMELU.additiveStabilizer_all_isClifford_of_permutedLocalAction`
- `RelativeConicArcs.AMELU.additiveStabilizer_locallyUnitaryEquivalent_implies_locallyCliffordEquivalent`
- `RelativeConicArcs.AMELU.additiveStabilizer_marginal_party_isClifford`
- `RelativeConicArcs.AMELU.additiveStabilizer_reindexedMarginalArray_intertwining`
- `RelativeConicArcs.AMELU.admitted_nonGRS_map_iff`
- `RelativeConicArcs.AMELU.admitted_nonGRS_pencil_classified_by_z`
- `RelativeConicArcs.AMELU.affineSpecialLinearOrder_seven`
- `RelativeConicArcs.AMELU.all_isClifford_of_fullWeylDiagonal_intertwining`
- `RelativeConicArcs.AMELU.axialCyclePolynomial_factor`
- `RelativeConicArcs.AMELU.card_marginalStars`
- `RelativeConicArcs.AMELU.card_marginalTriples`
- `RelativeConicArcs.AMELU.card_perfectMatchings`
- `RelativeConicArcs.AMELU.cliffordScalarSubgroup_isClosed`
- `RelativeConicArcs.AMELU.connectedComponent_genericIdentityAutomorphism_eq_scalarPhases`
- `RelativeConicArcs.AMELU.connectedComponent_genericPermutedIdentityAutomorphism_eq_scalarPhases`
- `RelativeConicArcs.AMELU.connectedComponent_genericPermutedProductUnitaryAutomorphism_eq_scalarCoset`
- `RelativeConicArcs.AMELU.connectedComponent_genericProductUnitaryAutomorphism_eq_scalarCoset`
- `RelativeConicArcs.AMELU.contractionMatchingRank_normalizeContractionPattern`
- `RelativeConicArcs.AMELU.contractionRankOrbitSum_permuteContractionPattern`
- `RelativeConicArcs.AMELU.coordinateAxes_preserved_of_diagonalTensor_equivalent`
- `RelativeConicArcs.AMELU.coordinateAxes_reflected_by_linearEquiv`
- `RelativeConicArcs.AMELU.cssLabelSpace_isPauliLagrangian`
- `RelativeConicArcs.AMELU.diagonalDualityMultiplierSpace_finrank_eq_zero_or_one`
- `RelativeConicArcs.AMELU.diagonalDualityNullity_fixedPartyProjectiveTransversal_dichotomy`
- `RelativeConicArcs.AMELU.diagonalDuality_existsUnique_unit_smul_eq`
- `RelativeConicArcs.AMELU.diagonalDuality_multiplier_ratio_eq`
- `RelativeConicArcs.AMELU.diagonalMultiplierSpace_finrank_le_one`
- `RelativeConicArcs.AMELU.diagonalMultiplierSpace_self_eq_span_one`
- `RelativeConicArcs.AMELU.diagonalMultiplier_ne_zero_at`
- `RelativeConicArcs.AMELU.diagonalTensorFlattening_pure_iff_coordinateAxis`
- `RelativeConicArcs.AMELU.diagonallyIsodual_fixedPartyProjectiveTransversal_dichotomy`
- `RelativeConicArcs.AMELU.encoderConversion_inverseTranspose_and_physical_isClifford`
- `RelativeConicArcs.AMELU.encoderConversion_inverseTranspose_chosenLeg`
- `RelativeConicArcs.AMELU.encoderConversion_logical_and_physical_isClifford`
- `RelativeConicArcs.AMELU.equalPhaseState_hasMinimalComputationalSupport`
- `RelativeConicArcs.AMELU.existsUnique_arcSyndrome_supported_on_three`
- `RelativeConicArcs.AMELU.existsUnique_arcSyndrome_weight_three_on_support`
- `RelativeConicArcs.AMELU.exists_pauliLabel_pairing_eq_dual`
- `RelativeConicArcs.AMELU.familyFactor_coordinateAxes_of_diagonal_equivalent`
- `RelativeConicArcs.AMELU.fixedPartyKernel_eq_specialLinear_or_splitTorus`
- `RelativeConicArcs.AMELU.fixedPartyProjectiveTransversal_eq_affineSpecialLinear_or_splitTorus`
- `RelativeConicArcs.AMELU.genericAutomorphismIntrinsicSignatureContinuousHom`
- `RelativeConicArcs.AMELU.genericAutomorphismIntrinsicSignatureHom_ker`
- `RelativeConicArcs.AMELU.genericCSSLabel_lowerDualityShear`
- `RelativeConicArcs.AMELU.genericCSSLabel_upperDualityShear`
- `RelativeConicArcs.AMELU.genericDiagonalDualityOfMultiplier`
- `RelativeConicArcs.AMELU.genericEqualPhaseState_three`
- `RelativeConicArcs.AMELU.genericLocallyUnitaryEquivalent_equalPhaseState_implies_genericLocallyCliffordEquivalent`
- `RelativeConicArcs.AMELU.genericLocallyUnitaryEquivalent_three`
- `RelativeConicArcs.AMELU.genericMarginalWeylCoefficient_equalPhaseState_cases`
- `RelativeConicArcs.AMELU.genericMarginalWeylCoordinates_eq_of_localAction_eq`
- `RelativeConicArcs.AMELU.genericPartyPermutationExtension_splits_iff`
- `RelativeConicArcs.AMELU.genericPartyPermutationFactorSet_associativity`
- `RelativeConicArcs.AMELU.genericPartyPermutationFactorSet_change`
- `RelativeConicArcs.AMELU.genericPartyPermutationFactorSet_trivializable_iff_splits`
- `RelativeConicArcs.AMELU.genericPartyPermutationGroupExtensionSplitting`
- `RelativeConicArcs.AMELU.genericPartyPermutationSemidirectProductEquiv`
- `RelativeConicArcs.AMELU.genericPartyPermutationTrivializingCochain_coboundary`
- `RelativeConicArcs.AMELU.genericPartyPermutation_natCard`
- `RelativeConicArcs.AMELU.genericPermutedAutomorphismIntrinsicSignatureContinuousHom`
- `RelativeConicArcs.AMELU.genericPermutedAutomorphismIntrinsicSignatureHom_ker`
- `RelativeConicArcs.AMELU.genericPermutedProductUnitaryAutomorphism_finite_component_cover`
- `RelativeConicArcs.AMELU.genericPermutedProductUnitaryContinuousProjectivization`
- `RelativeConicArcs.AMELU.genericPermutedScalarPhaseContinuousInclusion`
- `RelativeConicArcs.AMELU.genericPermutedScalarPhaseSubgroup_isClosed`
- `RelativeConicArcs.AMELU.genericPermutedScalarPhase_projectivization_mulExact`
- `RelativeConicArcs.AMELU.genericProductUnitaryAutomorphism_finite_component_cover`
- `RelativeConicArcs.AMELU.genericProductUnitaryContinuousProjectivization`
- `RelativeConicArcs.AMELU.genericReindexedMarginalArray_eq_diagonal`
- `RelativeConicArcs.AMELU.genericScalarPhaseContinuousInclusion`
- `RelativeConicArcs.AMELU.genericScalarPhaseSubgroup_isClosed`
- `RelativeConicArcs.AMELU.genericScalarPhase_projectivization_mulExact`
- `RelativeConicArcs.AMELU.genericShorteningGenerator`
- `RelativeConicArcs.AMELU.genericShorteningLocalLabel_bijective`
- `RelativeConicArcs.AMELU.generic_all_isClifford_of_localAction_equalPhaseState`
- `RelativeConicArcs.AMELU.generic_all_isClifford_of_permutedLocalAction_equalPhaseState`
- `RelativeConicArcs.AMELU.grs_projectiveTransversal_eq_affineSpecialLinear`
- `RelativeConicArcs.AMELU.intrinsicCliffordAdjointSignature_discrete`
- `RelativeConicArcs.AMELU.intrinsicCliffordAdjointSignature_t2Space`
- `RelativeConicArcs.AMELU.inverseTransposeWitness_of_isUnitaryMatrix`
- `RelativeConicArcs.AMELU.isAME_equalPhaseState_arcKernel`
- `RelativeConicArcs.AMELU.isAME_equalPhaseState_iff_isMDSCode634`
- `RelativeConicArcs.AMELU.isDiagonallyIsodual_iff_finrank_eq_one`
- `RelativeConicArcs.AMELU.isMDSCode2m_dualCode`
- `RelativeConicArcs.AMELU.isMDSCode2m_iff_projection_bijective`
- `RelativeConicArcs.AMELU.isMDSCode2m_oneLegQuantumMDSParameters`
- `RelativeConicArcs.AMELU.isMDSCode634_arcKernel`
- `RelativeConicArcs.AMELU.locallyUnitaryEquivalent_admitted_nonGRS_pencil_iff_pencilZ_eq`
- `RelativeConicArcs.AMELU.locallyUnitaryEquivalent_admitted_nonGRS_pencil_iff_pencilZ_eq_from_generic`
- `RelativeConicArcs.AMELU.locallyUnitaryEquivalent_equalPhaseState_implies_locallyCliffordEquivalent`
- `RelativeConicArcs.AMELU.locallyUnitaryEquivalent_equalPhaseState_implies_locallyCliffordEquivalent_from_generic`
- `RelativeConicArcs.AMELU.map_pencilA`
- `RelativeConicArcs.AMELU.map_pencilB`
- `RelativeConicArcs.AMELU.map_pencilGRSQuartic`
- `RelativeConicArcs.AMELU.map_pencilZ`
- `RelativeConicArcs.AMELU.mem_cssSupportedLabelSpace_iff_support_subset`
- `RelativeConicArcs.AMELU.negativeSignedCyclePolynomial_factor`
- `RelativeConicArcs.AMELU.not_isDiagonallyIsodual_iff_finrank_eq_zero`
- `RelativeConicArcs.AMELU.not_locallyUnitaryEquivalent_of_ten_vs_atMostSix_concurrences`
- `RelativeConicArcs.AMELU.offDiagonalBlock_fixedPartyProjectiveTransversal_eq_affineSpecialLinear`
- `RelativeConicArcs.AMELU.oneLegQuantumMDSParameters_singletonEquality`
- `RelativeConicArcs.AMELU.pauliSymplecticToDual_injective`
- `RelativeConicArcs.AMELU.pencilFrameRatio_crossDifference`
- `RelativeConicArcs.AMELU.pencilFrameRatio_eq_iff`
- `RelativeConicArcs.AMELU.pencilGalePairing_multiplier`
- `RelativeConicArcs.AMELU.pencilGalePairing_multiplier_zero_iff`
- `RelativeConicArcs.AMELU.pencilZ_eq_iff_samePencilYOrbit`
- `RelativeConicArcs.AMELU.positiveSignedCyclePolynomial_factor`
- `RelativeConicArcs.AMELU.projectiveClifford_finite`
- `RelativeConicArcs.AMELU.projectiveFixedPartyToPermutedAutomorphismHom_injective`
- `RelativeConicArcs.AMELU.projectiveFixedParty_permutationProjection_mulExact`
- `RelativeConicArcs.AMELU.projectiveGenericAutomorphismEquivRealizedAdjointSignature`
- `RelativeConicArcs.AMELU.projectiveGenericPermutedAutomorphismEquivRealizedAdjointSignature`
- `RelativeConicArcs.AMELU.projectiveGenericPermutedProductUnitaryAutomorphismGroup_discrete`
- `RelativeConicArcs.AMELU.projectiveGenericPermutedProductUnitaryAutomorphismGroup_finite`
- `RelativeConicArcs.AMELU.projectiveGenericPermutedProductUnitaryAutomorphism_finite`
- `RelativeConicArcs.AMELU.projectiveGenericProductUnitaryAutomorphismGroup_discrete`
- `RelativeConicArcs.AMELU.projectiveGenericProductUnitaryAutomorphismGroup_finite`
- `RelativeConicArcs.AMELU.projectiveGenericProductUnitaryAutomorphism_finite`
- `RelativeConicArcs.AMELU.projectivelyEquivalent_equalPhaseState_locallyCliffordEquivalent`
- `RelativeConicArcs.AMELU.q13_zFour_not_locallyUnitaryEquivalent_zTwelve`
- `RelativeConicArcs.AMELU.rankFourMultiplicity_eq_sixty_add_concurrency`
- `RelativeConicArcs.AMELU.reducedTransportDivisor_eq_zero_iff_axial_of_charSeven`
- `RelativeConicArcs.AMELU.reducedTransportDivisor_eq_zero_iff_three_factors`
- `RelativeConicArcs.AMELU.reducedTransportDivisor_eq_zero_iff_z`
- `RelativeConicArcs.AMELU.signedTransportFactor_sub_two_mul_axial`
- `RelativeConicArcs.AMELU.splitTorusWeylBlock_isSpecialLinear`
- `RelativeConicArcs.AMELU.splitTorusWeylBlock_mul_self`
- `RelativeConicArcs.AMELU.splitTorusWeylBlock_mul_splitTorusBlock`
- `RelativeConicArcs.AMELU.stabilizerAME_finrank_ker_eq_local`
- `RelativeConicArcs.AMELU.stabilizerAME_halfParty_kernelToLocal_bijective_of_finrank`
- `RelativeConicArcs.AMELU.stabilizerAME_kernelToLocal_bijective`
- `RelativeConicArcs.AMELU.stabilizerKernelLocalProjection_existsUnique`
- `RelativeConicArcs.AMELU.stabilizerKernelLocalProjection_injective_of_supportAtMost`
- `RelativeConicArcs.AMELU.stateInnerProduct_translatedEqualPhaseState_eq_zero`
- `RelativeConicArcs.AMELU.supportedArcSyndrome_bijective_of_card_three`
- `RelativeConicArcs.AMELU.tensorWeylAction_X_equalPhaseState_eq_translated`
- `RelativeConicArcs.AMELU.tensorWeylAction_Z_translatedEqualPhaseState`
- `RelativeConicArcs.AMELU.tensorWeylAction_equalPhaseState_of_mem_cssLabelSpace`
- `RelativeConicArcs.AMELU.translatedEqualPhaseState_eq_iff`
- `RelativeConicArcs.AMELU.twistedPencilGaleDivisor_refl`
- `RelativeConicArcs.AMELU.twistedPencil_sectors_disjoint`
