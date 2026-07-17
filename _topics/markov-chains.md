---
title: Markov chains
slug: markov-chains
description: Modeling random transitions among states when the current state contains the relevant history.
one_sentence: A Markov chain is a stochastic process whose next-state distribution depends on the current state, not on the full path used to reach it.
category: Probability & inference
order: 8
read_time: 6 minutes
updated: 2026-07-17
related:
  - hidden-markov-models
  - simulated-annealing
  - agent-based-modeling
---
## Working definition

A **Markov chain** is a stochastic process that moves among states according to transition probabilities. It satisfies the Markov property: conditional on the current state, the probability distribution of the next state does not depend on the earlier history.

> “Memoryless” describes the model’s state representation, not necessarily the physical system. A well-chosen state contains the history needed to predict the next step.

A chain may evolve in discrete steps or continuous time and may have a finite, countable, or continuous state space. The common introductory case is a discrete-time, finite-state chain represented by a transition matrix.

## How it works

For states `i` and `j`, the transition probability `P(i,j)` is the probability that the next state is `j` given that the current state is `i`. In a row-stochastic convention, every row of the transition matrix sums to one.

Given a row vector `p₀` describing the initial state distribution, the distribution after one step is `p₁ = p₀P`; after `n` steps it is `pₙ = p₀Pⁿ`.

Several structural ideas matter:

- **Communicating states:** each state can eventually reach the other.
- **Irreducibility:** all states belong to one communicating class.
- **Periodicity:** returns to a state may be restricted to multiples of a common period.
- **Recurrence and transience:** a state may be revisited indefinitely or eventually left behind.
- **Stationarity:** a distribution `π` is stationary when `πP = π`.

For a finite, irreducible, aperiodic chain, the state distribution converges to a unique stationary distribution regardless of the initial distribution. Outside those conditions, long-run behavior requires more care.

## When it is useful

Markov chains are useful when a system moves among identifiable states and the current state is a sufficient summary for the next transition. Applications include reliability, queues, inventory, population movement, web navigation, board games, finance, epidemiology, and randomized algorithms.

They also provide machinery inside other methods. Hidden Markov models add noisy observations to an unobserved chain. Markov chain Monte Carlo constructs a chain with a desired stationary distribution. Simulated annealing uses a temperature-dependent sequence of Markov chains to search an objective landscape.

## Common mistakes

- **Interpreting memorylessness as independence.** Consecutive states can be strongly dependent; the restriction is about dependence on earlier history after conditioning on the present.
- **Choosing states that omit predictive information.** If transition probabilities still depend on how the system arrived, expand the state or use a higher-order model.
- **Assuming every chain converges.** Reducibility, periodicity, or non-recurrence can prevent the usual stationary conclusion.
- **Mixing row and column conventions.** State the matrix convention before multiplying distributions.
- **Treating estimated transitions as timeless.** A homogeneous chain assumes the same transition law at every step; real systems may drift or respond to interventions.

## Core literature

<ul class="reading-list">
  <li><strong><a href="https://doi.org/10.1007/978-1-4684-9455-6">Finite Markov Chains</a></strong> — John G. Kemeny and J. Laurie Snell (1960), Springer.<p>A classic development of finite-state chains, including absorbing chains and long-run behavior.</p></li>
  <li><strong><a href="https://doi.org/10.1017/CBO9780511810633">Markov Chains</a></strong> — J. R. Norris (1997), Cambridge University Press.<p>A concise, rigorous treatment spanning discrete- and continuous-time chains.</p></li>
  <li><strong><a href="https://bookstore.ams.org/mbk-107/">Markov Chains and Mixing Times</a></strong> — David A. Levin and Yuval Peres, with Elizabeth L. Wilmer (2nd ed., 2017), American Mathematical Society.<p>Develops convergence and mixing through coupling, conductance, and spectral methods.</p></li>
  <li><strong><a href="http://ilpubs.stanford.edu:8090/422/1/1999-66.pdf">The PageRank Citation Ranking: Bringing Order to the Web</a></strong> — Lawrence Page, Sergey Brin, Rajeev Motwani, and Terry Winograd (1999).<p>A widely recognized application in which the stationary distribution of a modified web-navigation chain ranks pages.</p></li>
</ul>

## Further reading and resources

- [Introduction to Probability, Chapter 11](https://projects.iq.harvard.edu/stat110/home) — Joseph Blitzstein and Jessica Hwang’s course materials and freely available textbook.
- [QuantEcon: Finite Markov Chains](https://python.quantecon.org/finite_markov.html) — interactive explanations and Python examples.
- [MIT OpenCourseWare: Discrete Stochastic Processes](https://ocw.mit.edu/courses/6-262-discrete-stochastic-processes-spring-2011/) — graduate-level lectures, notes, and problems.
- [Markov Chains and Mixing Times—author materials](https://pages.uoregon.edu/dlevin/MARKOV/) — a freely available version of the text and related resources.

### From our group

- [Capturing Human Sequence-Learning Abilities in Configuration Design Tasks through Markov Chains](https://doi.org/10.1115/1.4037185) — tests what Markov order is needed to represent designers’ action sequences and whether learned sequences improve search.
