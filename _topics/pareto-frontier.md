---
title: Pareto frontier
slug: pareto-frontier
description: The boundary of non-dominated tradeoffs in a multi-objective problem.
one_sentence: A Pareto frontier is the set of attainable objective combinations for which improving one objective requires worsening at least one other objective.
category: Design & optimization
order: 27
read_time: 5 minutes
updated: 2026-07-17
related:
  - optimization
  - generative-design
  - design-space
---
## Working definition

**A Pareto frontier** is the set of non-dominated outcomes in a multi-objective problem. An outcome dominates another if it is at least as good in every objective and strictly better in at least one. A point is Pareto optimal when no feasible point dominates it.

The **Pareto set** contains the corresponding designs in decision space; the **Pareto frontier** contains their outcome vectors in objective space.

> Our stance: a Pareto frontier organizes a decision; it does not make one. Values, uncertainty, constraints, and stakeholder judgment still determine which tradeoff to choose.

In computation we usually see an **approximate front** constructed from evaluated designs. Calling it “the Pareto frontier” is convenient, but it should not be confused with the unknown true frontier.

## How it works

1. Evaluate feasible designs on two or more objectives.
2. Compare objective vectors using Pareto dominance.
3. Remove dominated points.
4. Examine the remaining tradeoff surface for knees, gaps, sensitivity, and diversity.
5. Apply preferences or decision criteria to select a design.

For two minimization objectives, the familiar frontier is the lower-left boundary of a scatterplot. In more dimensions it becomes a surface or manifold and is harder to visualize. Algorithms such as NSGA-II, epsilon-constraint methods, scalarization, and multi-objective Bayesian optimization approximate different regions with different biases.

## When it is useful

Pareto analysis is useful when objectives genuinely conflict: cost versus performance, mass versus stiffness, risk versus reward, or novelty versus feasibility. It keeps tradeoffs visible instead of hiding them inside an arbitrary weighted sum.

It is especially useful in design reviews because it separates two questions: **What tradeoffs are technically attainable?** and **Which tradeoff do we prefer?**

## Common mistakes

- **Calling every plotted point Pareto optimal.** Most sampled designs are usually dominated.
- **Confusing the front with a single “best” point.** Pareto optimality is partial ordering, not a final preference.
- **Ignoring scaling and direction.** Be explicit about minimization, maximization, and units.
- **Overclaiming the true frontier.** A finite algorithm produces an approximation.
- **Selecting only a knee point by habit.** A knee can be useful, but it does not encode stakeholder values or uncertainty.

## Core literature

<ul class="reading-list">
  <li><strong><a href="https://doi.org/10.1007/978-1-4615-5563-6">Nonlinear Multiobjective Optimization</a></strong> — Kaisa Miettinen (1999).<p>A rigorous treatment of Pareto optimality, preferences, and solution methods.</p></li>
  <li><strong><a href="https://doi.org/10.1109/4235.996017">A Fast and Elitist Multiobjective Genetic Algorithm: NSGA-II</a></strong> — Kalyanmoy Deb and colleagues (2002).<p>The most influential computational route to approximate fronts for complex problems.</p></li>
  <li><strong><a href="https://doi.org/10.1017/pds.2023.83">Can Pareto Fronts Meet the Splitting Condition?</a></strong> — Maxime Thomas and colleagues (2023), <em>Proceedings of the Design Society</em>.<p>Asks whether a front supports meaningful design variety, not merely objective-space performance.</p></li>
</ul>

## Further reading and resources

- [Concept Design Trade-Offs Considering Performance Margins](https://www.designsociety.org/publication/39319/) — connects frontiers to engineering safety margins.
- [Achieving Pareto Optimality in a Decentralized Design Environment](https://www.designsociety.org/publication/28719/) — Maria Yang and colleagues on distributed system design.
- [pymoo](https://pymoo.org/) — open-source multi-objective optimization algorithms and visualizations.

### From our group

- [Multi-Objective Optimization and Scenario-Based Robustness Analysis of the MoneyMaker Hip Pump](https://doi.org/10.1016/j.deveng.2018.01.001) — a practical case in which an interpretable trade space matters more than a single nominal optimum.
