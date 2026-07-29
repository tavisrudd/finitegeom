# Arcs complete outside a prescribed conic: human library boundary

The public human-scale library contains the reusable geometry, asymptotic and
averaging arguments, small-field witnesses, q16 classification definitions,
and the kernel-checked step/reduction semantics used by the manuscript
*Arcs complete outside a prescribed conic*. Its import-only boundary is
`RelativeConicArcs.Gates.ArcsCompleteOutsideConicHuman`.

The generated q16 transition, row, and leaf families are not present in this
repository. They are distributed by the separately pinned
`finitegeom-q16-certificates` package, which depends on this library in one
direction. That package supplies the exhaustive classification and proves the
exact q16 exclusion and `rho_C(16) = 9`; the human gate here proves only the
two-sided bound `8 ≤ rho_C(16) ≤ 9`.

## Target-only separation

The immutable preparation snapshot had one `RelativeConicArcs.Results` module
and one manuscript gate importing both the human theory and the generated q16
certificate aggregate. The public split applies two recorded transformations:

- `RelativeConicArcs.Results` retains the arithmetic thresholds, the exact
  values at orders 8, 9, and 11, and the q16 two-sided bound, but not the exact
  q16 theorem; and
- `RelativeConicArcs.Gates.ArcsCompleteOutsideConicHuman` imports and audits
  only the human-scale side of the boundary.

The source and target manifests content-address all 77 modules on their
respective sides:

- `trust/source-manifests/arcs_complete_outside_conic_human.json`;
- `trust/manifests/arcs_complete_outside_conic_human.json`.

The target also removes private workflow references from the full module
headers and documentation of `ProjectiveCap.Sym2ConicBridge`,
`RelativeConicArcs.ExampleChecks.Q5`, and
`RelativeConicArcs.Q16Classification`. These prose changes do not alter any
declaration.

## Verification boundary

Every theorem printed by the human gate is kernel checked. The gate imports no
generated q16 source and uses no project-local axiom. The finite witness
checks use kernel reduction; the q16 certificate package separately records
the generated-data semantics, coverage proof, regeneration status, and final
axiom audit.
