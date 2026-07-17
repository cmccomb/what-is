---
title: Artificial intelligence
slug: artificial-intelligence
description: Building computational systems that perceive, reason, learn, generate, or act toward goals.
one_sentence: Artificial intelligence is the field concerned with computational systems that perform tasks requiring perception, reasoning, learning, generation, or goal-directed action.
category: Artificial intelligence
order: 5
read_time: 7 minutes
updated: 2026-07-17
related:
  - agent-based-modeling
  - hidden-markov-models
  - simulated-annealing
---
## Working definition

**Artificial intelligence (AI)** is the scientific and engineering field concerned with constructing computational systems that exhibit capabilities associated with intelligent behavior. Those capabilities include perception, knowledge representation, reasoning, planning, learning, communication, generation, and action.

> A useful engineering definition treats AI as the study and construction of agents that map what they perceive to actions intended to achieve goals.

There is no single operational test that covers the whole field. Some traditions aim to reproduce human cognition or behavior; others aim for rational decisions relative to an objective. The term therefore names a broad research program, not one algorithm or product category.

**Machine learning is a subset of AI** focused on improving behavior or predictions from data. **Generative AI** is a subset centered on producing new content. A rule-based planner, learned vision system, and large language model can all be AI systems even though their mechanisms differ substantially.

## How it works

AI systems typically combine some of these functions:

1. **Representation:** encode states, entities, relationships, goals, and uncertainty.
2. **Perception or input processing:** convert observations such as images, text, sensor data, or structured records into usable internal signals.
3. **Inference and prediction:** estimate unknowns, consequences, or likely future states.
4. **Search and planning:** compare possible action sequences or solutions.
5. **Learning:** adapt models or policies using data, feedback, or experience.
6. **Action or generation:** select an intervention or produce an artifact.
7. **Evaluation:** measure performance against task-specific objectives and broader constraints.

Modern systems may learn much of this mapping from data, but training is only one stage. The full system also includes data collection, objective design, interfaces, evaluation, monitoring, and human decisions about where the model may act.

## When it is useful

AI is useful when a task requires flexible mapping from complex inputs to predictions, decisions, or generated outputs and when that mapping can be specified through rules, data, feedback, or some combination. Examples include scientific discovery, medical imaging, language technologies, robotics, scheduling, anomaly detection, and design support.

The relevant question is not simply “Can AI do this?” It is “Which capability is needed, what evidence would establish acceptable performance, and how will failure be detected and managed?” A conventional algorithm or human process may be preferable when rules are stable, errors are costly, data are weak, or interpretability and recourse dominate marginal predictive performance.

## Common mistakes

- **Using AI as a synonym for machine learning or large language models.** These are important parts of the field, not its full extent.
- **Equating benchmark performance with system usefulness.** Deployment changes inputs, incentives, workflows, and consequences.
- **Assuming apparent fluency implies grounded understanding.** Behavior must be evaluated against the actual task and failure modes.
- **Ignoring the objective.** An AI system can optimize a measurable proxy while undermining the real goal.
- **Treating human oversight as a slogan.** Oversight requires authority, information, time, and a workable intervention path.

## Core literature

<ul class="reading-list">
  <li><strong><a href="https://doi.org/10.1093/mind/LIX.236.433">Computing Machinery and Intelligence</a></strong> — Alan M. Turing (1950), <em>Mind</em>.<p>Reframes an abstract question about machine thought as an operational inquiry into intelligent behavior.</p></li>
  <li><strong><a href="https://www-formal.stanford.edu/jmc/history/dartmouth/dartmouth.html">A Proposal for the Dartmouth Summer Research Project on Artificial Intelligence</a></strong> — John McCarthy, Marvin Minsky, Nathaniel Rochester, and Claude Shannon (1955).<p>The proposal that named the field and articulated an ambitious program spanning language, abstraction, learning, and creativity.</p></li>
  <li><strong><a href="https://aima.cs.berkeley.edu/">Artificial Intelligence: A Modern Approach</a></strong> — Stuart Russell and Peter Norvig (4th ed., 2020).<p>A comprehensive field map organized around intelligent agents, including search, uncertainty, learning, perception, language, and robotics.</p></li>
  <li><strong><a href="https://doi.org/10.1609/aimag.v26i4.1848">A (Very) Brief History of Artificial Intelligence</a></strong> — Bruce G. Buchanan (2005), <em>AI Magazine</em>.<p>A compact account of the intellectual traditions and early systems that shaped the field.</p></li>
</ul>

## Further reading and resources

- [CS50’s Introduction to Artificial Intelligence with Python](https://cs50.harvard.edu/ai/) — a free, project-based course covering search, uncertainty, optimization, learning, neural networks, and language.
- [Stanford Encyclopedia of Philosophy: Artificial Intelligence](https://plato.stanford.edu/entries/artificial-intelligence/) — a careful treatment of competing definitions and philosophical commitments.
- [AI Magazine](https://ojs.aaai.org/aimagazine/) — accessible articles from the Association for the Advancement of Artificial Intelligence.
- [NIST AI Risk Management Framework](https://www.nist.gov/itl/ai-risk-management-framework) — a practical framework for governing and evaluating risks across an AI system’s lifecycle.

### From our group

- [Artificial Intelligence and Engineering Design](https://doi.org/10.1115/1.4053111) — maps three interfaces between AI and engineering design: applying AI to design, developing AI around design-specific challenges, and studying the effects of AI on design work.
- [Expanding the Generative Power of Large Language Models for Design Through Formal Design Grammars and Languages](https://doi.org/10.1115/1.4070095) — tests how LLMs and formal grammars can complement one another in generative design.
