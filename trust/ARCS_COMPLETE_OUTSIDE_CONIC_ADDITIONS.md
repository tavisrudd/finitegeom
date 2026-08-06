# Matching-packing bounds and small odd-order witnesses: formal boundary

This boundary records two human-scale additions to the formal theory of arcs
complete outside a prescribed conic, accompanying the manuscript of that name.

The first is a maximum-matching packing argument: failure of an exact matching
design forces a two-block deficiency, which in turn gives a quantitative bound
on the prescribed-hole defect.  The second is a set of explicit relative-conic
witnesses over the fields of orders thirteen, seventeen, and nineteen.

The exact project-local closure is rooted at
`RelativeConicArcs.Gates.ArcsCompleteOutsideConicAdditions`
and consists of:

- `CapGame.BuildGame`
- `ProjectiveCap.Grid`
- `ProjectiveCap.PlaneAffineChart`
- `ProjectiveCap.PlaneTransitivity`
- `ProjectiveCap.Projective`
- `ProjectiveCap.Sym2ConicBridge`
- `RelativeConicArcs.Arc`
- `RelativeConicArcs.Certificate`
- `RelativeConicArcs.CliquePackingCompletion`
- `RelativeConicArcs.Conic`
- `RelativeConicArcs.Defect`
- `RelativeConicArcs.Gates.ArcsCompleteOutsideConicAdditions`
- `RelativeConicArcs.MatchingDesignRigidity`
- `RelativeConicArcs.MatchingPackingCompletionBridge`
- `RelativeConicArcs.MatchingPackingDefect`
- `RelativeConicArcs.MatchingPackingDefectBridge`
- `RelativeConicArcs.Moments`
- `RelativeConicArcs.Plane`
- `RelativeConicArcs.ProjectiveBridge`
- `RelativeConicArcs.SmallOddRelativeConicWitnessData`
- `RelativeConicArcs.SmallOddRelativeConicWitnessQ13`
- `RelativeConicArcs.SmallOddRelativeConicWitnessQ17`
- `RelativeConicArcs.SmallOddRelativeConicWitnessQ19`
- `RelativeConicArcs.SmallOddRelativeConicWitnessQ19Basic`
- `RelativeConicArcs.SmallOddRelativeConicWitnessQ19CoverageA`
- `RelativeConicArcs.SmallOddRelativeConicWitnessQ19CoverageB`
- `RelativeConicArcs.SmallOddRelativeConicWitnessQ19CoverageC`
- `RelativeConicArcs.SmallOddRelativeConicWitnessQ19CoverageD`
- `RelativeConicArcs.SmallOddRelativeConicWitnessQ19CoverageE`
- `RelativeConicArcs.SmallOddRelativeConicWitnessQ19CoverageTail`
- `RelativeConicArcs.SmallOddRelativeConicWitnesses`

## Formal correspondence

The packing half develops matching and clique packings of the secant structure.
It proves that a one-block-short leave is a clique, that a decomposition exists
once the leave has the cardinality the binomial count predicts, and that the bad
concurrence edge count together with the maximum block number bounds the scaled
defect.  The deficiency estimates are then transported to the two forms the
manuscript uses, one through the matching-packing deficiency and one through the
maximum concurrence-block deficiency.

The witness half exhibits, for each of the orders thirteen, seventeen, and
nineteen, a normalized configuration together with kernel-checked proofs of its
determinant, its mapping behaviour, and its conic form, and then checks the arc,
disjointness, and coverage conditions by kernel reduction.

The witnesses establish upper bounds alone: eight, nine, and ten at the three
orders.  The matching lower bounds come from exhaustive classifications that are
external computations, are not declarations of this closure, and are not claimed
by any terminal here.

## Trust boundary

Every terminal is a kernel proof, and every finite witness predicate is checked
by kernel reduction rather than native evaluation.  The closure contains no user
axiom, unsafe declaration, admitted proof, imported external certificate data,
or generated certificate family, and the trust registry permits no axiom in this
area.

The observed axiom set of every terminal below is contained in `Classical.choice`, `Quot.sound`, `propext`.
Source and candidate bytes are recorded in
`trust/source-manifests/arcs_complete_outside_conic_additions.json` and
`trust/manifests/arcs_complete_outside_conic_additions.json`.

## Terminals

- `RelativeConicArcs.CliquePacking.exists_decomposition_of_card_leave_eq_choose`
- `RelativeConicArcs.MatchingPacking.oneBlockShort_leave_isClique`
- `RelativeConicArcs.SmallOddRelativeConicWitnessData.q13Normalization_conicForm`
- `RelativeConicArcs.SmallOddRelativeConicWitnessData.q13Normalization_det`
- `RelativeConicArcs.SmallOddRelativeConicWitnessData.q13Normalization_maps`
- `RelativeConicArcs.SmallOddRelativeConicWitnessData.q17Normalization_conicForm`
- `RelativeConicArcs.SmallOddRelativeConicWitnessData.q17Normalization_det`
- `RelativeConicArcs.SmallOddRelativeConicWitnessData.q17Normalization_maps`
- `RelativeConicArcs.SmallOddRelativeConicWitnesses.q13_check`
- `RelativeConicArcs.SmallOddRelativeConicWitnesses.q17_check`
- `RelativeConicArcs.SmallOddRelativeConicWitnesses.q19_check`
- `RelativeConicArcs.SmallOddRelativeConicWitnesses.q19_complete`
- `RelativeConicArcs.SmallOddRelativeConicWitnesses.q19_ordinaryCoverage`
- `RelativeConicArcs.SmallOddRelativeConicWitnesses.rhoC_ZMod13_le_eight`
- `RelativeConicArcs.SmallOddRelativeConicWitnesses.rhoC_ZMod17_le_nine`
- `RelativeConicArcs.SmallOddRelativeConicWitnesses.rhoC_ZMod19_le_ten`
- `RelativeConicArcs.badConcurrenceEdgeCount_add_maximumBlocks`
- `RelativeConicArcs.matchingPackingDeficiency_le_scaledDefect`
- `RelativeConicArcs.maximumConcurrenceBlockDeficiency_le_scaledDefect`
- `RelativeConicArcs.two_le_maximumConcurrenceBlockDeficiency_of_no_decomposition`
- `RelativeConicArcs.two_mul_half_le_scaledDefect_of_no_disjointness_decomposition`
- `RelativeConicArcs.two_mul_half_le_scaledDefect_of_two_le_matchingPackingDeficiency`
- `RelativeConicArcs.two_mul_half_le_scaledDefect_of_two_le_maximumConcurrenceBlockDeficiency`
