import RelativeConicArcs.Gates.GoldenQuantumStatistics

/-!
# Axiom audit for the Golden balanced-cut identities

This audit prints the axioms of the symbolic order-six identities exported with
the Golden six-mode conference interferometer artifact.  The statements
concern a signed triangle block with unit off-diagonal entries over a
commutative ring: its squared entries, the determinant of the cross Gram
matrix, the trace contraction, and the resulting fourth conference-word trace.
-/

#print axioms RelativeConicArcs.ConferenceExchange.balancedExchange_benchmark
#print axioms RelativeConicArcs.ConferenceExchange.charpoly_normalizedExchange
#print axioms RelativeConicArcs.ConferenceExchange.crossGram_eq
#print axioms RelativeConicArcs.ConferenceExchange.principal_sq_add_crossGram
#print axioms RelativeConicArcs.ConferenceExchange.roots_charpoly_normalizedExchange
#print axioms RelativeConicArcs.ConferenceExchange.schurWeyl_checksum
#print axioms RelativeConicArcs.ConferenceExchange.signedTriangle_sq
#print axioms RelativeConicArcs.ConferenceExchange.spectrum_normalizedExchange
#print axioms RelativeConicArcs.GoldenBalancedCut.crossGramDet_eq_sixteen
#print axioms RelativeConicArcs.GoldenBalancedCut.fourthWordTrace_from_block_formula
#print axioms RelativeConicArcs.GoldenBalancedCut.signedTriangle_sq_entries
#print axioms RelativeConicArcs.GoldenBalancedCut.traceContraction_eq_twelve
