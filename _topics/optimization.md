---
title: Optimization
slug: optimization
description: Formal search for the best feasible design relative to explicit objectives and constraints.
one_sentence: Optimization is the formal search for one or more feasible solutions that are best according to stated objective functions.
category: Design & optimization
order: 16
read_time: 6 minutes
updated: 2026-07-17
related:
  - design-space
  - pareto-frontier
  - simulated-annealing
---
## Working definition

**Optimization** is the formal process of choosing decision variables to minimize or maximize one or more objective functions while satisfying constraints. A complete optimization problem names the variables, their domains, the objectives, the constraints, and the model that connects decisions to outcomes.

> Our stance: an optimizer returns what you asked for, not what you meant. The intellectual work is usually in formulating the problem and validating the model—not pressing “solve.”

Optimization can be continuous, discrete, or mixed; deterministic or stochastic; constrained or unconstrained; single- or multi-objective. The result may be a provable global optimum, a local optimum, a non-dominated set, or simply the best candidate found within a computational budget. Those are not interchangeable claims.

## How it works

1. Define decision variables \(x\) and their allowable domains.
2. Define an objective \(f(x)\), or several objectives, that encode preferred outcomes.
3. Define equality and inequality constraints that mark feasible designs.
4. Choose models for evaluating objectives and constraints.
5. Select an algorithm whose assumptions match the problem structure.
6. test convergence, feasibility, sensitivity, and robustness of the result.

Gradient-based methods exploit derivatives and can be extremely efficient on smooth problems. Derivative-free methods, evolutionary algorithms, Bayesian optimization, and metaheuristics are useful when evaluations are noisy, discontinuous, expensive, or mixed discrete-continuous. No method is best for every formulation.

## When it is useful

Optimization is useful when preferences can be made explicit enough to compare candidates and when evaluation is reliable enough to guide search. It supports sizing, scheduling, topology, control, resource allocation, configuration, and trade-space analysis.

It is a poor substitute for problem framing. If the objective omits safety, equity, manufacturability, maintainability, or human judgment, optimization does not make those concerns disappear; it makes them invisible.

## Common mistakes

- **Optimizing a proxy without checking the real goal.** Goodhart's law is a design problem.
- **Reporting “the optimum” without qualification.** State whether it is local, global, approximate, or best observed.
- **Treating constraints as afterthoughts.** Constraint handling often defines the practical problem.
- **Ignoring uncertainty.** A sharp optimum under nominal assumptions may be a brittle design.
- **Choosing an algorithm by popularity.** Match the solver to smoothness, dimensionality, discreteness, noise, and evaluation cost.

## Core literature

<ul class="reading-list">
  <li><strong><a href="https://web.stanford.edu/~boyd/cvxbook/">Convex Optimization</a></strong> — Stephen Boyd and Lieven Vandenberghe (2004).<p>A clear foundation for the important class of problems where local optimality is global optimality.</p></li>
  <li><strong><a href="https://doi.org/10.1007/978-0-387-40065-5">Numerical Optimization</a></strong> — Jorge Nocedal and Stephen Wright (2nd ed., 2006).<p>The standard reference for modern continuous optimization algorithms and their assumptions.</p></li>
  <li><strong><a href="https://doi.org/10.1109/4235.996017">A Fast and Elitist Multiobjective Genetic Algorithm: NSGA-II</a></strong> — Kalyanmoy Deb and colleagues (2002), <em>IEEE Transactions on Evolutionary Computation</em>.<p>A landmark algorithm for approximating non-dominated solutions in multi-objective problems.</p></li>
</ul>

## Further reading and resources

- [Engineering Optimization: Theory and Practice](https://doi.org/10.1002/9781119454816) — Singiresu Rao's engineering-centered reference.
- [NEOS Guide](https://neos-guide.org/) — a practical map of optimization problem types and solvers.
- [OpenMDAO](https://openmdao.org/) — an open framework for multidisciplinary design analysis and optimization.

### From our group

- [Drawing Inspiration From Human Design Teams for Better Search and Optimization](https://doi.org/10.1115/1.4032810) — turns observations of heterogeneous design teams into a multi-agent optimization algorithm.
- [Reinforcement Learning for Efficient Design Space Exploration](https://doi.org/10.1115/1.4056297) — studies the quality–cost tradeoff when an optimizer learns across models of different fidelity.
