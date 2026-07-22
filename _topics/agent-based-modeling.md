---
title: Agent-based modeling
slug: agent-based-modeling
description: Simulating a system from the actions and interactions of heterogeneous individuals.
one_sentence: Agent-based modeling simulates individual actors and their interactions to study how system-level patterns emerge from local behavior.
order: 1
read_time: 6 minutes
updated: 2026-07-22
detail_title: Model citizens
related:
  - ai-agents
  - team
  - markov-chains
---
## Definition

**Agent-based modeling (ABM)** is a computational modeling approach in which a system is represented as autonomous agents situated in an environment. Each agent has a state, follows rules or policies, and may interact with other agents or with the environment. The model advances those local processes through time and observes the aggregate behavior that results.

> An ABM explains a system from the bottom up: specify who acts, what they can sense and do, and how interactions produce the pattern of interest.

An agent might represent a person, firm, vehicle, cell, animal, or design team. “Autonomous” does not imply sophisticated intelligence; it only means that the agent updates according to its own state and rules rather than being directly controlled by a single system-level equation.

## Model citizens

Most agent-based models specify five ingredients:

1. **Agents:** the entities being modeled, including their attributes and internal states.
2. **Behavior:** rules, heuristics, learned policies, or decision models that map an agent’s state and observations to actions.
3. **Interaction structure:** who can affect whom, often through a spatial neighborhood, social network, market, or communication graph.
4. **Environment:** the external state agents perceive and modify.
5. **Schedule:** the order and timing with which actions and state updates occur.

A simulation is run repeatedly because stochastic choices and initial conditions can change the outcome. Analysis therefore concerns distributions, sensitivity, and mechanisms—not a single animated run.

ABM differs from an equation-based aggregate model in where heterogeneity and interaction enter. An aggregate model may track the average adoption rate; an ABM can represent people with different preferences whose adoption decisions depend on their neighbors. That extra detail is useful only when it changes the inference or decision.

Our group has used ABM as a meeting place for design research, cognitive science, and simulation science. That combination is deliberate: a model of a human system needs more than software agents moving around a digital terrarium. It needs defensible accounts of what people know, how they decide, whom they communicate with, and how those local behaviors accumulate into team- or system-level outcomes.

### What a synthetic society can reveal
ABM is especially useful when:

- actors differ in consequential ways;
- local interaction or network structure drives outcomes;
- actors adapt, learn, enter, or leave;
- feedback creates nonlinear or path-dependent behavior;
- the system-level pattern is expected to emerge from individual decisions; or
- experiments on the real system would be costly, slow, or unethical.

Common applications include crowd movement, markets, epidemics, organizational behavior, supply chains, ecosystems, transportation, and design-team processes.

### When model citizens misbehave
- **Adding agents without a mechanism.** Individual detail is not automatically explanatory. Every modeled attribute and rule should serve a question.
- **Treating one trajectory as a result.** Random seeds, parameter ranges, and initial conditions require replicated runs and uncertainty analysis.
- **Confusing calibration with validation.** Matching historical data does not establish that the internal mechanism is right or that the model predicts new settings.
- **Hiding scheduling assumptions.** Sequential and simultaneous updates can produce different outcomes.
- **Reporting code instead of a model.** A reproducible conceptual specification—often using the ODD protocol—should accompany the implementation.

## Resources

- **[Dynamic Models of Segregation](https://doi.org/10.1080/0022250X.1971.9989794)** — Thomas C. Schelling (1971), <em>Journal of Mathematical Sociology</em>. A canonical demonstration that mild local preferences can generate strong system-level segregation.
- **[Agent-Based Modeling: Methods and Techniques for Simulating Human Systems](https://doi.org/10.1073/pnas.082080899)** — Eric Bonabeau (2002), <em>Proceedings of the National Academy of Sciences</em>. A concise introduction to the approach and to classes of problems for which it is useful.
- **[A Standard Protocol for Describing Individual-Based and Agent-Based Models](https://doi.org/10.1016/j.ecolmodel.2006.04.023)** — Volker Grimm and colleagues (2006), <em>Ecological Modelling</em>. Introduces the ODD protocol for making a model’s purpose, entities, processes, and design concepts inspectable.
- **[Introduction to Agent-Based Modeling](https://mitpress.mit.edu/9780262731898/introduction-to-agent-based-modeling/)** — Uri Wilensky and William Rand (2015), MIT Press. A practical, concept-driven textbook built around constructing and analyzing models in NetLogo.
- **[NetLogo Models Library](https://ccl.northwestern.edu/netlogo/models/)** — small, inspectable models that can be run in a browser.
- **[Mesa documentation](https://mesa.readthedocs.io/)** — a Python framework for building and analyzing agent-based models.
- **[CoMSES Net Computational Model Library](https://www.comses.net/codebases/)** — peer-reviewed and community-contributed models with code and documentation.
- **[Growing Artificial Societies](https://mitpress.mit.edu/9780262550253/growing-artificial-societies/)** — Joshua M. Epstein and Robert Axtell’s generative social-science treatment.
- **[A Conceptual Framework for Multidisciplinary Design Research with Example Application to Agent-Based Modeling](https://doi.org/10.1016/j.destud.2021.101074)** — **From our group.** uses ABM to show how methods and knowledge move across disciplinary boundaries in design research.
- **[Deriving Recommendations for the Use of Agent-Based Models in Engineering Design](https://doi.org/10.1115/DETC2022-90961)** — **From our group.** organizes practical guidance for constructing, running, and assessing human-focused ABMs in engineering design.
{: .reading-list }
