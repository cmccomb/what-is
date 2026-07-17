---
title: Configuration design
slug: configuration-design
description: Selecting and connecting components to produce a feasible, high-performing system architecture.
one_sentence: Configuration design chooses components and their interfaces from a defined catalog to create an assembly that satisfies requirements and constraints.
category: Design & optimization
order: 2
read_time: 6 minutes
updated: 2026-07-17
related:
  - shape-grammars
  - graph-grammars
  - simulated-annealing
  - artificial-intelligence
---
## Working definition

**Configuration design** is the synthesis of a system from predefined component types and allowed interfaces. A solution identifies which components are present, how many instances exist, and how they are connected or arranged so that the resulting artifact satisfies requirements and constraints.

> Configuration design asks, “Which building blocks should be used, and how should they be connected?”

The task sits between open-ended concept generation and parametric design. In concept generation, the building blocks themselves may still be invented. In parametric design, the architecture is largely fixed and continuous dimensions or settings are tuned. Configuration design searches over discrete architectures, although a realistic problem may combine all three forms of design.

## How it works

A configuration problem normally contains:

1. **A component catalog:** types, attributes, ports, and allowable multiplicities.
2. **Connection rules:** which ports or component types may interface.
3. **Requirements:** functions and performance levels the complete system must provide.
4. **Constraints:** compatibility, geometry, capacity, cost, safety, or manufacturing rules.
5. **Objectives:** preferences used to rank feasible alternatives.

The design can be represented as a graph, grammar, constraint-satisfaction problem, mixed-integer program, or another discrete structure. Search then alternates between construction and evaluation: add or connect components, reject infeasible partial designs, estimate performance, and compare surviving configurations.

The central difficulty is combinatorial growth. Even a small catalog can produce an enormous number of possible assemblies. Good methods exploit domain structure through constraint propagation, decomposition, symmetry removal, heuristics, or learned proposal mechanisms.

## When it is useful

Configuration design is useful when a system is assembled from known building blocks but the architecture is undecided. Examples include:

- gear trains, hydraulic circuits, trusses, and power systems;
- product platforms and modular product families;
- manufacturing cells and supply networks;
- computer, telecommunications, and software systems; and
- team structures, workflows, and other organizational architectures.

It is a particularly good framing when feasibility depends on interfaces, not just on the properties of isolated components.

## Common mistakes

- **Calling every design variable a configuration variable.** Component choice and connectivity are discrete architectural decisions; dimensions and operating points are usually parametric decisions.
- **Evaluating only complete designs.** Early constraint propagation can eliminate impossible partial configurations before expensive simulation.
- **Ignoring representation.** A search algorithm cannot recover relationships that the design representation makes impossible or needlessly duplicates.
- **Optimizing before defining feasibility.** A high-performing architecture that violates an interface or safety constraint is not a candidate solution.
- **Treating the catalog as neutral.** The available components and connection rules bound what the design process can discover.

## Core literature

<ul class="reading-list">
  <li><strong><a href="https://www.ijcai.org/Proceedings/89-2/Papers/087.pdf">Towards a Generic Model of Configuration Tasks</a></strong> — Sanjay Mittal and Felix Frayman (1989), <em>Proceedings of IJCAI</em>.<p>A foundational effort to define configuration as a generic design task and identify the knowledge needed to solve it.</p></li>
  <li><strong><a href="https://doi.org/10.1080/09544829308914787">General Framework for Configuration Design: Part 1—Methodology</a></strong> — Sridhar Kota and Chintal Lee (1993), <em>Journal of Engineering Design</em>.<p>Connects functions, performance goals, constraints, and physical components in an engineering configuration method.</p></li>
  <li><strong><a href="https://doi.org/10.3233/EAI-1997-123">An Overview of Knowledge-Based Configuration</a></strong> — Markus Stumptner (1997), <em>AI Communications</em>.<p>Surveys logic-, constraint-, and resource-based approaches to assembling complex systems from components.</p></li>
  <li><strong><a href="https://doi.org/10.1016/0048-7333(94)00775-3">The Role of Product Architecture in the Manufacturing Firm</a></strong> — Karl T. Ulrich (1995), <em>Research Policy</em>.<p>Establishes product architecture as the mapping between functional elements and physical components and explains its downstream consequences.</p></li>
</ul>

## Further reading and resources

- [Joining Constraint Satisfaction Problems and Configurable CAD Product Models](https://doi.org/10.3390/a15090318) — an open, step-by-step bridge from constraint models to a CAD configurator.
- [OR-Tools CP-SAT guide](https://developers.google.com/optimization/cp/cp_solver) — practical documentation for constraint programming over discrete decisions.
- [Design Structure Matrix methods](https://mitpress.mit.edu/9780262528887/design-structure-matrix-methods-and-applications/) — tools for representing and analyzing component and process dependencies.
- [Product Design and Development](https://www.mheducation.com/highered/product/product-design-and-development-ulrich.html) — a broader engineering-design treatment of product architecture and concept development.

### From our group

- [Mining Process Heuristics from Designer Action Data via Hidden Markov Models](https://doi.org/10.1115/1.4037308) — analyzes how people move among topology, shape, and parameter decisions while solving configuration problems.
- [Data on the Configuration Design of Internet-Connected Home Cooling Systems by Engineering Students](https://doi.org/10.1016/j.dib.2017.08.050) — an open behavioral dataset for studying human configuration-design processes.
