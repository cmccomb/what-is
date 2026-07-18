---
title: Graph grammars
question_verb: are
slug: graph-grammars
description: Generating and transforming relational structures by rewriting matched subgraphs.
one_sentence: A graph grammar defines a design language through rules that find a pattern of nodes and edges and replace it with a new graph structure.
category: Design computation
order: 4
read_time: 7 minutes
updated: 2026-07-17
related:
  - shape-grammars
  - configuration-design
  - generative-design
---
## Working definition

A **graph grammar** is a formal production system whose states are graphs and whose rules transform graphs. A rule identifies a left-hand-side pattern of nodes and edges, matches that pattern within the current graph, and replaces or augments it with a right-hand-side structure.

> Graph grammars make topology executable: nodes represent entities, edges represent relationships, and rules specify valid structural change.

In engineering design, nodes may represent components, functions, joints, or processes; edges may represent interfaces, flows, geometric relations, or dependencies. Attributes can carry dimensions, materials, costs, or other parameters alongside the topology.

## How it works

A graph-grammar derivation typically uses:

1. **A type system or vocabulary:** allowable node, edge, and attribute types.
2. **An initial graph:** the starting state.
3. **Production rules:** a left-hand-side pattern, preserved interface, and right-hand-side replacement.
4. **Application conditions:** constraints such as required context or forbidden adjacent structures.
5. **Control and termination:** a strategy for selecting rules and ending the derivation.

Each step finds a graph match and applies a rewrite while preserving specified context. Algebraic approaches such as double-pushout rewriting formalize which elements are deleted, retained, and created and prevent invalid operations such as leaving an edge without an endpoint.

**Attributed graph grammars** update topology and parameters together. A rule might add a gear pair, connect compatible shafts, and compute a new ratio. Search or optimization can then explore the derivation tree to find a feasible, high-performing design rather than merely a syntactically valid one.

## When it is useful

Graph grammars are useful when a problem is fundamentally relational:

- product architecture and configuration design;
- mechanisms, circuits, trusses, fluid systems, and manufacturing processes;
- software and model transformation;
- chemical reaction and molecular structure generation; and
- any generative system whose validity depends on typed connectivity.

A graph grammar is often preferable to a shape grammar when component identity and connectivity should remain explicit. A shape grammar is preferable when emergent geometry and visual perception are the central computational phenomena.

## Common mistakes

- **Calling any graph generator a grammar.** A grammar needs explicit productions and matching semantics, not only a procedure that happens to output graphs.
- **Leaving rewrite semantics implicit.** Deleting a node, preserving incident edges, and merging matched elements have different consequences across formalisms.
- **Encoding topology but ignoring attributes.** Many engineering constraints depend jointly on connections and numerical parameters.
- **Assuming syntactic validity implies feasibility.** Grammar rules may preserve type correctness while producing designs that fail physics, cost, or manufacturing requirements.
- **Ignoring combinatorial growth.** Rule choice and match location create a derivation tree that usually requires pruning, heuristics, or optimization.

## Core literature

<ul class="reading-list">
  <li><strong><a href="https://doi.org/10.1142/4180">Handbook of Graph Grammars and Computing by Graph Transformation</a></strong> — Grzegorz Rozenberg, ed. (1997–1999), World Scientific.<p>The foundational reference spanning algebraic approaches, node replacement, concurrency, and applications.</p></li>
  <li><strong><a href="https://doi.org/10.1007/BF01589682">GGREADA: A Graph Grammar-Based Machine Design Algorithm</a></strong> — Linda C. Schmidt and Jonathan Cagan (1997), <em>Research in Engineering Design</em>.<p>A landmark engineering example that generates and searches component-based machine configurations.</p></li>
  <li><strong><a href="https://doi.org/10.1109/MCG.2016.89">Graph-Based Design Languages: A Lingua Franca for Product Design Including Abstract Geometry</a></strong> — Jens Schmidt and Stephan Rudolph (2016), <em>IEEE Computer Graphics and Applications</em>.<p>Shows how graph-based languages can coordinate product information across disciplines and models.</p></li>
  <li><strong><a href="https://doi.org/10.1017/S089006042200018X">Graph Transformation in Engineering Design: An Overview of the Last Decade</a></strong> — Lukas Kolbeck and colleagues (2023), <em>AI EDAM</em>.<p>An open review of terminology, application domains, implementations, and research gaps in engineering design.</p></li>
</ul>

## Further reading and resources

- [A Tutorial on Graph Transformation](https://ris.utwente.nl/ws/portalfiles/portal/247999750/K_nig2018tutorial.pdf) — a compact introduction to double-pushout rewriting and its formal foundations.
- [GROOVE](https://groove.ewi.utwente.nl/) — a toolset for graph transformation and state-space exploration.
- [AGG-supported modeling and analysis](https://depositonce.tu-berlin.de/items/482c229e-07f3-49af-aa08-13f23b4c778b) — a TU Berlin research report demonstrating the long-running environment for typed, attributed graph transformation.
- [MØD](https://jakobandersen.github.io/mod/) — graph-transformation software oriented toward chemical graphs and reaction rules.

### From our group

- [Expanding the Generative Power of Large Language Models for Design Through Formal Design Grammars and Languages](https://doi.org/10.1115/1.4070095) — uses a truss graph grammar to examine how LLMs can help apply formal design languages without replacing their constraints.
