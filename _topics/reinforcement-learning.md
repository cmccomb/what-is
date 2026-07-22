---
title: Reinforcement learning
slug: reinforcement-learning
description: Learning a policy for sequential decisions from rewards produced through interaction.
one_sentence: Reinforcement learning learns a policy for choosing actions over time by using rewards and consequences from interaction with an environment.
order: 11
read_time: 7 minutes
updated: 2026-07-22
detail_title: Just rewards
related:
  - machine-learning
  - markov-chains
  - design-space
---
## Definition

**Reinforcement learning (RL)** is machine learning for sequential decision-making. An agent observes a state, takes an action, receives a reward and a new state, and updates a policy so that expected cumulative reward improves.

> Our stance: RL is appropriate when actions change what becomes possible next. If every candidate can be scored independently, ordinary optimization or supervised learning is usually the cleaner first choice.

The standard mathematical model is a Markov decision process: states, actions, transition dynamics, rewards, and a discount or horizon. The policy maps observations or states to actions. A value function estimates long-term return. Model-free methods learn from interaction; model-based methods also learn or use transition models for planning.

## Just rewards

1. Define the environment, state or observation, legal actions, reward, and termination conditions.
2. Let the agent interact through trajectories rather than isolated examples.
3. Balance **exploration** of uncertain actions with **exploitation** of promising ones.
4. Estimate values, policies, models, or combinations of them.
5. Evaluate across seeds, environments, reward variants, and out-of-distribution cases.

Rewards can be sparse, delayed, noisy, or misspecified. Reward shaping and demonstrations can make learning practical, but they also inject strong design assumptions.

The analysis model can be part of the policy too. In our variable-fidelity work, an agent learns first through cheaper low-fidelity models and shifts toward higher-fidelity evaluation as its search narrows. Fidelity scheduling becomes part of the design strategy: spend little while learning where to look, then spend more when differences among promising candidates matter.

### Where interaction teaches
RL is useful for control, robotics, games, scheduling, adaptive experiments, and design processes where decisions form a trajectory. In configuration design, an agent can learn which modification to make next rather than only predict the score of a completed artifact.

Domain heuristics can stabilize that learning without dictating the final design. Our symmetry work uses reward shaping to bias an agent toward a useful engineering regularity. The heuristic is guidance, not a hard-coded solution.

It is often too expensive or risky when real interaction is costly, simulators are inaccurate, feedback is sparse, or safe exploration cannot be guaranteed.

### The reward function is the problem statement
- **Treating reward as the goal itself.** Agents exploit what is measured, including loopholes.
- **Ignoring the Markov assumption.** If relevant history is hidden, add memory or model partial observability.
- **Reporting one lucky training run.** RL variance demands repeated seeds and learning curves.
- **Evaluating in the training simulator only.** Policies can exploit simulator artifacts.
- **Using deep RL by default.** Tabular, bandit, planning, or direct optimization methods may be better.

## Resources

- **[Reinforcement Learning: An Introduction](http://incompleteideas.net/book/the-book-2nd.html)** — Richard Sutton and Andrew Barto (2nd ed., 2018). The standard free textbook on value methods, policy gradients, planning, and approximation.
- **[Q-Learning](https://doi.org/10.1007/BF00992698)** — Christopher Watkins and Peter Dayan (1992), <em>Machine Learning</em>. Establishes a foundational off-policy method for learning optimal action values.
- **[Human-Level Control Through Deep Reinforcement Learning](https://doi.org/10.1038/nature14236)** — Volodymyr Mnih and colleagues (2015), <em>Nature</em>. The landmark integration of deep representation learning and value-based RL.
- **[OpenAI Spinning Up](https://spinningup.openai.com/)** — concise explanations and implementations of deep RL.
- **[Gymnasium](https://gymnasium.farama.org/)** — a maintained interface and collection of environments.
- **[A Case Study of Deep Reinforcement Learning for Engineering Design](https://doi.org/10.1115/1.4044397)** — a DTM contribution applying RL to microfluidic flow sculpting.
- **[Reinforcement Learning for Efficient Design Space Exploration](https://doi.org/10.1115/1.4056297)** — **From our group.** uses variable-fidelity analysis to reduce the computational cost of design-agent training.
- **[Symmetry Heuristics for Stable Reinforcement Learning Design Agents](https://doi.org/10.31224/3615)** — **From our group.** demonstrates that domain heuristics can stabilize learning rather than merely constrain it.
{: .reading-list }
