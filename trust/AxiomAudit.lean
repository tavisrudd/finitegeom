import CapGame.Affine
import ProjectiveCap.Binary
import ProjectiveCap.EllipticMirror
import ProjectiveCap.PlaneOutcome

/-!
# Terminal axiom audit

Running `lake env lean trust/AxiomAudit.lean` prints the axioms used by every
terminal claim in `trust/FIRST_TAG.md`.
-/

#print axioms CapGame.Affine.initialP_fin
#print axioms ProjectiveCap.Projective.initialPStatement_binary_of_projectiveDim_ge_one
#print axioms ProjectiveCap.Projective.initialPStatement_of_fixedPointFree_collinearity_preserving_involution
#print axioms ProjectiveCap.Projective.initialPStatement_of_odd_card_finrank_eq_two_mul
#print axioms ProjectiveCap.initialPStatement_of_even_card_finrank
#print axioms ProjectiveCap.ConicLocalization.initialPStatement_of_card_eq_five_finrank
#print axioms ProjectiveCap.ConicLocalization.initialPStatement_of_card_eq_seven_finrank
