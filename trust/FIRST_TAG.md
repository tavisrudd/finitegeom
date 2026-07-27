# Finite-geometry release: trust manifest

This manifest covers the Lean sources supporting the cap-game outcome
theorems in Tavis Rudd's manuscript in preparation, *Achievement games in the
Nofil genus — outcome classes of cap/Nofil games on finite geometries*. Its
boundary is the union of four import closures:

- `CapGame.Affine`
- `ProjectiveCap.Binary`
- `ProjectiveCap.EllipticMirror`
- `ProjectiveCap.PlaneOutcome`

The union contains 24 Lean modules. `TARGET_MANIFEST.json` records their paths,
sizes, and SHA-256 hashes.

## Terminal claims

| Mathematical scope | Lean declaration |
|---|---|
| Positive-dimensional finite affine spaces | `CapGame.Affine.initialP_fin` |
| Binary projective spaces of projective dimension at least one | `ProjectiveCap.Projective.initialPStatement_binary_of_projectiveDim_ge_one` |
| Fixed-point-free projective involution mirror principle | `ProjectiveCap.Projective.initialPStatement_of_fixedPointFree_collinearity_preserving_involution` |
| Odd-cardinality fields in positive even vector rank | `ProjectiveCap.Projective.initialPStatement_of_odd_card_finrank_eq_two_mul` |
| Rank-three projective models over fields of even cardinality | `ProjectiveCap.initialPStatement_of_even_card_finrank` |
| Projective plane of order five | `ProjectiveCap.ConicLocalization.initialPStatement_of_card_eq_five_finrank` |
| Projective plane of order seven | `ProjectiveCap.ConicLocalization.initialPStatement_of_card_eq_seven_finrank` |

## Trust boundary

`trust/areas/finitegeom_first_tag.toml` declares the expected axiom set of each terminal as
`Classical.choice`, `Quot.sound`, and `propext`. Direct `#print axioms` extraction in the pinned
Lean and Mathlib environment reports exactly that set for each of the seven terminals.

Run the audit with:

```sh
lake env lean trust/AxiomAudit.lean
```

In the machine-readable trust spine, `permitted_axioms = []` means that no
project-local axiom declaration is permitted. The three entries in each
terminal's `expected_axioms` field are standard axioms reported by Lean for
that theorem; they are not project-local declarations.

## Exclusions

The release makes exactly the seven terminal claims listed above. Other
theorems that may exist in related development branches, and any generated
finite-certificate packages, are outside this release boundary.
