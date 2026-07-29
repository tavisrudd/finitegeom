import RelativeConicArcs.ClebschChordDefect
import RelativeConicArcs.Q9Sylvester
import RelativeConicArcs.SmallKGeometricBridge

/-!
# Human-scale trust gate for Clebsch rigidity

This gate checks the reusable chord-defect, small-arc, and order-nine
mechanisms without importing the generated order-eleven orbit/action family.
The downstream q11 certificate package imports this library and supplies the
complete `ClebschRigidityTrust` paper gate.
-/

#print axioms RelativeConicArcs.ClebschChordDefect.chordDefect_identity_of_moments
#print axioms RelativeConicArcs.ClebschChordDefect.clebsch_uncovered_formula
#print axioms RelativeConicArcs.ClebschChordDefect.orders_of_clebsch_uncovered_conic_card
#print axioms RelativeConicArcs.Q9Sylvester.distanceTwo_clique_number_five
#print axioms RelativeConicArcs.SmallKGeometricBridge.fourArc_uncovered_card
#print axioms RelativeConicArcs.SmallKGeometricBridge.fourArc_conic_card_order
#print axioms RelativeConicArcs.SmallKGeometricBridge.fiveArc_not_conic_card
#print axioms RelativeConicArcs.SmallKGeometricBridge.sevenArc_primePower_conic_card_spectra
