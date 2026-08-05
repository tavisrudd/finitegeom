import RelativeConicArcs.SixArcConcurrenceSpine

/-!
# Axiom audit for triple concurrence of a six-arc

This audit prints the axioms of the six-arc concurrence terminals exported with
the triple-concurrence boundary: the per-secant and ten-point bounds, the
bijection between triple-concurrence points and concurrent chord matchings, the
three counts giving the one-factorization of the equality case, the hexagonal
order, the golden normal form, the golden root it forces in the ground field,
and the order-eleven identification with the displayed witness.
-/

#print axioms RelativeConicArcs.GoldenHexagonNormalForm.golden_normal_form_of_concurrent_matchings
#print axioms RelativeConicArcs.Q11GoldenHexagonWitness.exists_mapEquiv_toWitness
#print axioms RelativeConicArcs.SixArcChordMatchings.card_concurrentMatchings_eq_card_triplePoints
#print axioms RelativeConicArcs.SixArcConcurrence.card_triplePoints_le_ten
#print axioms RelativeConicArcs.SixArcConcurrence.card_triplePoints_on_secant_le_two
#print axioms RelativeConicArcs.SixArcGoldenNormalForm.exists_golden_frame
#print axioms RelativeConicArcs.SixArcGoldenNormalForm.exists_golden_root
#print axioms RelativeConicArcs.SixArcHexagonalOrder.exists_hexagonal_order
#print axioms RelativeConicArcs.SixArcOneFactorization.card_filter_mem_nonconcurrentMatchings
#print axioms RelativeConicArcs.SixArcOneFactorization.card_nonconcurrentMatchings
#print axioms RelativeConicArcs.SixArcOneFactorization.disjoint_of_mem_nonconcurrentMatchings
