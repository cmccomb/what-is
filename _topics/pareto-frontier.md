---
title: Pareto frontier
slug: pareto-frontier
description: The boundary of non-dominated tradeoffs in a multi-objective problem.
one_sentence: A Pareto frontier is the set of attainable objective combinations for which improving one objective requires worsening at least one other objective.
order: 27
read_time: 5 minutes
updated: 2026-07-22
detail_title: Nothing dominates
related:
  - optimization
  - generative-design
  - design-space
---
## Definition

**A Pareto frontier** is the set of non-dominated outcomes in a multi-objective problem. An outcome dominates another if it is at least as good in every objective and strictly better in at least one. A point is Pareto optimal when no feasible point dominates it.

The **Pareto set** contains the corresponding designs in decision space; the **Pareto frontier** contains their outcome vectors in objective space.

> Our stance: a Pareto frontier organizes a decision; it does not make one. Values, uncertainty, constraints, and stakeholder judgment still determine which tradeoff to choose.

In computation we usually see an **approximate front** constructed from evaluated designs. Calling it “the Pareto frontier” is convenient, but it should not be confused with the unknown true frontier.

## Nothing dominates

1. Evaluate feasible designs on two or more objectives.
2. Compare objective vectors using Pareto dominance.
3. Remove dominated points.
4. Examine the remaining tradeoff surface for knees, gaps, sensitivity, and diversity.
5. Apply preferences or decision criteria to select a design.

For two minimization objectives, the familiar frontier is the lower-left boundary of a scatterplot. In more dimensions it becomes a surface or manifold and is harder to visualize. Algorithms such as NSGA-II, epsilon-constraint methods, scalarization, and multi-objective Bayesian optimization approximate different regions with different biases.

### What the frontier makes visible
Pareto analysis is useful when objectives genuinely conflict: cost versus performance, mass versus stiffness, risk versus reward, or novelty versus feasibility. It keeps tradeoffs visible instead of hiding them inside an arbitrary weighted sum.

It is especially useful in design reviews because it separates two questions: **What tradeoffs are technically attainable?** and **Which tradeoff do we prefer?**

Our MoneyMaker hip-pump work is the kind of case I want students to remember: multi-objective optimization exposed designs that reduced cost by as much as 37% while preserving required flow, then physical tests and scenario-based robustness analysis checked whether the promising tradeoffs survived contact with the world. The frontier organized the engineering judgment; it did not replace it.

### The frontier does not choose for you
- **Calling every plotted point Pareto optimal.** Most sampled designs are usually dominated.
- **Confusing the front with a single “best” point.** Pareto optimality is partial ordering, not a final preference.
- **Ignoring scaling and direction.** Be explicit about minimization, maximization, and units.
- **Overclaiming the true frontier.** A finite algorithm produces an approximation.
- **Selecting only a knee point by habit.** A knee can be useful, but it does not encode stakeholder values or uncertainty.

## Resources

- **[Nonlinear Multiobjective Optimization](https://doi.org/10.1007/978-1-4615-5563-6)** — Kaisa Miettinen (1999). A rigorous treatment of Pareto optimality, preferences, and solution methods.
- **[A Fast and Elitist Multiobjective Genetic Algorithm: NSGA-II](https://doi.org/10.1109/4235.996017)** — Kalyanmoy Deb and colleagues (2002). The most influential computational route to approximate fronts for complex problems.
- **[Can Pareto Fronts Meet the Splitting Condition?](https://doi.org/10.1017/pds.2023.83)** — Maxime Thomas and colleagues (2023), <em>Proceedings of the Design Society</em>. Asks whether a front supports meaningful design variety, not merely objective-space performance.
- **[Concept Design Trade-Offs Considering Performance Margins](https://www.designsociety.org/publication/39319/)** — connects frontiers to engineering safety margins.
- **[Achieving Pareto Optimality in a Decentralized Design Environment](https://www.designsociety.org/publication/28719/)** — Maria Yang and colleagues on distributed system design.
- **[pymoo](https://pymoo.org/)** — open-source multi-objective optimization algorithms and visualizations.
- **[Multi-Objective Optimization and Scenario-Based Robustness Analysis of the MoneyMaker Hip Pump](https://doi.org/10.1016/j.deveng.2018.01.001)** — **From our group.** a practical case in which an interpretable trade space matters more than a single nominal optimum.
{: .reading-list }
