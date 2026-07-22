---
title: Topology optimization
slug: topology-optimization
description: Optimizing where material exists within a design domain under loads, constraints, and performance objectives.
one_sentence: Topology optimization determines how material should be distributed within a defined domain to optimize structural or multiphysics performance.
order: 21
read_time: 6 minutes
updated: 2026-07-22
detail_title: Making room for nothing
related:
  - optimization
  - generative-design
  - latent-space
---
## Definition

**Topology optimization** is a class of optimization methods that determines where material should exist inside a prescribed design domain. In structural problems, a common formulation minimizes compliance—equivalently, maximizes stiffness—subject to a volume constraint, loads, supports, and manufacturing or geometric constraints.

Unlike size optimization, which adjusts dimensions, or shape optimization, which moves existing boundaries, topology optimization can create, remove, or reconnect structural members.

> Our stance: topology optimization is not a machine that “discovers nature's shape.” It solves a very specific mathematical model. The result is only as meaningful as the loads, boundary conditions, objectives, material model, mesh, filters, and manufacturing constraints supplied to it.

## Making room for nothing

1. Define a design domain, non-design regions, loads, supports, materials, and objectives.
2. Discretize the domain, often with finite elements.
3. Associate each element or region with a material variable.
4. Analyze performance and compute sensitivities.
5. Update the material distribution while enforcing constraints and regularization.
6. Interpret, reconstruct, and validate the resulting geometry.

Density methods such as SIMP interpolate between void and solid and penalize intermediate densities. Other families use level sets, evolutionary removal/addition, topological derivatives, or explicit features. Multiscale methods also optimize lattices or microstructures within the macroscopic part.

Our MuLaTOVA work pushes that last idea further by choosing macro-scale structure and meso-scale lattice distribution together. The lattice is not decorative infill inserted after the “real” optimization; it participates in the load path. Under complex loading, learned lattice representations can balance diversity with local connectivity and produce structures that outperform solid baselines on stiffness-to-weight ratio.

### Where absence carries load
Topology optimization is especially useful for lightweight load-bearing parts, compliant mechanisms, heat transfer, fluid flow, and multiphysics systems when the load paths are non-obvious and substantial geometric freedom exists. Additive manufacturing expands what can be fabricated, but does not eliminate process constraints or the need for reconstruction.

It is less useful when requirements are poorly formalized, loading is unknown, certification demands a conventional architecture, or downstream interpretation dominates the value of the result.

### Organic-looking is not optimal
- **Using one load case and assuming robustness.** Real parts see uncertainty, misuse, fatigue, and manufacturing variation.
- **Confusing a density field with production geometry.** Thresholding, smoothing, reconstruction, and validation matter.
- **Ignoring mesh dependence and checkerboarding.** Regularization is part of the method, not cosmetic cleanup.
- **Calling every organic-looking CAD output topology optimization.** Appearance is not a method.
- **Assuming additive manufacturing makes every result printable.** Overhang, minimum feature size, support removal, and anisotropy still constrain the design.

## Resources

- **[Topology Optimization: Theory, Methods, and Applications](https://doi.org/10.1007/978-3-662-05086-6)** — Martin Bendsøe and Ole Sigmund (2003). The foundational text for continuum topology optimization.
- **[A 99 Line Topology Optimization Code Written in MATLAB](https://doi.org/10.1007/s001580050176)** — Ole Sigmund (2001), <em>Structural and Multidisciplinary Optimization</em>. A compact implementation that makes the mechanics of density-based optimization inspectable.
- **[Topology Optimization Approaches](https://doi.org/10.1007/s00158-013-0978-6)** — Ole Sigmund and Kurt Maute (2013), <em>Structural and Multidisciplinary Optimization</em>. A broad review of major formulations and computational issues.
- **[State of the Art of Generative Design and Topology Optimization](https://www.designsociety.org/publication/40924/)** — a Design Society comparison that also exposes how often the terms are blurred.
- **[On the Treatment of Requirements in DfAM](https://doi.org/10.1017/pds.2023.282)** — evidence that many industrial requirements cannot be directly encoded in a topology-optimization formulation.
- **[TopOpt](https://www.topopt.mek.dtu.dk/)** — DTU educational material, software, and benchmark implementations.
- **[Multi-Lattice Topology Optimization via Generative Lattice Modeling](https://doi.org/10.1115/1.4067528)** — **From our group.** integrates learned lattice representations with macro- and mesoscale topology optimization.
- **[Smooth Like Butter](https://doi.org/10.1089/3dp.2023.0316)** — **From our group.** evaluates whether a learned latent space actually preserves useful mechanical-property transitions.
{: .reading-list }
