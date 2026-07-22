---
title: Design heuristics
question_verb: are
question_term: design heuristics
slug: design-heuristics
description: Portable rules of thumb that bias design search toward promising transformations or strategies.
one_sentence: Design heuristics are experience-based rules of thumb that suggest promising actions without guaranteeing a correct or optimal result.
order: 10
read_time: 6 minutes
updated: 2026-07-22
detail_title: Rules of thumb, not marching orders
related:
  - design-space
  - design-fixation
  - design-by-analogy
---
## Definition

**Design heuristics** are portable rules of thumb that suggest promising design actions, transformations, or search strategies. Examples include “make one component serve multiple functions,” “repeat a modular element,” “change the scale,” or “establish symmetry.”

> Our stance: a heuristic is useful because it is biased, not because it is universally correct. It points search toward a region worth examining; evaluation must decide whether the resulting design is any good.

Heuristics can be taught explicitly, inferred from expert products, observed in design processes, or learned computationally from action sequences. They sit between vague inspiration and a fully specified algorithm.

## Rules of thumb, not marching orders

1. Start with a problem, partial concept, or current design state.
2. Select a heuristic that proposes a transformation or strategic move.
3. Apply it concretely to generate one or more alternatives.
4. Evaluate the consequences for function, form, feasibility, and novelty.
5. Combine, reject, or adapt the heuristic based on what is learned.

Product heuristics operate on artifacts. Process heuristics operate on what the designer does next. Domain heuristics capture recurring knowledge in an area; general heuristics transfer across domains but may require more interpretation.

In our own work, the useful target is not merely a recurring behavior but a **beneficial process heuristic that generalizes across a class of problems**. That distinction matters. A common move may be habit, convenience, or even fixation; it becomes a design heuristic only when there is evidence that it helps and a clear account of when it should be tried.

### Where shortcuts help
Heuristics are useful when ideation stalls, when novices need actionable ways to vary concepts, when experts want to externalize tacit strategies, or when computational agents need meaningful operators. A deck or list is most valuable when it prompts transformations and comparison—not when it becomes a checklist.

### A heuristic is not a commandment
- **Calling a requirement a heuristic.** “Make it safe” states an aim; it does not suggest an action.
- **Treating heuristics as guaranteed best practices.** Context determines whether a bias helps.
- **Applying a label after the fact.** A useful heuristic should support generation or explanation, not merely decorate a result.
- **Using one heuristic once.** Apply it at different scales and combine it with others.
- **Confusing heuristic use with irrationality.** Rules of thumb can encode deep expertise and make search tractable.

## Resources

- **[Design Heuristics in Innovative Products](https://doi.org/10.1115/1.4032219)** — Seda Yilmaz, Colleen Seifert, Shanna Daly, and Richard Gonzalez (2016), <em>Journal of Mechanical Design</em>. Extracts recurring transformations from hundreds of award-winning products.
- **[Design Heuristics in Ideation Across Engineering and Industrial Design Domains](https://www.designsociety.org/publication/30189/)** — Seda Yilmaz and colleagues (2010). Connects heuristic use to observed design processes and diverse concept generation.
- **[Data-Driven Heuristic Induction From Human Design Behavior](https://doi.org/10.1115/1.4048425)** — Lucas Puentes, Jonathan Cagan, and Christopher McComb (2021). Induces recurring design strategies from time-series action data.
- **[Design Heuristics](https://www.designheuristics.com/)** — cards, examples, and teaching resources from Yilmaz, Daly, Seifert, and collaborators.
- **[Collaborative Idea Generation Using Design Heuristics](https://www.designsociety.org/publication/30741/)** — a Design Society study of heuristics in professional group ideation.
- **[Supporting Idea Generation Through Functional Decomposition](https://www.designsociety.org/publication/37898/)** — combines functional analysis and heuristic prompts.
- **[Mining Process Heuristics From Designer Action Data via Hidden Markov Models](https://doi.org/10.1115/1.4037308)** — **From our group.** infers recurring configuration-design strategies from observed sequences.
- **[Symmetry Heuristics for Stable Reinforcement Learning Design Agents](https://doi.org/10.31224/3615)** — **From our group.** uses an engineering heuristic to shape computational search.
{: .reading-list }
