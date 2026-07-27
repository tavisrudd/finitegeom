# Release provenance

`SOURCE_MANIFEST.json` content-addresses the 26-module preparation input by
module name, relative path, byte count, and SHA-256. The release applies the
reviewed transformations below. `TARGET_MANIFEST.json` independently
content-addresses the resulting 24-module theorem closure.

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
