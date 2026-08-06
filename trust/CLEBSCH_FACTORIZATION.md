# Rank-three arithmetic gluing: formal boundary

This boundary records the rank-three arithmetic gluing development: the literal
`A3`, `B3` and `H3` reductions at the field orders five, seven and eleven, their
matching sheet actions, the polynomial splitting checks, the Coxeter-square
orbits, exact small-field projective stabilizer and orbit theorems, literal
checks against the larger golden certificate tables, and the bounded split and
fused trichotomy.

The exact project-local closure is rooted at
`RelativeConicArcs.Gates.ClebschArithmeticGluing`
and consists of:

- `CapGame.BuildGame`
- `ProjectiveCap.Grid`
- `ProjectiveCap.PlaneAffineChart`
- `ProjectiveCap.PlaneTransitivity`
- `ProjectiveCap.Projective`
- `ProjectiveCap.Sym2ConicBridge`
- `RelativeConicArcs.Arc`
- `RelativeConicArcs.Certificate`
- `RelativeConicArcs.ClebschArithmeticGluing`
- `RelativeConicArcs.ClebschArithmeticGluingData`
- `RelativeConicArcs.ClebschBalancedSheets`
- `RelativeConicArcs.ClebschBalancedSheetsB3`
- `RelativeConicArcs.ClebschBalancedSheetsH3`
- `RelativeConicArcs.ClebschConicMatchingQuotient`
- `RelativeConicArcs.ClebschFactorizationB3`
- `RelativeConicArcs.ClebschFactorizationData`
- `RelativeConicArcs.ClebschFactorizationH3`
- `RelativeConicArcs.ClebschGateway`
- `RelativeConicArcs.ClebschHarmonicQuotient`
- `RelativeConicArcs.ClebschMomentTrade`
- `RelativeConicArcs.ClebschSchemeChirality`
- `RelativeConicArcs.ClebschSchemeChiralityData`
- `RelativeConicArcs.CodingBridge`
- `RelativeConicArcs.Conic`
- `RelativeConicArcs.Defect`
- `RelativeConicArcs.Gates.ClebschArithmeticGluing`
- `RelativeConicArcs.Gates.ClebschBalancedSheets`
- `RelativeConicArcs.Moments`
- `RelativeConicArcs.Plane`
- `RelativeConicArcs.ProjectiveBridge`
- `RelativeConicArcs.SyndromeGeometry`

## Formal correspondence

The closure works with rank-three reflection data glued along sheets.  At each of
the three field orders it exhibits the literal reduction to the `A3`, `B3` and
`H3` types, checks that the sheet action matches, and verifies the corresponding
polynomial splitting.  It computes the Coxeter-square orbits and proves the exact
projective stabilizer and orbit statements at those orders, checks the larger
golden certificate tables literally, and establishes the trichotomy separating
the bounded split and fused cases.

The scope is deliberately narrow in two ways a reader should not overread.  The
gate asserts nothing in abstract octahedral, icosahedral, tetrahedral, dihedral,
orthogonal, spinor-norm, or number-field terminology; the finite statements are
about the explicit data at the three orders.  No all-prime statement is asserted,
so nothing here generalizes the finite checks to every field order.  The imported
sheet-character theorem is used only through an abstract equal-kernel interface.

## Trust boundary

Every terminal is a kernel proof, and the finite statements are discharged by
kernel reduction through `decide` rather than by native evaluation.  The closure
uses no project axiom, no unsafe declaration, and no admitted proof, and imports
no external certificate data.  The classical and replay inputs used alongside
these terminals are recorded in the manuscript's claim ledger rather than assumed
here.

The observed axiom set of every terminal below is contained in `Classical.choice`, `Quot.sound`, `propext`.
Source and candidate bytes are recorded in
`trust/source-manifests/clebsch_factorization.json` and
`trust/manifests/clebsch_factorization.json`.

## Terminals

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
