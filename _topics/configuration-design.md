---
title: Configuration design
slug: configuration-design
description: Building systems by selecting, arranging, and connecting available components under requirements and constraints.
one_sentence: Configuration design creates an artifact by selecting component instances, assigning their values, and arranging their interfaces so the whole satisfies requirements and constraints.
order: 2
read_time: 9 minutes
updated: 2026-07-22
detail_title: Configure it out
related:
  - design-space
  - optimization
  - functional-basis
  - graph-grammars
  - shape-grammars
---
## Definition

**Configuration design** is the synthesis of a system from available component types and allowable relations. A solution identifies which component instances are present, how many are needed, what parameter values they take, and how they are arranged or connected so that the resulting assembly satisfies requirements and constraints.

This guide leans heavily on Bob Wielinga and Guus Schreiber’s 1997 account. Their formulation is still unusually good because it does not reduce configuration to picking products from a menu. It treats configuration as a knowledge-intensive design task involving components, parameters, ports, relations, partial assemblies, functions, requirements, constraints, cases, and search-control knowledge.

> Our stance: configuration design is pretty much everywhere. Once a field has a vocabulary of things that can exist and relations that can connect them, most design becomes some mixture of selecting, instantiating, arranging, connecting, and tuning those things. The boundary is not physical versus digital; it is whether the design process is configuring known types or inventing the types and requirements themselves.

Configuration design therefore includes much more than sales configurators. Products, software stacks, manufacturing systems, teams, schedules, experiments, workflows, and emergency repairs can all be configuration problems. The task sits between open-ended concept generation and purely parametric design: concept generation may invent new building blocks, while parametric design assumes the architecture and mainly tunes values. Real design problems usually contain all three.

## Configure it out

Wielinga and Schreiber organize the space along three useful dimensions:

1. **Components:** Are the available instances fixed, parameterized, or drawn from reusable component types?
2. **Assembly:** Is the arrangement fixed, partially specified by a skeleton, or largely open?
3. **Requirements and constraints:** Can they be checked locally, incrementally as an assembly grows, or only from the behavior of the complete system?

Those dimensions explain why configuration ranges from verification and assignment to layout, scheduling, parametric design, skeletal design, and full configuration design. They also reveal why a method that works for one configuration problem may fail badly on another.

The paper’s other recurring benchmark is **VT**, an expert elevator-configuration task used in the Sisyphus-II initiative to compare knowledge-engineering methods. LEGO makes geometry and interfaces visible; VT exposes parameterized components, regulations, preferences, repair strategies, and the importance of deciding what to configure next. Together they show that configuration is neither a toy problem nor merely a mathematical program.

### The knowledge is the problem

A serious configuration model normally contains several layers of knowledge:

1. **Problem-specific input:** requirements, explicit constraints, preferences, and the technology allowed for this problem.
2. **Component knowledge:** types, properties, parameters, value ranges, ports, and cardinality.
3. **Assembly knowledge:** allowable relations, connection signatures, skeletal arrangements, and reusable partial assemblies.
4. **Functional knowledge:** how local component choices produce behavior and system-level function.
5. **Case knowledge:** prior configurations that can be selected, adapted, or used to diagnose failures.
6. **Method and search-control knowledge:** what to decide next, what to defer, and which proposals are promising.

That separation matters. A constraint such as “these ports cannot mate” expresses something different from a preference such as “use the familiar supplier” or a search rule such as “place the most constrained component first.” Encoding all three as interchangeable mathematical expressions may make a solver convenient while making the design rationale opaque.

The design itself can be represented as a graph, grammar, constraint-satisfaction problem, mixed-integer program, or another discrete structure. Solving it generally means proposing or selecting components, instantiating them, assigning values, creating interfaces, checking partial assemblies, and revising or backtracking when conflicts appear.

Observed designers do not move through those decisions in a clean waterfall. In our configuration studies, hidden Markov models recovered four recurring procedural states that move roughly from topology toward shape and parameter design. Strong designers also tune parameters opportunistically earlier than a textbook sequence would suggest. The lesson is not “copy this order”; it is that **what to configure next** is itself design knowledge.

### Configuration naturally affords grammars

Wielinga and Schreiber's component vocabulary and assembly knowledge map naturally—but not automatically—onto a design grammar. Component types become a vocabulary. A partial assembly becomes the current state. Rules encode valid acts of selection, instantiation, connection, replacement, parameter assignment, or termination. Requirements and constraints determine whether a generated state is acceptable.

A [graph grammar](/what-is/graph-grammars/) is usually the clearest choice when component identity, ports, connectivity, and typed relations must remain explicit. A [shape grammar](/what-is/shape-grammars/) is useful when the configuration is fundamentally spatial and emergent geometry matters. The same artifact can need both: a LEGO assembly has a connection graph, but its geometry also creates spatial opportunities that are not captured by connectivity alone.

This connection clarifies the division of labor. A grammar defines the legal design moves and therefore the reachable configuration space. Constraints establish feasibility. Simulation predicts behavior. Search and optimization decide where to spend effort. Configuration design supplies the domain knowledge that makes all four meaningful.

Wielinga and Schreiber distinguish **uniform methods**, such as constraint satisfaction and linear programming, from **knowledge-intensive methods**, such as case-based configuration, skeletal construction, propose–critique–modify, propose-and-revise, and least commitment. Uniform methods travel well across domains. Knowledge-intensive methods exploit why this particular domain works. The strongest configuration systems usually need both.

### LEGO is configuration design in miniature

Wielinga and Schreiber illustrate the task with a small rowing boat assembled from five LEGO brick types. The component vocabulary is fixed, but the chosen instances and their arrangement are not. The boat must meet geometric targets, remain symmetric and connected, contain no holes, and preferably use as few bricks as possible.

The example is deceptively deep. Because the bricks are discrete, the target dimensions cannot necessarily be met exactly. A designer must find a feasible assembly whose aggregate properties come close enough. Each brick has geometry and connection possibilities; the boat has properties no brick possesses alone. That local-to-global jump is the heart of configuration design.

### Why almost everything is configuration
Configuration design is useful whenever some design vocabulary already exists but the final architecture does not. That describes an enormous share of engineering and organized work:

- **Physical systems:** LEGO models, gear trains, hydraulic circuits, trusses, spacecraft subsystems, product platforms, and modular families.
- **Digital systems:** computer hardware, software dependencies, AI-agent toolchains, cloud services, networks, and telecommunications systems.
- **Production systems:** manufacturing cells, supply networks, factory layouts, process plans, and experiment setups.
- **Organizational systems:** teams, roles, communication structures, workflows, committees, and project portfolios.
- **Temporal systems:** schedules and plans, where activities become components and precedence or resource relationships become interfaces.

Assemblies can also become components inside larger assemblies. A validated pump module becomes one component in a cooling system; a subteam becomes one unit in a program; a tested software service becomes one node in an application. Configuration is recursive.

### Apollo 13: configuration design under existential constraints

Apollo 13’s improvised carbon-dioxide scrubber is configuration design stripped to its essentials. After the service-module explosion, the lunar module was supporting three astronauts for far longer than intended. The command module had enough lithium-hydroxide canisters to remove CO₂, but its canisters were square and the lunar module’s openings were round.

The component inventory was brutally fixed: command-module canisters, a spacesuit hose and liquid-cooled-garment hardware, plastic bags, a flight-plan cue card, and duct tape—only items replicated from what the crew had onboard. The requirement was functional and global: move cabin air through the canister quickly enough to reduce dangerous CO₂ levels. Geometry, airflow, sealing, available materials, crew procedure, time, and safety constrained the assembly.

Engineers on the ground configured an adapter, tested it in an altitude chamber, and communicated the construction procedure to the crew. Swigert and Lovell built two onboard; CO₂ levels dropped after the first was installed. This was also [bricolage](/what-is/bricolage-in-design/), but it was not unstructured improvisation. It was a configuration problem with an emergent requirement, a closed inventory, incompatible ports, severe constraints, distributed knowledge, and immediate verification.

That example is why configuration design is a powerful default lens: feasibility and performance often emerge from interfaces among available things, not from the isolated merit of any one component.

### Where the lens stops
- **Reducing configuration to catalog shopping.** Selection is only one operation. Instantiation, allocation, interfacing, arrangement, parameter assignment, and system-level verification are often the harder parts.
- **Pretending component choice is just value assignment.** A solver may encode “motor type” as one variable, but that shortcut can erase differences among types, instances, ports, and relations. Wielinga and Schreiber warn that representational convenience can destroy ontological clarity and make knowledge harder to maintain or reuse.
- **Assuming all requirements and constraints are known at the start.** Formal configuration often makes this assumption; real design regularly violates it. Decisions activate regulations, reveal incompatibilities, and generate new constraints. Apollo 13’s required CO₂-removal capacity and usable component set changed radically after the explosion.
- **Mixing domain truth with design preference and search strategy.** “These connectors are incompatible,” “we prefer this vendor,” and “try this component first” play different epistemic roles even if a solver encodes them similarly.
- **Evaluating only complete assemblies.** Local constraints should be checked locally; incremental constraints should prune partial configurations; expensive global behavior should be evaluated only when enough of the assembly exists.
- **Optimizing before defining feasibility.** A high-performing architecture that violates an interface, resource, safety, or manufacturing constraint is not a candidate solution.
- **Treating the catalog as neutral.** Available component types, partial assemblies, and allowable relations define what can be discovered. A restricted vocabulary produces a restricted design space.
- **Calling every design decision configuration.** The lens is broad, not limitless. If the task must invent a new component type, causal principle, or requirement, configuration alone is insufficient; conceptual, functional, or transformational design is also occurring.

## Resources

- **[Configuration-Design Problem Solving](https://doi.org/10.1109/64.585104)** — Bob J. Wielinga and Guus Schreiber (1997), <em>IEEE Expert</em>. The anchor for this guide. It maps configuration problems by their components, assemblies, and requirements; separates categories of configuration knowledge; and compares uniform with knowledge-intensive problem-solving methods. An <a href="https://guusschreiber.nl/wp-content/uploads/2025/05/wielinga97a.pdf">author-hosted copy</a> is freely available.
- **[Towards a Generic Model of Configuration Tasks](https://www.ijcai.org/Proceedings/89-2/Papers/087.pdf)** — Sanjay Mittal and Felix Frayman (1989), <em>Proceedings of IJCAI</em>. A foundational effort to define configuration as a generic design task and identify the knowledge needed to solve it.
- **[General Framework for Configuration Design: Part 1—Methodology](https://doi.org/10.1080/09544829308914787)** — Sridhar Kota and Chintal Lee (1993), <em>Journal of Engineering Design</em>. Connects functions, performance goals, constraints, and physical components in an engineering configuration method.
- **[An Overview of Knowledge-Based Configuration](https://journals.sagepub.com/doi/10.3233/EAI-1997-123)** — Markus Stumptner (1997), <em>AI Communications</em>. Surveys logic-, constraint-, and resource-based approaches to assembling complex systems from components.
- **[The Role of Product Architecture in the Manufacturing Firm](https://doi.org/10.1016/0048-7333(94)00775-3)** — Karl T. Ulrich (1995), <em>Research Policy</em>. Establishes product architecture as the mapping between functional elements and physical components and explains its downstream consequences.
- **[“Houston, We’ve Had a Problem”](https://www.nasa.gov/history/houston-weve-had-a-problem/)** — NASA’s detailed history of the Apollo 13 rescue, including the materials, ground test, crew procedure, and performance of the improvised LiOH-canister adapter.
- **[Apollo 13 LiOH Canister Breakthrough Test](https://ntrs.nasa.gov/citations/19720021432)** — the July 1970 NASA technical memorandum documenting the emergency system test and canister-change analysis.
- **[Joining Constraint Satisfaction Problems and Configurable CAD Product Models](https://doi.org/10.3390/a15090318)** — an open, step-by-step bridge from constraint models to a CAD configurator.
- **[OR-Tools CP-SAT guide](https://developers.google.com/optimization/cp/cp_solver)** — practical documentation for constraint programming over discrete decisions.
- **[Design Structure Matrix methods](https://mitpress.mit.edu/9780262528887/design-structure-matrix-methods-and-applications/)** — tools for representing and analyzing component and process dependencies.
- **[Product Design and Development](https://www.mheducation.com/highered/product/product-design-and-development-ulrich.html)** — a broader engineering-design treatment of product architecture and concept development.
- **[Mining Process Heuristics from Designer Action Data via Hidden Markov Models](https://doi.org/10.1115/1.4037308)** — **From our group.** analyzes how people move among topology, shape, and parameter decisions while solving configuration problems.
- **[Data on the Configuration Design of Internet-Connected Home Cooling Systems by Engineering Students](https://doi.org/10.1016/j.dib.2017.08.050)** — **From our group.** an open behavioral dataset for studying human configuration-design processes.
{: .reading-list }
