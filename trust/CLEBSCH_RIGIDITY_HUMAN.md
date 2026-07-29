# Clebsch rigidity: human-scale library

`RelativeConicArcs.Gates.ClebschRigidityHuman` checks the reusable
chord-defect identity, small-arc reductions, and the explicit order-nine
Sylvester certificate. It deliberately excludes the generated order-eleven
A5 orbit/action family.

The complete paper gate and its q11 terminals live in the downstream
`finitegeom-clebsch-q11-certificates` package, which depends one-way on this
library. The 27-module human source and target boundaries are recorded in
`trust/source-manifests/clebsch_rigidity_human.json` and
`trust/manifests/clebsch_rigidity_human.json`.
