---
title: The Functional Basis
question_term: the Functional Basis
slug: functional-basis
description: A standardized engineering-design vocabulary for representing product functions and flows.
one_sentence: The Functional Basis is a standardized vocabulary of function and flow terms used to construct comparable functional models of engineered products and systems.
category: Design representation
order: 25
read_time: 6 minutes
updated: 2026-07-17
related:
  - design-by-analogy
  - configuration-design
  - graph-grammars
---
## Working definition

**The Functional Basis** is a standardized vocabulary for describing what engineered products and systems do, independent of a particular physical embodiment. It organizes **function terms** such as import, transfer, guide, separate, convert, and store, together with **flows** of material, energy, and signal.

The capitalized term refers specifically to the reconciled taxonomy developed by Hirtz and colleagues, not to functional modeling in general. A function is commonly written as a verb–object pair such as “convert electrical energy” or “guide solid material.”

> Our stance: the Functional Basis is a lingua franca, not a law of nature. Its value is consistent abstraction and comparison. If its vocabulary cannot express an emerging system clearly, document an extension rather than forcing nuance into the wrong box.

## How it works

1. Define the system boundary and overall intended function.
2. Identify incoming and outgoing material, energy, and signal flows.
3. Decompose the overall function into subfunctions.
4. Label each subfunction with standardized function and flow terms.
5. connect subfunctions into a function structure showing transformations and continuity of flows.

The result can support concept generation, product architecture, failure analysis, analogy retrieval, repositories, and automated reasoning. Different valid decompositions can exist because granularity and system boundary remain modeling choices.

## When it is useful

The Functional Basis is useful when teams need a common vocabulary, when comparing products by what they do rather than what they look like, or when building reusable datasets and computational tools. It is particularly helpful in teaching abstraction and in design-by-analogy.

It is less useful when applied mechanically before the modeler understands purpose, stakeholders, and context.

## Common mistakes

- **Confusing function with form.** “Use a pump” names an embodiment; “transport liquid” states a function.
- **Treating the taxonomy as the decomposition procedure.** Vocabulary and modeling method are related but distinct.
- **Assuming one correct function structure.** Boundary and granularity choices create alternatives.
- **Using inconsistent verb–object pairs.** Standardization is the point.
- **Forcing software, AI, or human functions into legacy terms without checking semantic fit.** Extensions may be necessary.

## Core literature

<ul class="reading-list">
  <li><strong><a href="https://doi.org/10.1007/s00163-001-0008-3">A Functional Basis for Engineering Design: Reconciling and Evolving Previous Efforts</a></strong> — Julie Hirtz, Robert Stone, Daniel McAdams, Simon Szykman, and Kristin Wood (2002), <em>Research in Engineering Design</em>.<p>The canonical reconciled vocabulary and validation effort.</p></li>
  <li><strong><a href="https://www.nist.gov/publications/functional-basis-engineering-design-reconciling-and-evolving-previous-efforts">NIST publication record and full text</a></strong> — National Institute of Standards and Technology.<p>An authoritative, openly accessible copy with the original abstract and paper.</p></li>
  <li><strong><a href="https://doi.org/10.1115/1.1289637">Development of a Functional Basis for Design</a></strong> — Robert Stone and Kristin Wood (2000), <em>Journal of Mechanical Design</em>.<p>One of the major precursor efforts unified in the Functional Basis.</p></li>
</ul>

## Further reading and resources

- [REID Lab research](https://engineering.purdue.edu/reidlab/research) — Tahira Reid Smith and colleagues' empirical comparisons of functional decomposition methods.
- [Supporting Idea Generation Through Functional Decomposition](https://www.designsociety.org/publication/37898/) — connects function modeling to design heuristics.
- [Design-by-Analogy research in the Design Society](https://www.designsociety.org/publication/30694/) — demonstrates why standardized functional language aids retrieval.

### From our group

- [A Proposed Extension to the Functional Basis for AI/ML-Enabled Cyber-Physical Systems](https://doi.org/10.1115/DETC2024-143666) — extends the vocabulary for systems whose computation, sensing, and learning strain the original taxonomy.
