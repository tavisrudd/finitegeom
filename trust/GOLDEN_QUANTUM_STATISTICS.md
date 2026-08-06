# Golden six-mode conference interferometer: symbolic formal artifact

This boundary records the symbolic order-six identities accompanying Tavis
Rudd, *Orientation, exchange statistics, and rigidity in the Golden six-mode
conference interferometer* (DOI 10.5281/zenodo.21766748).

The exact project-local closure is rooted at
`RelativeConicArcs.Gates.GoldenQuantumStatistics`
and consists of:

- `RelativeConicArcs.ConferenceExchangeSpectrum`
- `RelativeConicArcs.Gates.GoldenQuantumStatistics`
- `RelativeConicArcs.GoldenBalancedCut`

## Formal correspondence

The exported closure proves, over an arbitrary commutative ring, the entrywise
identity for the square of a signed triangle block with unit off-diagonal
entries, the determinant of the associated cross Gram matrix, its trace
contraction, and the fourth conference-word trace obtained from that
contraction.  These are the scalar identities used inside the structural
three-plus-three balanced-cut argument.

This formal artifact does not prove the all-orders conference exchange rigidity
classification, the aligned-design mean and variance, the continuous-control
optimum, the Hermitian exchange landscape, the squared-spectrum rigidity and
stability bounds, the balance obstruction, the optical compilation, the
tomographic identifiability statements, or any experimental threshold.  Those
results are established in the accompanying paper by ordinary mathematical
proof, cited literature, or exact certificate computation.

## Trust boundary

Every terminal is a symbolic kernel proof over a commutative ring, checked by
Mathlib's ring normalization.  The closure contains no generated certificate,
native evaluation, imported external data, user axiom, unsafe declaration, or
admitted proof.

The observed axiom set of every terminal below is contained in `Classical.choice`, `Quot.sound`, `propext`.
Source and candidate bytes are recorded in
`trust/source-manifests/golden_quantum_statistics.json` and
`trust/manifests/golden_quantum_statistics.json`.

## Terminals

- `RelativeConicArcs.ConferenceExchange.balancedExchange_benchmark`
- `RelativeConicArcs.ConferenceExchange.charpoly_normalizedExchange`
- `RelativeConicArcs.ConferenceExchange.crossGram_eq`
- `RelativeConicArcs.ConferenceExchange.principal_sq_add_crossGram`
- `RelativeConicArcs.ConferenceExchange.roots_charpoly_normalizedExchange`
- `RelativeConicArcs.ConferenceExchange.schurWeyl_checksum`
- `RelativeConicArcs.ConferenceExchange.signedTriangle_sq`
- `RelativeConicArcs.ConferenceExchange.spectrum_normalizedExchange`
- `RelativeConicArcs.GoldenBalancedCut.crossGramDet_eq_sixteen`
- `RelativeConicArcs.GoldenBalancedCut.fourthWordTrace_from_block_formula`
- `RelativeConicArcs.GoldenBalancedCut.signedTriangle_sq_entries`
- `RelativeConicArcs.GoldenBalancedCut.traceContraction_eq_twelve`
