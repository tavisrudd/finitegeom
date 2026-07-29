# Release provenance

`SOURCE_MANIFEST.json` content-addresses the 26-module preparation input for
the foundational release by module name, relative path, byte count, and
SHA-256. The release applies the reviewed transformations below.
`TARGET_MANIFEST.json` independently content-addresses the complete reviewed
239-module library state. Per-area source and target manifests preserve the
exact boundaries of later additions.

These records document the release boundary; neither manifest is a build
input, and the formal claims are checked entirely from files present in this
repository.

## Residual-grid certificate API

Version 0.2 includes four human-readable support modules used by the separate
projective-cap q=11 and q=13 certificate packages:

- `ProjectiveCap/Almost/OddEscape.lean`;
- `ProjectiveCap/StableFacts.lean`;
- `ProjectiveCap/Certificate.lean`; and
- `ProjectiveCap/CertCheck.lean`.

The first two retain compatibility propositions used by the generated
certificate assemblies.  The canonical game and extension-count declarations
remain in `ProjectiveCap.GridGame` and `ProjectiveCap.ExtensionCount`;
`ProjectiveCap.EscapeParity`, `ProjectiveCap.ConicLocalization`, and
`ProjectiveCap.ExtensionCount` use those canonical declarations directly.
`ProjectiveCap.Certificate` states the semantic reply-book interface, while
`ProjectiveCap.CertCheck` proves its Boolean checker sound.

Version 0.2 also includes the seven human-readable `FiniteGeom.Completion` and
`FiniteGeom.BaerCompletion` modules used by the separate q=25 certificate
package.  The generated q=25 finite tables remain outside this repository.

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

For `v0.1.0`, module headers and declaration documentation describe the
mathematical objects, hypotheses, conclusions, and trust boundaries.
Cross-module declarations and all seven terminal theorems have self-contained
docstrings.  That review covers every Lean file in the 24-module foundational
closure.

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

## Later human-scale paper boundaries

The AME–LU, Beyond-4 PRS, Clebsch-rigidity-human, and Clebsch-factorization
states are exact reviewed deltas over the preceding library state. Their
source and target manifests live under `trust/source-manifests/` and
`trust/manifests/`, and their observed terminal axiom sets are recorded under
`trust/areas/`.

The public AME–LU target replaces three uses of `native_decide` for small
finite graph cardinalities with kernel-reduced `decide`, together with
explicit resource bounds for that elaboration. This removes the three trusted
native-evaluation axioms from the five affected terminal closures.

The Clebsch rigidity target replaces the generated-data-consuming paper gate
with `RelativeConicArcs.Gates.ClebschRigidityHuman`. The original complete
paper gate is retained downstream in the separately versioned q11 certificate
package. The main library retains `RelativeConicArcs.Q11DyeAxioms`, the
human-readable boundary for the two explicitly cited consequences of Dye's
1991 classification required by `RelativeConicArcs.SixArcDefectBridge`; the
generated order-eleven orbit/action family remains downstream.

## Complete bounded repair ports

The complete-ports boundary adds the finite-geometry and coding interfaces
used by the coefficient-port construction, intrinsic reconstruction radius,
MDS reconstruction, pointed transfer, reliability, and bounded-radius erasure
calculus. It also includes the symbolic pointed rank-sum specialization and
the radius-three overlap witness.

The source and target closures are recorded separately in
`trust/source-manifests/complete_ports.json` and
`trust/manifests/complete_ports.json`. The source manifest records
`RepairPorts.PointedTutte` as a second root at its source commit. The target
gate imports that committed module and prints its six paper-facing terminals.
Other target-only edits remove private workflow references from explanatory
prose. No theorem statement is changed.
