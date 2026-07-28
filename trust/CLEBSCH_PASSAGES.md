# Clebsch Passages: formal-companion boundary

This state adds two reusable symbolic mechanisms accompanying Tavis Rudd's
*Arithmetic and harmonic realizations of the Clebsch cubic*. The manuscript's
proofs do not depend on Lean. The formal results clarify two algebraic clauses
that also occur in the paper; they do not formalize its main arithmetic or
spherical-harmonic theorems.

The import-only gate is
`RelativeConicArcs.Gates.ClebschOrientationMechanisms`. Its exact three-module
closure is recorded in `trust/manifests/clebsch_passages.json`.

## Formal correspondence

| Manuscript claim group | Formal companion | Exact scope |
|---|---|---|
| `ARITH-1` | `RelativeConicArcs.InvolutiveOddUnit.localized_existsUnique_invariant_add_mul_invariant` | After localization makes the square of an anti-invariant element invertible, every element has a unique invariant-plus-odd-times-invariant decomposition. |
| `HARM-1` | `RelativeConicArcs.KneserPairEigenspace.standardEquivPetersenNegTwo`; `RelativeConicArcs.KneserPairEigenspace.finrank_petersenNegTwoEigenspace` | Over a field of characteristic different from three and five, pair sums identify the sum-zero five-vertex module with the full four-dimensional Petersen minus-two eigenspace. |
| `ARITH-2`, `HARM-2` | none | These claim groups remain outside the formal boundary. |

The gate also audits the component projection, uniqueness, adjacency, and
reconstruction lemmas used to prove these two terminal mechanisms.

## Exclusions

The formal companion does not establish Hitchin's incidence model, the
`5J₀` square class, the local golden fibre comparison, the spinor
specialization, the face-axis configuration, the degree-six spherical
embedding, its Gram matrix, its moments, or the Gaunt/Wigner coefficient.
Those statements have the human and exact-arithmetic evidence routes
documented in the paper repository.

The older modules named `ClebschPassageInterfaces` and
`ClebschHarmonicQuotient` concern theta/Fourier/code interfaces and a
low-degree conic harmonic quotient. They are not part of this manuscript's
formal companion. `Q11BrianchonPetersen` belongs to the separate Clebsch
hexagon dictionary and is also excluded.

## Reproduce the audit

```sh
lake build RelativeConicArcs.Gates.ClebschOrientationMechanisms
lake env lean trust/ClebschPassagesAxiomAudit.lean
```

The twelve audited declarations use no project-local axiom, generated
certificate, native evaluator, or admitted declaration.
