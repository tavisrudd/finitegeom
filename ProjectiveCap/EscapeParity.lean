import ProjectiveCap.ExtensionCount

/-!
# Parity route to the odd escape target

For odd `q` the total extension count `q^2 - 9q + 21` of a size-three residual
position is odd, so whenever the bad (game-`N`) extensions come in an even
count, at least one escape (game-`P`) extension must exist.  This reduces the
odd-plane escape target `OddEscapeGameStatement` to the bad-parity hypothesis,
This criterion applies whenever the bad extensions admit a fixed-point-free
pairing.
-/

namespace ProjectiveCap

variable {K : Type*} [Field K] [Fintype K] [DecidableEq K]

/-- The size-three extension count transferred to the residual game interface. -/
theorem card_gridGame_legalExtensions_of_card_three {S : Finset (GridPoint K)}
    (hcard : S.card = 3) (hS : GridCap (K := K) S) :
    ((GridGame.LegalExtensions (K := K) S).card : Int) =
      (Fintype.card K : Int) ^ 2 - 9 * (Fintype.card K : Int) + 21 := by
  exact sizeThreeExtensionCount S hcard hS

/-- For odd `q`, every size-three residual position has an odd number of legal
extensions. -/
theorem odd_card_gridGame_legalExtensions (hq : Odd (Fintype.card K))
    {S : Finset (GridPoint K)} (hcard : S.card = 3) (hS : GridCap (K := K) S) :
    Odd (GridGame.LegalExtensions (K := K) S).card := by
  obtain ⟨k, hk⟩ := hq
  rw [← Int.odd_coe_nat, card_gridGame_legalExtensions_of_card_three hcard hS]
  refine ⟨2 * (k : Int) ^ 2 - 7 * (k : Int) + 6, ?_⟩
  have hkz : (Fintype.card K : Int) = 2 * (k : Int) + 1 := by exact_mod_cast hk
  rw [hkz]; ring

/-- Parity escape criterion: odd `q` plus evenly many bad children forces an
escape child. -/
theorem escapeExtensions_nonempty_of_even_bad (hq : Odd (Fintype.card K))
    {S : Finset (GridPoint K)} (hcard : S.card = 3) (hS : GridCap (K := K) S)
    (hbad : Even (GridGame.BadExtensions (K := K) S).card) :
    (GridGame.EscapeExtensions (K := K) S).Nonempty := by
  have hodd := odd_card_gridGame_legalExtensions hq hcard hS
  rw [GridGame.legalExtensions_card_eq_escape_add_bad] at hodd
  have hoddE : Odd (GridGame.EscapeExtensions (K := K) S).card := by
    rcases Nat.even_or_odd (GridGame.EscapeExtensions (K := K) S).card with he | ho
    · exact absurd hodd (Nat.not_odd_iff_even.mpr (he.add hbad))
    · exact ho
  exact Finset.card_pos.mp hoddE.pos

/-- If the field cardinality is odd and every three-point residual cap has an
even number of bad children, then every such cap has a P-valued legal child. -/
theorem oddEscapeGameStatement_of_forall_even_bad (hq : Odd (Fintype.card K))
    (hbad : ∀ S : Finset (GridPoint K), S.card = 3 -> GridCap (K := K) S ->
      Even (GridGame.BadExtensions (K := K) S).card) :
    GridGame.OddEscapeStatement (K := K) := by
  rw [GridGame.oddEscapeStatement_iff_escapeExtensions_nonempty]
  intro S hcard hcap
  exact escapeExtensions_nonempty_of_even_bad hq hcard hcap (hbad S hcard hcap)

end ProjectiveCap
