---
title: Graph grammars
question_verb: are
slug: graph-grammars
description: Generating and transforming relational structures by rewriting matched subgraphs.
one_sentence: A graph grammar defines a design language through rules that find a pattern of nodes and edges and replace it with a new graph structure.
order: 4
read_time: 9 minutes
updated: 2026-07-22
detail_title: Reading between the nodes
related:
  - shape-grammars
  - configuration-design
  - generative-design
---
## Definition

A **graph grammar** is a formal production system whose states are graphs and whose rules transform graphs. A rule identifies a left-hand-side pattern of nodes and edges, matches that pattern within the current graph, and replaces or augments it with a right-hand-side structure.

> Graph grammars make topology executable: nodes represent entities, edges represent relationships, and rules specify valid structural change.

In engineering design, nodes may represent components, functions, joints, or processes; edges may represent interfaces, flows, geometric relations, or dependencies. Attributes can carry dimensions, materials, costs, or other parameters alongside the topology.

This page leans heavily on **Kristina Shea's work in computational design synthesis**. Shea and her collaborators treat graph grammars as more than topology generators: they are a way to encode engineering knowledge, synthesize product architectures, connect concepts to analysis, and inspect how grammar rules shape the reachable design space.

> Our stance: a graph grammar is configuration design made executable. The vocabulary says what kinds of things can exist; the graph says how current instances relate; the rules say how a valid configuration may change.

## Reading between the nodes

A graph-grammar derivation typically uses:

1. **A type system or vocabulary:** allowable node, edge, and attribute types.
2. **An initial graph:** the starting state.
3. **Production rules:** a left-hand-side pattern, preserved interface, and right-hand-side replacement.
4. **Application conditions:** constraints such as required context or forbidden adjacent structures.
5. **Control and termination:** a strategy for selecting rules and ending the derivation.

Each step finds a graph match and applies a rewrite while preserving specified context. Algebraic approaches such as double-pushout rewriting formalize which elements are deleted, retained, and created and prevent invalid operations such as leaving an edge without an endpoint.

**Attributed graph grammars** update topology and parameters together. A rule might add a gear pair, connect compatible shafts, and compute a new ratio. Search or optimization can then explore the derivation tree to find a feasible, high-performing design rather than merely a syntactically valid one.

### Configuration design made executable

Configuration design naturally affords grammars because its basic moves are grammatical: select or instantiate a component, connect compatible ports, assign a parameter, replace a subsystem, or terminate an assembly. A graph represents the current configuration; a graph rule packages one allowable design move and the context in which it is valid.

Shea and Bergen Helms's **object-oriented graph grammars** make this particularly useful for product architecture. Classes encode reusable component or system types, relations encode function, behavior, and structure, and production rules transform instances while preserving domain knowledge. The result is not just a list of combinations. It is an executable model of how architectures may be synthesized.

The grammar, constraints, and search method play different roles:

- **The grammar** defines reachable configurations and valid transformations.
- **Constraints** reject configurations that violate interfaces, physics, manufacturing, or requirements.
- **Simulation and analysis** predict behavior and performance.
- **Search or optimization** chooses which rule applications and matches to explore.

Conflating these roles makes the system harder to explain and maintain. A grammar should not silently become an objective function, and an optimizer should not be expected to repair a bad design language.

### The grammar itself is a designed artifact

Shea, Corinna Königseder, and Tino Stanković emphasize an easily missed point: **developing the rule set is itself a design problem**. A vague left-hand side may match far more places than intended. Two rule sequences may produce the same design. A pair of rules may create pointless loops. A useful architecture may be unreachable because a necessary transformation was never encoded.

Their transition-graph approach turns that behavior into something inspectable. Each node represents a unique generated design; each labeled edge represents a grammar-rule application. Analyzing this network exposes loops, duplicate paths, rule interactions, and gaps in the design language. This is a strong general lesson: before celebrating the designs generated by a grammar, interrogate the grammar that made them possible.

### When relations are the design
Graph grammars are useful when a problem is fundamentally relational:

- product architecture and configuration design;
- mechanisms, circuits, trusses, fluid systems, and manufacturing processes;
- software and model transformation;
- chemical reaction and molecular structure generation; and
- any generative system whose validity depends on typed connectivity.

A graph grammar is often preferable to a shape grammar when component identity and connectivity should remain explicit. A shape grammar is preferable when emergent geometry and visual perception are the central computational phenomena.

### The graph is not the artifact
- **Calling any graph generator a grammar.** A grammar needs explicit productions and matching semantics, not only a procedure that happens to output graphs.
- **Leaving rewrite semantics implicit.** Deleting a node, preserving incident edges, and merging matched elements have different consequences across formalisms.
- **Encoding topology but ignoring attributes.** Many engineering constraints depend jointly on connections and numerical parameters.
- **Assuming syntactic validity implies feasibility.** Grammar rules may preserve type correctness while producing designs that fail physics, cost, or manufacturing requirements.
- **Ignoring combinatorial growth.** Rule choice and match location create a derivation tree that usually requires pruning, heuristics, or optimization.
- **Treating the rule set as neutral.** The vocabulary and productions determine which architectures are reachable, easy to reach, or impossible to express.
- **Optimizing before interrogating the grammar.** Search can exploit a design language; it cannot recover alternatives the language excludes.

## Resources

- **[Handbook of Graph Grammars and Computing by Graph Transformation](https://doi.org/10.1142/4180)** — Grzegorz Rozenberg, ed. (1997–1999), World Scientific. The foundational reference spanning algebraic approaches, node replacement, concurrency, and applications.
- **[Computational Synthesis of Product Architectures Based on Object-Oriented Graph Grammars](https://doi.org/10.1115/1.4005592)** — Bergen Helms and Kristina Shea (2012), <em>Journal of Mechanical Design</em>. The anchor for this guide. It uses object-oriented graph grammars to capture engineering knowledge and synthesize product architectures across function, behavior, and structure.
- **[Systematic Rule Analysis of Generative Design Grammars](https://doi.org/10.1017/S0890060414000195)** — Corinna Königseder and Kristina Shea (2014), <em>AI EDAM</em>. Treats grammar development as an engineering task and shows how rule formulation affects generation, evaluation, and search.
- **[Improving Design Grammar Development and Application Through Network-Based Analysis of Transition Graphs](https://doi.org/10.1017/dsj.2016.5)** — Corinna Königseder, Tino Stanković, and Kristina Shea (2016), <em>Design Science</em>. Represents unique designs as states and rule applications as transitions so grammar developers can expose loops, duplicate paths, vague rules, and other structural problems.
- **[GGREADA: A Graph Grammar-Based Machine Design Algorithm](https://doi.org/10.1007/BF01589682)** — Linda C. Schmidt and Jonathan Cagan (1997), <em>Research in Engineering Design</em>. A landmark engineering example that generates and searches component-based machine configurations.
- **[Graph Transformation in Engineering Design: An Overview of the Last Decade](https://doi.org/10.1017/S089006042200018X)** — Christopher Voss, Frank Petzold, and Stephan Rudolph (2023), <em>AI EDAM</em>. An open review of terminology, application domains, implementations, and research gaps in engineering design.
- **[A Tutorial on Graph Transformation](https://ris.utwente.nl/ws/portalfiles/portal/247999750/K_nig2018tutorial.pdf)** — a compact introduction to double-pushout rewriting and its formal foundations.
- **[Graph Grammars—A Formal Method for Dynamic Structure Transformation](https://portal.fis.tum.de/en/publications/graph-grammars-a-formal-method-for-dynamic-structure-transformati-2/)** — Bergen Helms, Katharina Eben, Kristina Shea, and Udo Lindemann on encoding engineering knowledge for product synthesis.
- **[GROOVE](https://groove.ewi.utwente.nl/)** — a toolset for graph transformation and state-space exploration.
- **[AGG-supported modeling and analysis](https://depositonce.tu-berlin.de/items/482c229e-07f3-49af-aa08-13f23b4c778b)** — a TU Berlin research report demonstrating the long-running environment for typed, attributed graph transformation.
- **[MØD](https://jakobandersen.github.io/mod/)** — graph-transformation software oriented toward chemical graphs and reaction rules.
- **[Expanding the Generative Power of Large Language Models for Design Through Formal Design Grammars and Languages](https://doi.org/10.1115/1.4070095)** — **From our group.** uses a truss graph grammar to examine how LLMs can help apply formal design languages without replacing their constraints.
{: .reading-list }
