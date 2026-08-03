# Arcs complete outside a prescribed conic: human-scale supplement

`RelativeConicArcs.Gates.ArcsCompleteOutsideConicAdditions` checks two additions to the formal
boundary of *Arcs complete outside a prescribed conic*.

The matching-packing terminals prove that maximum-index concurrence centers give an edge-disjoint
packing by maximum-matching cliques.  A packing one block short necessarily completes, so failure
of the exact matching design forces block deficiency at least two.  The geometric bridge transfers
that deficiency to the integer-normalized prescribed-hole defect.

The finite witness terminals check explicit arcs over fields of orders thirteen, seventeen, and
nineteen.  Lean verifies the two normalization maps and conic pullbacks, all three relative-conic
certificates, the upper bounds eight, nine, and ten, and ordinary completeness of the ten-point
order-nineteen witness.  These are kernel-reduced certificate checks.

The exhaustive classifications giving the matching lower bounds are external computations.  Thus
Lean proves

```text
rhoC (ZMod 13) <= 8
rhoC (ZMod 17) <= 9
rhoC (ZMod 19) <= 10
```

but this gate does not prove the corresponding exact equalities.  It also makes no claim about the
priority citation, a general `(k,n)`-arc identity, the order-eleven affine search, or the proposed
classification of realizable matching designs.

The gate has 23 terminals.  Their expected axiom sets are recorded individually in
`trust/areas/arcs_complete_outside_conic_additions.toml`; no project-local axiom is permitted.  The
33-module source and target closures are content-addressed in
`trust/source-manifests/arcs_complete_outside_conic_additions.json` and
`trust/manifests/arcs_complete_outside_conic_additions.json`.  The target retains the previously
documented removal of private workflow references from `ProjectiveCap.Sym2ConicBridge`; this prose
change alters no declaration.

The generated q16 transition, row, and leaf families are absent from this closure.  The base human
library and the separately pinned `finitegeom-q16-certificates` package retain their existing trust
boundaries.
