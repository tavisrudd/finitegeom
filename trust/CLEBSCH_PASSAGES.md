# Clebsch Passages: structural formal companion

This boundary records the human-scale Lean mechanisms accompanying Tavis
Rudd's *Arithmetic and harmonic realizations of the Clebsch cubic*.  The
import gate is `RelativeConicArcs.Gates.ClebschPassages`; its exact
13-module closure is recorded in `trust/manifests/clebsch_passages.json`.

The formalization proves algebraic consequences after the paper's geometric
objects have been identified with the displayed models.  It does not use
those identifications as axioms, and it does not claim that any complete
manuscript row has been formalized.

## Formal correspondence

| Manuscript row | Formal structural content | Exact excluded input |
|---|---|---|
| `ARITH-1` | Residue-field pinching, conductor equals residue kernel, rank-two presentation, involutive even/odd splitting, and the odd-square multiplication law | Hitchin incidence geometry, the global Stein algebra, branch divisor, and the geometric Clebsch-chart identification |
| `ARITH-2` | Golden discriminant, conjugation, signed-Gram determinants, reflection factorization of the exchanger with norm product two, and the nonsquare check in `F_11` | Identification of the complete Hitchin fibre and a general spinor-norm theorem connecting the reflection witness to the geometric exchanger |
| `ORIENT-1` | Split quadratic pinching, exact conductor, integral product extension, tight-frame conference mechanism, switching invariance, relative deck signs, and chart scaling | Scheme normalization of the pulled-back incidence cover, extension across the branch, and the geometric marked-chart identification |
| `HARM-1` | General Petersen pair-sum eigenspace, dimension four, two-orbit Legendre kernel, normalized Gram scalar, and norm factor `n-2` | Face-axis geometry, the spherical addition theorem, and the abstract `A_5` uniqueness comparison |
| `HARM-2` | Marked fixed line, normalized `sigma_3` values, coefficient uniqueness, exact Gaunt factorization, and denominator reductions | The geometric spherical cubic's invariant-line theorem and the raw degree-six spherical moment |

Every row therefore has coverage `partial mechanism; no full row claim`.
The integral Mukai--Umemura comparison is also outside this gate.

## Trust boundary

Symbolic Lean proofs establish the pinching, conductor, involutive-splitting,
tight-frame, Gram-determinant, switching, Petersen-eigenspace, fixed-line, and
rational-scalar identities.  Native decision is restricted to displayed
finite conference and reflection matrices, explicit finite vectors, finite
conference signs, and the `F_11` nonsquare leaf.  The declaration-local native
axioms and the standard Lean axioms used by each terminal are listed exactly
in `trust/areas/clebsch_passages.toml`.

The closure contains no generated certificate, user axiom, unsafe
declaration, or admitted proof.  The source and reviewed target hashes are
recorded separately in `trust/source-manifests/clebsch_passages.json` and
`trust/manifests/clebsch_passages.json`.

## Reproduce the audit

```sh
lake build RelativeConicArcs.Gates.ClebschPassages
lake env lean trust/ClebschPassagesAxiomAudit.lean
```

The printed terminal set contains 34 declarations and must agree with the
machine-readable area ledger.
