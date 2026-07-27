import ProjectiveCap.ConicLocalization
import ProjectiveCap.IntrusionCalculus
import ProjectiveCap.EscapeParity
import ProjectiveCap.GridMirror

/-!
# Projective-plane outcome bridges

This module transports residual-grid outcome criteria through the rank-three
frame reduction. It derives projective-plane P-position theorems from
characteristic-two mirroring, residual escape, on-conic escape, and the
fixed-cardinality hypotheses used for small fields.
-/

namespace ProjectiveCap

variable {K V : Type*} [Field K] [Fintype K] [DecidableEq K]
variable [AddCommGroup V] [Module K V]
variable [Fintype (Projective.Point K V)] [DecidableEq (Projective.Point K V)]

/-- A finite field of even cardinality has characteristic two, in the form
needed by the characteristic-two mirror theorem. -/
theorem two_eq_zero_of_even_card (hcard : Even (Fintype.card K)) :
    (2 : K) = 0 := by
  classical
  by_contra h2
  have hnonzeroEven : Even ((Finset.univ : Finset K).erase 0).card :=
    ConicLocalization.even_card_of_involutive_fpf_on_finset
      ((Finset.univ : Finset K).erase 0) (fun x : K => -x)
      (fun x hx => by
        simp only [Finset.mem_erase, Finset.mem_univ, and_true] at hx ⊢
        exact neg_ne_zero.mpr hx)
      (fun x _hx => by simp)
      (fun x hx hfix => by
        simp only [Finset.mem_erase, Finset.mem_univ, and_true] at hx
        have hmul : (2 : K) * x = 0 := by
          have hsum : x + x = 0 := by
            nth_rewrite 2 [← hfix]
            exact add_neg_cancel x
          simpa [two_mul] using hsum
        rcases mul_eq_zero.mp hmul with htwo | hxzero
        · exact h2 htwo
        · exact hx hxzero)
  obtain ⟨n, hn⟩ := hnonzeroEven
  have hcardErase : ((Finset.univ : Finset K).erase 0).card = Fintype.card K - 1 := by
    simp
  have hcardOdd : Odd (Fintype.card K) := by
    refine ⟨n, ?_⟩
    have hpos : 0 < Fintype.card K := Fintype.card_pos_iff.mpr ⟨(0 : K)⟩
    omega
  exact (Nat.not_odd_iff_even.mpr hcard) hcardOdd

/-- Even-cardinality projective-plane theorem in any rank-three model. -/
theorem initialPStatement_of_even_card_finrank
    (hcard : Even (Fintype.card K))
    (hrank : Module.finrank K V = 3) :
    Projective.InitialPStatement (K := K) (V := V) :=
  GridMirror.initialPStatement_of_charTwo_finrank
    (K := K) (V := V) (two_eq_zero_of_even_card (K := K) hcard) hrank

/-- In an odd-cardinality rank-three projective model, if every legal
three-point residual grid cap has an even number of N-valued children, then
the empty projective cap position is a P-position. -/
theorem initialPStatement_of_forall_even_bad_finrank
    (hq : Odd (Fintype.card K))
    (hbad : ∀ S : Finset (GridPoint K), S.card = 3 -> GridCap (K := K) S ->
      Even (GridGame.BadExtensions (K := K) S).card)
    (hrank : Module.finrank K V = 3) :
    Projective.InitialPStatement (K := K) (V := V) :=
  GridMirror.initialPStatement_of_oddEscapeStatement_finrank
    (K := K) (V := V)
    (oddEscapeGameStatement_of_forall_even_bad (K := K) hq hbad) hrank

namespace ConicLocalization

variable {K V : Type*} [Field K] [Fintype K] [DecidableEq K]
variable [AddCommGroup V] [Module K V]
variable [Fintype (Projective.Point K V)] [DecidableEq (Projective.Point K V)]

/-- The on-conic escape refinement implies the full projective-plane outcome
in any rank-three model. -/
theorem initialPStatement_of_onConicEscapeStatement_finrank
    (hON : OnConicEscapeStatement (K := K))
    (hrank : Module.finrank K V = 3) :
    Projective.InitialPStatement (K := K) (V := V) :=
  GridMirror.initialPStatement_of_oddEscapeStatement_finrank
    (K := K) (V := V)
    (oddEscapeStatement_of_onConicEscapeStatement (K := K) hON) hrank

/-- In an odd-cardinality rank-three projective model, if the N-valued
on-conic children of every fitted three-point residual cap have even
cardinality, then the empty projective cap position is a P-position. -/
theorem initialPStatement_of_forall_even_onConic_bad_finrank
    (hq : Odd (Fintype.card K))
    (hbad : ∀ S : Finset (GridPoint K), ∀ rho A B : K,
      S.card = 3 ->
      GridCap (K := K) S ->
      B ≠ 0 ->
      HyperbolaFits (K := K) S rho A B ->
        Even (OnConicBadExtensions (K := K) S rho A B).card)
    (hrank : Module.finrank K V = 3) :
    Projective.InitialPStatement (K := K) (V := V) :=
  initialPStatement_of_onConicEscapeStatement_finrank
    (K := K) (V := V)
    (onConicEscapeStatement_of_forall_even_onConic_bad
      (K := K) hq hbad) hrank

/-- In an odd-cardinality rank-three projective model, the existence of the
specified fixed-point-free `psi` pairing on every fitted conic seed implies
that the empty projective cap position is a P-position. -/
theorem initialPStatement_of_psiPairingCriterion_finrank
    (hq : Odd (Fintype.card K))
    (hpair : OnConicPsiPairingCriterion (K := K))
    (hrank : Module.finrank K V = 3) :
    Projective.InitialPStatement (K := K) (V := V) :=
  initialPStatement_of_onConicEscapeStatement_finrank
    (K := K) (V := V)
    (onConicEscapeStatement_of_psiPairingCriterion
      (K := K) hq hpair) hrank

/-- The per-`q` no-intrusion kernel implies the full projective-plane outcome
in any odd-cardinality rank-three model.  The kernel is TRUE for `q = 5, 7`
(Theorem IV of the intrusion note) and FALSE from `q = 11` on — per-`q` use
only; see `NoIntrusionAboveFourStatement`. -/
theorem initialPStatement_of_noIntrusionAboveFour_finrank
    (hq : Odd (Fintype.card K))
    (hno : NoIntrusionAboveFourStatement (K := K))
    (hrank : Module.finrank K V = 3) :
    Projective.InitialPStatement (K := K) (V := V) :=
  initialPStatement_of_onConicEscapeStatement_finrank
    (K := K) (V := V)
    (onConicEscapeStatement_of_noIntrusionAboveFour (K := K) hq hno) hrank

/--
**The projective plane of order five.**  The cap game on any rank-three model
over a field of cardinality five is a second-player win — the first
odd-order projective plane proven by mechanism (the intrusion-calculus bare
counter through the order-five no-intrusion kernel) rather than by
enumeration.
-/
theorem initialPStatement_of_card_eq_five_finrank
    (hcard : Fintype.card K = 5)
    (hrank : Module.finrank K V = 3) :
    Projective.InitialPStatement (K := K) (V := V) :=
  initialPStatement_of_noIntrusionAboveFour_finrank (K := K) (V := V)
    (by rw [hcard]; exact ⟨2, rfl⟩)
    (noIntrusionAboveFourStatement_of_card_eq_five (K := K) hcard)
    hrank

/--
**The projective plane of order seven.**  The cap game on any rank-three
model over a field of cardinality seven is a second-player win, by the
intrusion-calculus bare counter through the order-seven secant-involution
kernel.
-/
theorem initialPStatement_of_card_eq_seven_finrank
    (hcard : Fintype.card K = 7)
    (hrank : Module.finrank K V = 3) :
    Projective.InitialPStatement (K := K) (V := V) :=
  initialPStatement_of_noIntrusionAboveFour_finrank (K := K) (V := V)
    (by rw [hcard]; exact ⟨3, rfl⟩)
    (noIntrusionAboveFourStatement_of_card_eq_seven (K := K) hcard)
    hrank

/-- For a field of cardinality nine, a terminal-reply strategy against every
legal off-conic move above an on-conic four-point position implies that the
empty rank-three projective cap position is a P-position. The conic replies
use the free-endgame theorem at the identity `2 · 5 = 9 + 1`. -/
theorem initialPStatement_of_intruderTerminalReply_finrank
    (hcard : Fintype.card K = 9)
    (hterm : IntruderTerminalReplyStatement (K := K))
    (hrank : Module.finrank K V = 3) :
    Projective.InitialPStatement (K := K) (V := V) :=
  initialPStatement_of_onConicEscapeStatement_finrank (K := K) (V := V)
    (onConicEscapeStatement_of_intruderTerminalReply (K := K) hcard hterm)
    hrank

end ConicLocalization
end ProjectiveCap
