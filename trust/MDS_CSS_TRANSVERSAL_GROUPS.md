# Diagonal isoduality and transversal Clifford groups of MDS--CSS codes: formal boundary

This boundary records the formal artifact accompanying Tavis Rudd, *Diagonal Isoduality
and Transversal Clifford Groups of MDS--CSS Codes* (DOI
10.5281/zenodo.21766797).  Its scope is exactly that manuscript; this artifact
paper on local-unitary rigidity and quantitative rounding for stabilizer
absolutely maximally entangled states keeps its own separate boundary.

The exact project-local closure is rooted at
`RelativeConicArcs.Gates.MDSCSSTransversalGeometry`
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
- `RelativeConicArcs.Gates.AMELUDefinitions`
- `RelativeConicArcs.Gates.AMELUDictionary`
- `RelativeConicArcs.Gates.AMELUExtensionFieldPencil`
- `RelativeConicArcs.Gates.AMELULogicalPhaseFourCopy`
- `RelativeConicArcs.Gates.AMELUMarginalMoment`
- `RelativeConicArcs.Gates.AMELUPartyExtensionSplitting`
- `RelativeConicArcs.Gates.AMELUPencilClassification`
- `RelativeConicArcs.Gates.AMELUStabilizerDictionary`
- `RelativeConicArcs.Gates.AMELUTransportDivisor`
- `RelativeConicArcs.Gates.MDSCSSTransversalGeometry`
- `RelativeConicArcs.Moments`
- `RelativeConicArcs.Plane`
- `RelativeConicArcs.ProjectiveBridge`
- `RelativeConicArcs.SyndromeGeometry`

## Formal correspondence

The exported closure proves the dictionary between ordered six-arcs in a
projective plane over a finite field, exact `[6,3,4]` maximum-distance-separable
codes, equal-phase Calderbank--Shor--Steane states, and the absolutely
maximally entangled property, ending in the equivalence between that property
and the code being an exact `[6,3,4]` code.  It proves the stabilizer
dictionary: the tensor Weyl action of the label group `C × Cᗮ`, its Lagrangian
property for the trace-symplectic form, the exact support criterion, minimality
of the computational support, and the realization of every linear character on
a Pauli-label subspace by symplectic pairing with an ambient label.  For a
linear `[2m,m,m+1]` code over a finite field it proves that the space of
diagonal multipliers carrying the code to its dual has dimension zero or one,
that a nonzero multiplier has full support, and that the witness is unique up
to a unit scalar.  It proves the coset and syndrome geometry of translated
equal-phase states, the algebraic pencil quotient and its four-branch
reduction, the Frobenius-sector divisors of the twisted pencil with their
disjointness and field-automorphism equivariance, the marginal-moment algebra,
the split-torus Weyl block relations, the cycle-polynomial factorizations of
the transport divisor and their reduction to `(z-2)(9z-4)`, and the abstract
consequences of a realized party-permutation extension.

Several exported terminals are hypothesis-explicit interfaces: the exact
fixed-party affine special-linear or split-torus carrier and its isodual and
nullity dichotomies, the projective and local-Clifford classification of the
admitted non-generalized-Reed--Solomon pencil and its local-unitary
consequence, the fixed-party logical-phase kernel, the marginal and four-copy
separators, and the transport determinant, rank, and orbit-geometry bridges.
Each derives its conclusion from a structure whose fields state geometric
propagation, orbit-recognition, or finite-certificate facts that the closure
does not prove.

This formal artifact does not prove the arbitrary-additive stabilizer rigidity
theorem, the transversal Clifford no-go, the Pauli phase-correction lemma, or
the minimum-support atlas; the manuscript cites those from its companion paper.
The finite ranks, orbit counts, and party-extension complements consumed by the
interfaces above are established by exact certificate replays distributed with
the manuscript rather than inside this closure.

## Trust boundary

Three six-party graph cardinalities — the triple, star, and perfect-matching
counts — are discharged by exhaustive native evaluation and therefore expose
declaration-local implementation axioms of the pinned toolchain; the rank-four
multiplicity identity and the marginal-moment separator are proved from the
star count and inherit its evaluation axiom.  Every other exported terminal is
checked by kernel reduction and depends on no more than propositional
extensionality, choice, and quotient soundness.  The closure contains no
generated certificate, imported external data, user axiom, unsafe declaration,
or admitted proof.

The observed axiom set of every terminal below is contained in `Classical.choice`, `Quot.sound`, `RelativeConicArcs.AMELU.card_marginalStars._native.native_decide.ax_1_1`, `RelativeConicArcs.AMELU.card_marginalTriples._native.native_decide.ax_1_1`, `RelativeConicArcs.AMELU.card_perfectMatchings._native.native_decide.ax_1_1`, `propext`.
Source and candidate bytes are recorded in
`trust/source-manifests/mds_css_transversal_groups.json` and
`trust/manifests/mds_css_transversal_groups.json`.

## Terminals

- `GroupExtension.Splitting.semidirectProductEquiv`
- `GroupExtension.factorSet_change`
- `GroupExtension.factorSet_trivializable_iff_splitting`
- `RelativeConicArcs.AMELU.GenericDiagonalDuality.diagonalMultiplierBilinForm_eq_zero`
- `RelativeConicArcs.AMELU.TransportCycleCoverInputs.axial_det_factor`
- `RelativeConicArcs.AMELU.TransportCycleCoverInputs.negativeSigned_det_factor`
- `RelativeConicArcs.AMELU.TransportCycleCoverInputs.positiveSigned_det_factor`
- `RelativeConicArcs.AMELU.TransportOrbitGeometryInputs.card_axial_union_negative`
- `RelativeConicArcs.AMELU.TransportOrbitGeometryInputs.card_axial_union_positive`
- `RelativeConicArcs.AMELU.TransportRankBridgeInputs.matchingRank_eq_twentyOne_of_transportRank_eq_nine`
- `RelativeConicArcs.AMELU.TransportRankBridgeInputs.matchingRank_eq_twenty_of_transportRank_eq_eight`
- `RelativeConicArcs.AMELU.admitted_nonGRS_map_iff`
- `RelativeConicArcs.AMELU.admitted_nonGRS_pencil_classified_by_z`
- `RelativeConicArcs.AMELU.affineSpecialLinearOrder_seven`
- `RelativeConicArcs.AMELU.axialCyclePolynomial_factor`
- `RelativeConicArcs.AMELU.card_marginalStars`
- `RelativeConicArcs.AMELU.card_marginalTriples`
- `RelativeConicArcs.AMELU.card_perfectMatchings`
- `RelativeConicArcs.AMELU.contractionMatchingRank_normalizeContractionPattern`
- `RelativeConicArcs.AMELU.contractionRankOrbitSum_permuteContractionPattern`
- `RelativeConicArcs.AMELU.cssLabelSpace_isPauliLagrangian`
- `RelativeConicArcs.AMELU.diagonalDualityMultiplierSpace_finrank_eq_zero_or_one`
- `RelativeConicArcs.AMELU.diagonalDualityNullity_fixedPartyProjectiveTransversal_dichotomy`
- `RelativeConicArcs.AMELU.diagonalDuality_existsUnique_unit_smul_eq`
- `RelativeConicArcs.AMELU.diagonalDuality_multiplier_ratio_eq`
- `RelativeConicArcs.AMELU.diagonalMultiplierSpace_finrank_le_one`
- `RelativeConicArcs.AMELU.diagonalMultiplierSpace_self_eq_span_one`
- `RelativeConicArcs.AMELU.diagonalMultiplier_ne_zero_at`
- `RelativeConicArcs.AMELU.diagonallyIsodual_fixedPartyProjectiveTransversal_dichotomy`
- `RelativeConicArcs.AMELU.encoderConversion_inverseTranspose_and_physical_isClifford`
- `RelativeConicArcs.AMELU.encoderConversion_inverseTranspose_chosenLeg`
- `RelativeConicArcs.AMELU.encoderConversion_logical_and_physical_isClifford`
- `RelativeConicArcs.AMELU.equalPhaseState_hasMinimalComputationalSupport`
- `RelativeConicArcs.AMELU.existsUnique_arcSyndrome_supported_on_three`
- `RelativeConicArcs.AMELU.existsUnique_arcSyndrome_weight_three_on_support`
- `RelativeConicArcs.AMELU.exists_pauliLabel_pairing_eq_dual`
- `RelativeConicArcs.AMELU.fixedPartyKernel_eq_specialLinear_or_splitTorus`
- `RelativeConicArcs.AMELU.fixedPartyProjectiveTransversal_eq_affineSpecialLinear_or_splitTorus`
- `RelativeConicArcs.AMELU.genericCSSLabel_lowerDualityShear`
- `RelativeConicArcs.AMELU.genericCSSLabel_upperDualityShear`
- `RelativeConicArcs.AMELU.genericDiagonalDualityOfMultiplier`
- `RelativeConicArcs.AMELU.genericLocallyUnitaryEquivalent_equalPhaseState_implies_genericLocallyCliffordEquivalent`
- `RelativeConicArcs.AMELU.genericPartyPermutationExtension_splits_iff`
- `RelativeConicArcs.AMELU.genericPartyPermutationFactorSet_associativity`
- `RelativeConicArcs.AMELU.genericPartyPermutationFactorSet_change`
- `RelativeConicArcs.AMELU.genericPartyPermutationFactorSet_trivializable_iff_splits`
- `RelativeConicArcs.AMELU.genericPartyPermutationGroupExtensionSplitting`
- `RelativeConicArcs.AMELU.genericPartyPermutationSemidirectProductEquiv`
- `RelativeConicArcs.AMELU.genericPartyPermutation_natCard`
- `RelativeConicArcs.AMELU.grs_projectiveTransversal_eq_affineSpecialLinear`
- `RelativeConicArcs.AMELU.isAME_equalPhaseState_arcKernel`
- `RelativeConicArcs.AMELU.isAME_equalPhaseState_iff_isMDSCode634`
- `RelativeConicArcs.AMELU.isDiagonallyIsodual_iff_finrank_eq_one`
- `RelativeConicArcs.AMELU.isMDSCode2m_oneLegQuantumMDSParameters`
- `RelativeConicArcs.AMELU.isMDSCode634_arcKernel`
- `RelativeConicArcs.AMELU.locallyUnitaryEquivalent_admitted_nonGRS_pencil_iff_pencilZ_eq`
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
- `RelativeConicArcs.AMELU.stateInnerProduct_translatedEqualPhaseState_eq_zero`
- `RelativeConicArcs.AMELU.supportedArcSyndrome_bijective_of_card_three`
- `RelativeConicArcs.AMELU.tensorWeylAction_X_equalPhaseState_eq_translated`
- `RelativeConicArcs.AMELU.tensorWeylAction_Z_translatedEqualPhaseState`
- `RelativeConicArcs.AMELU.tensorWeylAction_equalPhaseState_of_mem_cssLabelSpace`
- `RelativeConicArcs.AMELU.translatedEqualPhaseState_eq_iff`
- `RelativeConicArcs.AMELU.twistedPencilGaleDivisor_refl`
- `RelativeConicArcs.AMELU.twistedPencil_sectors_disjoint`
