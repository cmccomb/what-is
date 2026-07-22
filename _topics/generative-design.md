---
title: Generative design
slug: generative-design
description: A design process in which a generative representation and algorithm produce a family of candidate artifacts for evaluation and selection.
one_sentence: Generative design uses an explicit generative system to create multiple candidate designs that people or algorithms can evaluate, navigate, and refine.
order: 22
read_time: 7 minutes
updated: 2026-07-22
detail_title: Mind the generation gap
related:
  - design-space
  - optimization
  - topology-optimization
---
## Definition

**Generative design** is a design process in which an explicit generative representation—such as parameters, a grammar, a procedural model, a search policy, or a learned model—is used to produce multiple candidate artifacts for evaluation and selection.

> Our stance: generative design is a workflow, not a synonym for topology optimization, optimization, or generative AI. A system is meaningfully generative when it can produce a family of design candidates through a stated representation and set of operations. Optimization may guide that generation, but it is not required.

The term is overloaded commercially. We use it broadly enough to include grammar-based generation, evolutionary design, learned design agents, and model-based synthesis—but narrowly enough to exclude ordinary parametric editing that never generates alternatives.

### How it differs from nearby terms

- **Parametric design** exposes variables; it becomes generative when a process systematically produces alternatives from them.
- **Optimization** searches for preferred feasible solutions; it can operate inside a generative-design workflow.
- **Topology optimization** is a specific optimization family that distributes material in a domain.
- **Generative AI** models a data distribution to produce content; it is one possible generative engine.
- **Design automation** may execute a fixed procedure without generating a meaningful family of alternatives.

## Mind the generation gap

1. Define a representation and the valid operations within it.
2. Generate candidates by enumeration, rules, sampling, search, optimization, or a learned model.
3. Evaluate candidates using simulation, constraints, learned predictors, or human judgment.
4. Preserve useful diversity rather than collapsing immediately to one numerical optimum.
5. Let designers steer, select, revise, and validate outcomes.

Strong systems expose provenance: a designer should be able to understand why a candidate exists, what assumptions produced it, and what evidence supports its performance.

Generation also has strategy. Our Design Strategy Network work separates **where to act** from **which feasible action to take** through a hierarchical policy. That is a useful counterexample to the idea that generative design is just random sampling followed by ranking: a generator can learn an organized way to traverse a complex action space.

### Where generation helps
Generative design is useful when a space is too large to explore manually, when diverse alternatives have decision value, or when the generation rules themselves encode useful domain knowledge. It can support architecture, structures, products, manufacturing, and conceptual ideation.

It is less useful when evaluation is weak. Producing ten thousand candidates is not the same as producing insight.

The same warning applies to creativity. In one of our LLM studies, we compared 4,000 generated design concepts with human concepts. The model made scale cheap; the people still produced the more diverse set. Generation capacity and exploratory breadth are different properties.

### Generation is not judgment
- **Using “generative design” as a brand name for topology optimization.** The latter is one method inside the larger family.
- **Equating quantity with diversity.** Near-duplicates do not expand a decision.
- **Hiding the representation.** The generator's language determines what can and cannot appear.
- **Ranking solely by modeled performance.** Model error and omitted requirements can dominate small objective differences.
- **Removing the designer from the account.** Selection, framing, and interpretation are central design activities.

## Resources

- **[Towards Integrated Performance-Driven Generative Design Tools](https://doi.org/10.1016/j.autcon.2004.07.002)** — Kristina Shea, Robert Aish, and Marina Gourtovaia (2005), <em>Automation in Construction</em>. Connects generative representations, performance evaluation, and designer interaction.
- **[A Practical Generative Design Method](https://doi.org/10.1016/j.cad.2010.09.009)** — Sivam Krish (2011), <em>Computer-Aided Design</em>. Offers a systematic formulation of generation, evaluation, and exploration.
- **[Can Pareto Fronts Meet the Splitting Condition?](https://doi.org/10.1017/pds.2023.83)** — Maxime Thomas and colleagues (2023). Argues that a useful generative system must expose meaningful variety, not only high-performing points.
- **[Evaluation of Topology Optimization and Generative Design Tools](https://doi.org/10.1017/dsd.2020.165)** — a Design Society comparison for conceptual design.
- **[Co-Design Lab publications](https://codesign.berkeley.edu/papers/)** — Kosa Goucher-Lambert's work on human agency, generative models, and interactive design-space exploration.
- **[Design Heuristics](https://www.designheuristics.com/)** — empirically grounded prompts that can function as human-centered generative operators.
- **[Conceptual Design Generation Using Large Language Models](https://doi.org/10.1115/DETC2023-116838)** — **From our group.** compares LLM-generated concepts with human-crowdsourced solutions instead of assuming generation equals creativity.
- **[Expanding the Generative Power of Large Language Models for Design Through Formal Design Grammars and Languages](https://doi.org/10.1115/1.4070095)** — **From our group.** combines learned generation with explicit design languages.
- **[Design Strategy Network](https://doi.org/10.1115/1.4052566)** — **From our group.** learns hierarchical generative strategies in complex action spaces.
{: .reading-list }
