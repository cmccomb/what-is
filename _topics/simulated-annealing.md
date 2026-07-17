---
title: Simulated annealing
slug: simulated-annealing
description: A stochastic search method that sometimes accepts worse moves to escape local optima.
one_sentence: Simulated annealing is a stochastic optimization method that gradually reduces its willingness to accept worse solutions as the search proceeds.
category: Design & optimization
order: 6
read_time: 6 minutes
updated: 2026-07-17
related:
  - configuration-design
  - markov-chains
---
## Working definition

**Simulated annealing** is a stochastic local-search algorithm for optimization. It repeatedly proposes a nearby solution. Improvements are accepted; worse moves may also be accepted, with a probability that decreases with both the size of the loss and a control parameter called temperature. The temperature is lowered over time.

> Early in the search, simulated annealing explores. Later, it behaves more like greedy local improvement.

The method is inspired by physical annealing, in which a material is heated and then cooled slowly enough to approach a low-energy structure. In optimization, the objective function plays the role of energy, candidate designs are states, and random design modifications are thermal fluctuations.

## How it works

For a minimization problem, one iteration is:

1. Start from a current solution `x` at temperature `T`.
2. Sample a neighboring candidate `x′`.
3. Compute the objective change `Δ = f(x′) − f(x)`.
4. If `Δ ≤ 0`, accept the candidate.
5. If `Δ > 0`, accept it with probability `exp(−Δ/T)`.
6. Reduce `T` according to a cooling schedule and repeat.

Three design choices determine most of the practical behavior:

- **Neighborhood:** which changes can be proposed and how large they are.
- **Temperature scale:** how objective changes translate into acceptance probabilities.
- **Cooling schedule:** how quickly exploration gives way to exploitation.

The current solution and the best solution seen should be stored separately. A worse move can be useful for exploration, but it should not erase the best known result.

## When it is useful

Simulated annealing is useful for discrete, combinatorial, or mixed design spaces with many local optima and no convenient derivatives. It is attractive when a feasible neighbor can be generated cheaply and when an exact global method is impractical.

Applications include routing, scheduling, layout, graph partitioning, configuration design, parameter tuning, and engineering synthesis. It is less compelling for smooth convex problems, where gradient-based methods exploit much more structure, or when objective evaluations are so costly that uninformed proposals waste the available budget.

## Common mistakes

- **Using an arbitrary temperature scale.** Temperature only has meaning relative to typical objective changes. Calibrate it from sampled moves or target acceptance rates.
- **Cooling too quickly.** The search freezes near its starting basin and becomes ordinary hill climbing.
- **Cooling too slowly without a budget.** Theoretical convergence schedules can be unusably conservative.
- **Choosing a disconnected neighborhood.** If proposals cannot reach every relevant part of the feasible space, no schedule can repair the search.
- **Handling constraints only with huge penalties.** Repair operators or feasibility-preserving moves often explore constrained spaces more effectively.

## Core literature

<ul class="reading-list">
  <li><strong><a href="https://doi.org/10.1063/1.1699114">Equation of State Calculations by Fast Computing Machines</a></strong> — Nicholas Metropolis and colleagues (1953), <em>The Journal of Chemical Physics</em>.<p>Introduces the acceptance mechanism that later became the computational core of simulated annealing.</p></li>
  <li><strong><a href="https://doi.org/10.1126/science.220.4598.671">Optimization by Simulated Annealing</a></strong> — Scott Kirkpatrick, C. Daniel Gelatt Jr., and Mario P. Vecchi (1983), <em>Science</em>.<p>Establishes the statistical-mechanics analogy and demonstrates it on difficult combinatorial optimization problems.</p></li>
  <li><strong><a href="https://doi.org/10.1007/BF00940812">Thermodynamical Approach to the Traveling Salesman Problem: An Efficient Simulation Algorithm</a></strong> — Vladimír Černý (1985), <em>Journal of Optimization Theory and Applications</em>.<p>An independent foundational development focused on the traveling-salesperson problem.</p></li>
  <li><strong><a href="https://doi.org/10.1007/978-94-015-7744-1">Simulated Annealing and Boltzmann Machines</a></strong> — Emile Aarts and Jan Korst (1989), Wiley.<p>A systematic treatment of theory, implementation choices, and applications.</p></li>
</ul>

## Further reading and resources

- [SciPy `dual_annealing`](https://docs.scipy.org/doc/scipy/reference/generated/scipy.optimize.dual_annealing.html) — a maintained implementation for bounded continuous optimization.
- [Handbook of Metaheuristics](https://doi.org/10.1007/978-1-4419-1665-5) — places simulated annealing alongside tabu search, evolutionary methods, and other metaheuristics.
- [Google OR-Tools routing guides](https://developers.google.com/optimization/routing) — practical combinatorial problems where annealing-like local search can be compared with more structured methods.

### From our group

- [Drawing Inspiration from Human Design Teams for Better Search and Optimization](https://doi.org/10.1115/1.4032810) — introduces heterogeneous simulated annealing teams (HSAT), which translate observed characteristics of human design teams into a multi-agent search algorithm.
