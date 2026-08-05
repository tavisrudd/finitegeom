# finitegeom

[![DOI](https://zenodo.org/badge/1315103176.svg)](https://doi.org/10.5281/zenodo.21650878)

`finitegeom` is a Lean 4 formalization library for finite geometry, coding
theory, and their interactions with algebra, combinatorics, and quantum
information. It is the public formal companion to a paper programme covering:

- [arithmetic and harmonic realizations of the Clebsch cubic](https://github.com/tavisrudd/clebsch-passages);
- [rigidity](https://github.com/tavisrudd/clebsch-rigidity) and
  [factorization](https://github.com/tavisrudd/clebsch-factorization)
  phenomena around the Clebsch configuration;
- [arcs complete outside a prescribed conic](https://github.com/tavisrudd/arcs-complete-outside-conic);
- [deep holes of projective Reed–Solomon codes beyond redundancy four](https://github.com/tavisrudd/beyond4-prs);
- [local-unitary rigidity of stabilizer AME states and MDS–CSS codes](https://github.com/tavisrudd/ame-lu);
  and
- exact transfer, reliability, and geometry of bounded repair ports.

Each paper-facing release has an explicit import boundary, terminal-theorem
ledger, expected axiom sets, and content-addressed source manifest. Large
finite classifications are kept in separately pinned certificate packages so
that the main library remains readable and reviewable.

## Release states

The archived `v0.1.0` state is the reusable finite-geometry foundation. Its
terminal claims establish:

- the second-player outcome for finite affine cap placement;
- the corresponding outcome for positive-dimensional binary projective
  spaces;
- the fixed-point-free projective-involution mirror principle and its
  odd-cardinality, even-vector-rank consequence; and
- the rank-three projective outcomes over fields of even cardinality and over
  fields of cardinality five and seven.

These foundational results also support Tavis Rudd's manuscript in
preparation, *Achievement games in the Nofil genus — outcome classes of
cap/Nofil games on finite geometries*.

The next reviewed states add two symbolic mechanisms accompanying
*Arithmetic and harmonic realizations of the Clebsch cubic*: localized
splitting of an involutive algebra by an odd unit, and the equivalence between
the sum-zero five-vertex module and the Petersen graph's four-dimensional
minus-two eigenspace. The paper does not use Lean as a premise for any
manuscript theorem; the exact correspondence and exclusions are recorded in
[`trust/CLEBSCH_PASSAGES.md`](trust/CLEBSCH_PASSAGES.md).

They also add the human-scale formal library accompanying *Arcs complete
outside a prescribed conic*. This boundary includes the general geometry,
moment and reconstruction arguments, small-field witnesses, and the
kernel-checked bound `8 ≤ rho_C(16) ≤ 9`. The generated exhaustive
classification proving the exact value at order 16 is deliberately isolated
in the separately versioned
[`finitegeom-q16-certificates`](https://github.com/tavisrudd/finitegeom-q16-certificates)
repository. See
[`trust/ARCS_COMPLETE_OUTSIDE_CONIC.md`](trust/ARCS_COMPLETE_OUTSIDE_CONIC.md).
The separate
[`trust/ARCS_COMPLETE_OUTSIDE_CONIC_ADDITIONS.md`](trust/ARCS_COMPLETE_OUTSIDE_CONIC_ADDITIONS.md)
records the matching-packing defect transfer and the kernel-checked upper
witnesses at orders 13, 17, and 19. Their exhaustive lower classifications
remain external computations.

The `v0.2.0` release further includes the complete human-scale boundaries for:

- stabilizer AME states, MDS–CSS codes, and local-unitary rigidity;
- projective Reed–Solomon deep holes through redundancy seven;
- the chord-defect and small-field core of Clebsch rigidity;
- the arithmetic-gluing, Hilbert-symmetry, and hyperplane-square mechanisms
  for Clebsch factorization; and
- coefficient-port reconstruction, pointed transfer, reliability,
  bounded-radius erasure calculus, and the pointed rank-sum specialization
  for complete bounded repair ports.

The generated Clebsch order-eleven orbit/action family remains in the
downstream
[`finitegeom-clebsch-q11-certificates`](https://github.com/tavisrudd/finitegeom-clebsch-q11-certificates)
package, just as the generated order-sixteen Arcs classification does.

The current forward state adds the reusable Paper I proof spine: affine-prism
line bounds, the antipodal orientation cover, golden orbital and determinant
pencil, trace dual and ordinary nodes, structural `S5/A5` recovery, and the
rational and integral commutants.  The commutant classification uses an
explicit proposition-valued interface for the classical conjugate `3+3'`
decomposition and Schur--Galois descent; golden equivariance and integral
descent are kernel checked.

The `v0.3.0` release adds the 13-module structural companion to *Arithmetic
and harmonic realizations of the Clebsch cubic*.  It formalizes the paper's
pinching, involutive-splitting, golden-character, conference, marked-sign,
Petersen-kernel, and cubic-normalization mechanisms.  The gate records only
partial mechanism coverage: the global incidence and chart identifications,
face-axis geometry, spherical addition theorem, raw moment, and integral
Mukai--Umemura comparison remain outside Lean.  See
[`trust/CLEBSCH_PASSAGES.md`](trust/CLEBSCH_PASSAGES.md).

## Foundation claim map

| Manuscript role | Lean declaration |
|---|---|
| Affine cap theorem (`thm:affine-cap`) | `CapGame.Affine.initialP_fin` |
| Binary projective cap theorem | `ProjectiveCap.Projective.initialPStatement_binary_of_projectiveDim_ge_one` |
| General projective mirror theorem | `ProjectiveCap.Projective.initialPStatement_of_fixedPointFree_collinearity_preserving_involution` |
| Odd-field, even-vector-rank consequence | `ProjectiveCap.Projective.initialPStatement_of_odd_card_finrank_eq_two_mul` |
| Even-field projective-plane theorem | `ProjectiveCap.initialPStatement_of_even_card_finrank` |
| Projective plane of order five | `ProjectiveCap.ConicLocalization.initialPStatement_of_card_eq_five_finrank` |
| Projective plane of order seven | `ProjectiveCap.ConicLocalization.initialPStatement_of_card_eq_seven_finrank` |

The exact import closures and expected axiom sets are recorded in
[`trust/FIRST_TAG.md`](trust/FIRST_TAG.md) and
[`trust/areas/finitegeom_first_tag.toml`](trust/areas/finitegeom_first_tag.toml).
None of these seven terminal claims depends on generated certificate data or
external solver output.

## Reproduce the formal checks

The repository pins Lean through `lean-toolchain`, Mathlib through
`lakefile.toml` and `lake-manifest.json`, and the optional Nix development
environment through `flake.lock`.

With Nix, a plain `lake build` elaborates all seven public libraries.  The
following commands select the paper-facing terminals and axiom audits:

```sh
nix develop
lake exe cache get
lake build CapGame.Affine ProjectiveCap.Binary \
  ProjectiveCap.EllipticMirror ProjectiveCap.PlaneOutcome \
  RelativeConicArcs.Gates.ClebschOrientationMechanisms \
  RelativeConicArcs.Gates.ClebschPassages \
  RelativeConicArcs.Gates.ArcsCompleteOutsideConicHuman \
  RelativeConicArcs.Gates.ArcsCompleteOutsideConicAdditions \
  RelativeConicArcs.Gates.AMELUAggregateAxioms \
  RelativeConicArcs.Gates.PRSBeyondRedundancyFourAxiomAudit \
  RelativeConicArcs.Q11DyeAxioms \
  RelativeConicArcs.SixArcDefectBridge \
  RelativeConicArcs.Gates.ClebschRigidityHuman \
  RelativeConicArcs.Gates.ClebschArithmeticGluing \
  RelativeConicArcs.Gates.ClebschHilbertSymmetry \
  RelativeConicArcs.Gates.ClebschHyperplaneSquare \
  RepairPorts.Gates.CompletePorts
lake env lean trust/AxiomAudit.lean
lake env lean trust/ClebschPassagesAxiomAudit.lean
lake env lean trust/ArcsCompleteOutsideConicHumanAxiomAudit.lean
lake env lean trust/ArcsCompleteOutsideConicAdditionsAxiomAudit.lean
```

Without Nix, install `elan`, then run the same `lake` commands. The
toolchain named in `lean-toolchain` is selected automatically. The Paper III
audit additionally reports declaration-local native-decision axioms for the
finite matrices, vectors, signs, and `F_11` leaf disclosed by its gate.  The
other audits listed above report only `propext`, `Classical.choice`, and
`Quot.sound`; no project-local axiom is used by those audited terminals. The
separate `RelativeConicArcs.Q11DyeAxioms` boundary states two explicitly cited
external classification inputs; see
[`trust/CLEBSCH_RIGIDITY_HUMAN.md`](trust/CLEBSCH_RIGIDITY_HUMAN.md).

On Linux, `nix develop .#fhs` is also available for systems that need an
FHS-compatible shell. The default shell is available on x86-64 Linux, AArch64
Linux, and Apple Silicon macOS.

## Repository layout

- `CapGame/`, `FiniteGeom/`, `ProjectiveCap/`, `RelativeConicArcs/`,
  `RepairCodes/`, `RepairPorts/`, and `Sumfree/` contain the reviewed Lean
  sources.
- `trust/` contains the claim boundary, terminal ledger, and reproducible
  axiom audit.
- `TARGET_MANIFEST.json` content-addresses the complete 286-module reviewed
  library state; the exact 24-module foundation is archived as `v0.1.0`.
- `trust/manifests/clebsch_passages.json` content-addresses the three-module
  symbolic state added after `v0.1.0`; in `v0.3.0` it records the superseding
  13-module structural closure.
- `trust/manifests/arcs_complete_outside_conic_human.json` content-addresses
  the 77-module human Arcs boundary.
- `trust/manifests/clebsch_support_cubic_orientation.json` records the golden
  orientation boundary of the Clebsch support cubic, including the antipodal
  cover, the determinant pencil, the cross-golden trace dual, and the six
  ordinary nodes.
- `trust/manifests/clebsch_six_arc_concurrence.json` records the separate
  six-arc triple-concurrence boundary: the ten-point bound over any field in
  which two is invertible, the chord-matching bijection and one-factorization of
  the equality case, the golden normal form and the golden root it forces, and
  the order-eleven identification with the displayed witness.  It shares no
  module with the orientation boundary above.
- `trust/manifests/mds_css_transversal_groups.json` records the diagonal
  isoduality boundary: the multiplier line and nullity test, the exact
  fixed-party transversal logical group it selects, the admitted-pencil
  quotient, the syndrome geometry, and the transport divisor.
- The remaining files under `trust/manifests/` preserve the separate AME–LU,
  PRS, Clebsch-rigidity-human, Clebsch-factorization, and complete-ports
  boundaries.
- The projective-cap generated certificates are distributed as separate
  [q=11](https://github.com/tavisrudd/finitegeom-projective-cap-q11-certificates)
  and [q=13](https://github.com/tavisrudd/finitegeom-projective-cap-q13-certificates)
  packages; their shared semantic checker is under `ProjectiveCap/`.
- The generated q=25 tables are distributed in
  [`finitegeom-q25-certificates`](https://github.com/tavisrudd/finitegeom-q25-certificates);
  their human-readable completion and Baer-completion interfaces are under
  `FiniteGeom/`.
- `SOURCE_MANIFEST.json` and [`PROVENANCE.md`](PROVENANCE.md) record the
  source-to-release preparation boundary; they are not build inputs.

## Citation

Cite this repository using [`CITATION.cff`](CITATION.cff) and the
version-independent Zenodo DOI
[`10.5281/zenodo.21650878`](https://doi.org/10.5281/zenodo.21650878). The
preferred repository URL is <https://github.com/tavisrudd/finitegeom>.

## License

This project is licensed under the Apache License 2.0. See
[`LICENSE`](LICENSE).
