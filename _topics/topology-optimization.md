---
title: Topology optimization
slug: topology-optimization
description: Optimizing where material exists within a design domain under loads, constraints, and performance objectives.
one_sentence: Topology optimization determines how material should be distributed within a defined domain to optimize structural or multiphysics performance.
category: Design & optimization
order: 21
read_time: 6 minutes
updated: 2026-07-17
related:
  - optimization
  - generative-design
  - latent-space
---
## Working definition

**Topology optimization** is a class of optimization methods that determines where material should exist inside a prescribed design domain. In structural problems, a common formulation minimizes compliance—equivalently, maximizes stiffness—subject to a volume constraint, loads, supports, and manufacturing or geometric constraints.

Unlike size optimization, which adjusts dimensions, or shape optimization, which moves existing boundaries, topology optimization can create, remove, or reconnect structural members.

> Our stance: topology optimization is not a machine that “discovers nature's shape.” It solves a very specific mathematical model. The result is only as meaningful as the loads, boundary conditions, objectives, material model, mesh, filters, and manufacturing constraints supplied to it.

## How it works

1. Define a design domain, non-design regions, loads, supports, materials, and objectives.
2. Discretize the domain, often with finite elements.
3. Associate each element or region with a material variable.
4. Analyze performance and compute sensitivities.
5. Update the material distribution while enforcing constraints and regularization.
6. Interpret, reconstruct, and validate the resulting geometry.

Density methods such as SIMP interpolate between void and solid and penalize intermediate densities. Other families use level sets, evolutionary removal/addition, topological derivatives, or explicit features. Multiscale methods also optimize lattices or microstructures within the macroscopic part.

## When it is useful

Topology optimization is especially useful for lightweight load-bearing parts, compliant mechanisms, heat transfer, fluid flow, and multiphysics systems when the load paths are non-obvious and substantial geometric freedom exists. Additive manufacturing expands what can be fabricated, but does not eliminate process constraints or the need for reconstruction.

It is less useful when requirements are poorly formalized, loading is unknown, certification demands a conventional architecture, or downstream interpretation dominates the value of the result.

## Common mistakes

- **Using one load case and assuming robustness.** Real parts see uncertainty, misuse, fatigue, and manufacturing variation.
- **Confusing a density field with production geometry.** Thresholding, smoothing, reconstruction, and validation matter.
- **Ignoring mesh dependence and checkerboarding.** Regularization is part of the method, not cosmetic cleanup.
- **Calling every organic-looking CAD output topology optimization.** Appearance is not a method.
- **Assuming additive manufacturing makes every result printable.** Overhang, minimum feature size, support removal, and anisotropy still constrain the design.

## Core literature

<ul class="reading-list">
  <li><strong><a href="https://doi.org/10.1007/978-3-662-05086-6">Topology Optimization: Theory, Methods, and Applications</a></strong> — Martin Bendsøe and Ole Sigmund (2003).<p>The foundational text for continuum topology optimization.</p></li>
  <li><strong><a href="https://doi.org/10.1007/s001580050176">A 99 Line Topology Optimization Code Written in MATLAB</a></strong> — Ole Sigmund (2001), <em>Structural and Multidisciplinary Optimization</em>.<p>A compact implementation that makes the mechanics of density-based optimization inspectable.</p></li>
  <li><strong><a href="https://doi.org/10.1007/s00158-013-0978-6">Topology Optimization Approaches</a></strong> — Ole Sigmund and Kurt Maute (2013), <em>Structural and Multidisciplinary Optimization</em>.<p>A broad review of major formulations and computational issues.</p></li>
</ul>

## Further reading and resources

- [State of the Art of Generative Design and Topology Optimization](https://www.designsociety.org/publication/40924/) — a Design Society comparison that also exposes how often the terms are blurred.
- [On the Treatment of Requirements in DfAM](https://doi.org/10.1017/pds.2023.282) — evidence that many industrial requirements cannot be directly encoded in a topology-optimization formulation.
- [TopOpt](https://www.topopt.mek.dtu.dk/) — DTU educational material, software, and benchmark implementations.

### From our group

- [Multi-Lattice Topology Optimization via Generative Lattice Modeling](https://doi.org/10.1115/1.4067528) — integrates learned lattice representations with macro- and mesoscale topology optimization.
- [Smooth Like Butter](https://doi.org/10.1089/3dp.2023.0316) — evaluates whether a learned latent space actually preserves useful mechanical-property transitions.
