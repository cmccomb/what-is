---
title: AI agents
question_verb: are
question_term: AI agents
slug: ai-agents
description: Computational systems that close a loop from perception and state to goal-directed action in an environment.
one_sentence: An AI agent is a computational system that perceives context, maintains task-relevant state or goals, chooses actions, and closes the loop by acting or recommending actions in an environment.
category: Artificial intelligence
order: 15
read_time: 8 minutes
updated: 2026-07-17
related:
  - artificial-intelligence
  - large-language-models
  - reinforcement-learning
---
## Working definition

**An AI agent** is a computational system that repeatedly perceives context, maintains task-relevant state or goals, chooses an action, and closes the loop by acting—or deliberately recommending action—in an environment. Agents may be rule-based or learned, embodied or purely digital, reactive or planning-intensive, and individual or multi-agent.

> Our stance: “agent” describes a system relationship, not a model brand. LLMs can serve as a reasoning kernel inside an agent, but agents long predate LLMs. Expert systems, interface agents, design agents, recommenders, process coaches, and tool-using LLM systems belong to the same lineage when they participate in a perception–decision–action loop.

Following the framing used in our Boeing engineering workshops, four enduring agent properties are **autonomy, reactivity, proactivity, and sociality**. Each is a spectrum. A useful agent can be tightly bounded and still be an agent.

The human relationship matters too. In our Human–AI Teaming Matrix, an AI system may function as a reactive problem-focused **tool**, proactive problem-focused **partner**, reactive process-focused **analytics system**, or proactive process-focused **coach**. An agent can therefore recommend, collaborate, or manage process without taking unconstrained external action.

## How it works

1. **Observe:** receive user input, sensor data, files, tool results, or environment state.
2. **Update state:** maintain goals, beliefs, plans, memory, and task history.
3. **Choose:** apply rules, planning, search, a policy, or a language model to select the next action.
4. **Act:** call a tool, modify an artifact, communicate, move, or recommend.
5. **Evaluate:** inspect consequences and decide whether to continue, revise, escalate, or stop.

Modern LLM agents often use a ReAct-style loop, retrieval, tool calling, memory, explicit planning, and self-critique. Those components can improve capability, but every additional loop also creates latency, cost, and opportunities for compounding error.

## When it is useful

Agents are useful for well-structured environments where a task requires multiple contingent steps: gathering evidence, using software tools, navigating a design workflow, monitoring a process, or coordinating specialized models. They are especially valuable when intermediate outcomes can be checked.

Agents are risky when permissions are broad, success is ambiguous, actions are irreversible, feedback is weak, or the environment contains adversarial content. Human approval should be attached to consequential actions, not invoked as a vague safety slogan.

## Common mistakes

- **Calling every chatbot an agent.** A single response without state or action closure is a model interaction.
- **Defining agency as maximum autonomy.** Bounded, reviewable agency is often more useful.
- **Ignoring historical agent systems.** Tool use, memory, coordination, and expert knowledge are not new problems.
- **Letting the model invent completion criteria.** Goals, permissions, stopping rules, and escalation paths should be explicit.
- **Using multi-agent systems as theater.** More agent personas do not guarantee better decomposition, evidence, or decisions.

## Core literature

<ul class="reading-list">
  <li><strong><a href="https://doi.org/10.1017/S0269888900008122">Intelligent Agents: Theory and Practice</a></strong> — Michael Wooldridge and Nicholas Jennings (1995), <em>Knowledge Engineering Review</em>.<p>Defines agents through autonomy, social ability, reactivity, and proactivity—the most durable boundary for the term.</p></li>
  <li><strong><a href="https://doi.org/10.1145/176789.176792">Agents That Reduce Work and Information Overload</a></strong> — Pattie Maes (1994), <em>Communications of the ACM</em>.<p>A foundational account of interface agents that learn from and act for users.</p></li>
  <li><strong><a href="https://arxiv.org/abs/2210.03629">ReAct: Synergizing Reasoning and Acting in Language Models</a></strong> — Shunyu Yao and colleagues (2022).<p>Formalizes a widely used loop in which language-model reasoning alternates with external actions and observations.</p></li>
</ul>

## Further reading and resources

- [Artificial Intelligence: A Modern Approach](https://aima.cs.berkeley.edu/) — organizes the field around agents that perceive and act.
- [Hugging Face Agents Course](https://huggingface.co/learn/agents-course/) — practical introductions to tool use, workflows, and current frameworks.
- [OSWorld](https://os-world.github.io/) and [GAIA](https://huggingface.co/gaia-benchmark) — benchmarks that expose the gap between fluent models and reliable environment use.

### From our group

- [Focus and Modality: Defining a Roadmap to Future AI–Human Teaming in Design](https://doi.org/10.1017/pds.2023.191) — introduces the tool/partner/analytics/coach matrix used in our workshop framing.
- [A Real-Time Artificial Intelligence Process Manager for Engineering Design](https://doi.org/10.1115/DETC2022-88609) — demonstrates a proactive, process-focused agent that guides human teams.
- [Symmetry Heuristics for Stable Reinforcement Learning Design Agents](https://doi.org/10.31224/3615) — a design agent whose action policy is stabilized with domain knowledge.
