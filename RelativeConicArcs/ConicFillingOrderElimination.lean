import Mathlib.Combinatorics.SimpleGraph.Clique
import Mathlib.Data.Nat.Factorization.PrimePow
import Mathlib.Tactic

/-!
# Elimination of the candidate field orders for six-arc conic filling

Let `A` be a six-arc in the projective plane of order `q`, that is, a set of six points no three
of which are collinear, and suppose the set of points of the plane lying on no chord of `A` is
exactly the set of rational points of a nonsingular conic.  The chord-defect identity together
with the conic-filling window gives `q ≥ 9` and expresses the number `c` of off-conic triple
concurrences as `c = (q - 6) * (q - 9)` with `c ≤ 15`.  This file carries out the two elementary
eliminations that reduce those constraints to the single order eleven.

The first is arithmetic.  The product `(q - 6) * (q - 9)` is at least eighteen once `q ≥ 12`, so
the window forces `q ≤ 11`; among the remaining values only nine and eleven are prime powers,
since ten has two distinct prime divisors.

The second is combinatorial and isolates the shape of the order-nine exclusion.  At order nine
every chord of such an arc is passant to the conic, which forces all six vertices to be internal
points, and the passant-join relation on the thirty-six internal points is the distance-two
relation of a graph whose cliques have at most five vertices.  Six pairwise-passant vertices would
be a six-element clique of that relation.  The theorem below is the contradiction in that form: no
graph all of whose cliques have at most five vertices contains six pairwise adjacent vertices.
The identification of the passant-join relation with the distance-two relation of the Sylvester
graph, and the clique value five for that graph, are external inputs and appear here only as
hypotheses.

The concluding theorem combines the two: under the window, the prime-power hypothesis, and the
order-nine clique hypothesis, the order is eleven.

Trust boundary: everything below is symbolic, with the finite arithmetic discharged by kernel
reduction on explicit integers.  No certificate, native evaluation, or ambient plane geometry is
used; the geometric content enters only through the stated hypotheses.
-/

namespace RelativeConicArcs

namespace ConicFillingOrderElimination

/-- The conic-filling window bounds the plane order by eleven.

`q` is the order of the plane and `c` the number of off-conic points lying on three chords of the
six-arc.  The chord-defect identity under exact conic filling gives the displayed value of `c`,
and the window gives `c ≤ 15`.  Since both factors grow with `q`, the bound on `c` bounds `q`. -/
theorem order_le_eleven_of_window {q c : ℕ}
    (hc : (c : ℤ) = ((q : ℤ) - 6) * ((q : ℤ) - 9))
    (hle : c ≤ 15) :
    q ≤ 11 := by
  by_contra hgt
  have hq : (12 : ℤ) ≤ (q : ℤ) := by
    have : 12 ≤ q := Nat.lt_of_not_le hgt
    exact_mod_cast this
  have hcle : (c : ℤ) ≤ 15 := by exact_mod_cast hle
  nlinarith [hc, hq, hcle]

/-- Ten is not a prime power, since it is divisible by both two and five.

This is the only value in the window that the arithmetic alone does not remove. -/
theorem not_isPrimePow_ten : ¬ IsPrimePow 10 := by
  rintro ⟨p, k, hp, -, hpk⟩
  have hpn : p.Prime := Nat.prime_iff.mpr hp
  have h2 : (2 : ℕ) ∣ p ^ k := by rw [hpk]; norm_num
  have h5 : (5 : ℕ) ∣ p ^ k := by rw [hpk]; norm_num
  have h2p : p = 2 :=
    ((Nat.prime_dvd_prime_iff_eq Nat.prime_two hpn).mp
      (Nat.Prime.dvd_of_dvd_pow Nat.prime_two h2)).symm
  have h5p : p = 5 :=
    ((Nat.prime_dvd_prime_iff_eq (by norm_num) hpn).mp
      (Nat.Prime.dvd_of_dvd_pow (by norm_num) h5)).symm
  omega

/-- Under the conic-filling window, only orders nine and eleven remain.

`q` is a prime power at least nine and `c = (q - 6) * (q - 9)` is at most fifteen.  Order ten is
excluded because it is not a prime power, and every order at least twelve is excluded because it
makes `c` at least eighteen. -/
theorem candidate_orders {q c : ℕ}
    (hprime : IsPrimePow q)
    (hlow : 9 ≤ q)
    (hc : (c : ℤ) = ((q : ℤ) - 6) * ((q : ℤ) - 9))
    (hle : c ≤ 15) :
    q = 9 ∨ q = 11 := by
  have hub : q ≤ 11 := order_le_eleven_of_window hc hle
  interval_cases q
  · exact Or.inl rfl
  · exact absurd hprime not_isPrimePow_ten
  · exact Or.inr rfl

/-- Six pairwise adjacent vertices are impossible in a graph whose cliques have at most five
vertices.

`G` is a simple graph on a vertex type `V`, `v : Fin 6 → V` is an injective labelling, and the
six labelled vertices are pairwise adjacent.  The hypothesis `hbound` is the clique bound.  This
is the form in which the order-nine exclusion is used: the six vertices of the arc are internal
points, pairwise joined by passant lines, hence pairwise adjacent in the passant-join relation. -/
theorem not_six_pairwise_adjacent {V : Type*} [DecidableEq V] (G : SimpleGraph V)
    (hbound : ∀ s : Finset V, (s : Set V).Pairwise G.Adj → s.card ≤ 5)
    (v : Fin 6 → V) (hinj : Function.Injective v)
    (hadj : ∀ i j : Fin 6, i ≠ j → G.Adj (v i) (v j)) :
    False := by
  set s : Finset V := Finset.image v Finset.univ with hs
  have hcard : s.card = 6 := by
    rw [hs, Finset.card_image_of_injective _ hinj, Finset.card_univ, Fintype.card_fin]
  have hpair : (s : Set V).Pairwise G.Adj := by
    intro x hx y hy hxy
    simp only [hs, Finset.coe_image, Finset.coe_univ, Set.image_univ, Set.mem_range] at hx hy
    obtain ⟨i, rfl⟩ := hx
    obtain ⟨j, rfl⟩ := hy
    exact hadj i j fun h => hxy (congrArg v h)
  have := hbound s hpair
  omega

/-- The plane order of a conic-filling six-arc is eleven.

The hypotheses are the conic-filling window in the form used above, the prime-power condition on
the order, and the order-nine exclusion supplied as an implication: at order nine the six vertices
would be six pairwise adjacent vertices of a graph whose cliques have at most five vertices. -/
theorem order_eq_eleven {V : Type*} [DecidableEq V] {G : SimpleGraph V} {q c : ℕ}
    (hprime : IsPrimePow q)
    (hlow : 9 ≤ q)
    (hc : (c : ℤ) = ((q : ℤ) - 6) * ((q : ℤ) - 9))
    (hle : c ≤ 15)
    (hbound : ∀ s : Finset V, (s : Set V).Pairwise G.Adj → s.card ≤ 5)
    (hnine : q = 9 → ∃ v : Fin 6 → V, Function.Injective v ∧
      ∀ i j : Fin 6, i ≠ j → G.Adj (v i) (v j)) :
    q = 11 := by
  rcases candidate_orders hprime hlow hc hle with h9 | h11
  · obtain ⟨v, hinj, hadj⟩ := hnine h9
    exact (not_six_pairwise_adjacent G hbound v hinj hadj).elim
  · exact h11

#print axioms candidate_orders
#print axioms not_six_pairwise_adjacent
#print axioms order_eq_eleven

end ConicFillingOrderElimination

end RelativeConicArcs
