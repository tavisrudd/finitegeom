# Release provenance

`SOURCE_MANIFEST.json` content-addresses the 26-module preparation input for
the foundational release by module name, relative path, byte count, and
SHA-256. The release applies the reviewed transformations below.
`TARGET_MANIFEST.json` independently content-addresses the complete reviewed
93-module library state. Per-area source and target manifests preserve the
exact boundaries of later additions.

These records document the release boundary; neither manifest is a build
input, and the formal claims are checked entirely from files present in this
repository.

## Canonical residual-grid API

Two compatibility modules are not part of the release:

- `ProjectiveCap/Almost/OddEscape.lean`; and
- `ProjectiveCap/StableFacts.lean`.

Their mathematical content duplicated declarations in
`ProjectiveCap.GridGame` and `ProjectiveCap.ExtensionCount`.
`ProjectiveCap.EscapeParity`, `ProjectiveCap.ConicLocalization`, and
`ProjectiveCap.ExtensionCount` now use those canonical declarations directly.
No compatibility aliases are exported.

The direct extension-count theorem is
`ProjectiveCap.sizeThreeExtensionCount`. Its conclusion is stated over
`ProjectiveCap.GridGame.LegalExtensions`.

## API names

The frame-grid existence proposition and its two constructors have descriptive
release names:

| Preparation-input name | Release name |
|---|---|
| `ProjectiveCap.Projective.FrameGridBridge.Statement` | `ProjectiveCap.Projective.FrameGridBridge.ExistsFrameGridBridge` |
| `ProjectiveCap.Projective.FrameGridBridge.Coordinate.statement_of_validity` | `ProjectiveCap.Projective.FrameGridBridge.Coordinate.existsFrameGridBridge_of_validity` |
| `ProjectiveCap.Projective.FrameGridBridge.Coordinate.coordinateStatement` | `ProjectiveCap.Projective.FrameGridBridge.Coordinate.existsFrameGridBridge_standardCoordinates` |

## Documentation and visibility

Module headers and declaration documentation describe the mathematical
objects, hypotheses, conclusions, and trust boundaries. Cross-module
declarations and all seven terminal theorems have self-contained docstrings.
The review covers every Lean file in the 24-module closure.

`DECLARATION_VISIBILITY.tsv` records the 269 undocumented, module-local proof
declarations kept private so they do not become an accidental public API.

## Clebsch Passages formal-companion state

The state following `v0.1.0` adds three exact, unmodified Lean sources:

- `RelativeConicArcs/InvolutiveOddUnit.lean`;
- `RelativeConicArcs/KneserPairEigenspace.lean`; and
- `RelativeConicArcs/Gates/ClebschOrientationMechanisms.lean`.

`trust/manifests/clebsch_passages.json` content-addresses this exact closure.
`trust/CLEBSCH_PASSAGES.md` maps its symbolic mechanisms to the adjacent
manuscript clauses and states the results that remain outside formal coverage.
No generated certificate or private development history is included.

## Arcs complete outside a prescribed conic

The human-scale Arcs state adds reusable finite-plane geometry, moment and
reconstruction arguments, small-field witness checks, and the definitions and
checker semantics needed by the order-16 classification. The public
`RelativeConicArcs.Results` module stops at the kernel-checked two-sided order
16 bound. The exact order-16 theorem and its generated transition, row, and
leaf families belong to the downstream `finitegeom-q16-certificates` package.

The input and output sides of this split are recorded in
`trust/source-manifests/arcs_complete_outside_conic_human.json` and
`trust/manifests/arcs_complete_outside_conic_human.json`. The target-only
changes expose four declarations required across module boundaries, document
those declarations, and remove development-workflow prose without changing
the mathematical statements.
