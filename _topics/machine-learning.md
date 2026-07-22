---
title: Machine learning
slug: machine-learning
description: Building models whose performance improves through data or experience rather than only hand-written rules.
one_sentence: Machine learning is the part of AI concerned with algorithms that improve a task-relevant performance measure through data or experience.
order: 12
read_time: 6 minutes
updated: 2026-07-22
detail_title: You are what you train on
related:
  - artificial-intelligence
  - deep-learning
  - reinforcement-learning
---
## Definition

**Machine learning (ML)** is the part of artificial intelligence concerned with algorithms whose performance on a task improves through data or experience. A learning problem specifies the task, the experience available, and the measure of improvement.

> Our stance: ML is not “letting the data speak.” Data are produced by a system, a sampling process, and human choices. A model learns regularities in that evidence—including its blind spots.

Supervised learning uses labeled examples; unsupervised and self-supervised learning seek structure or predictive targets in unlabeled data; reinforcement learning uses feedback from sequential interaction. Deep learning is a family of machine-learning methods built around multilayer neural networks.

## You are what you train on

1. Define a task and a decision-relevant performance measure.
2. Construct a dataset and document how examples, labels, and splits were produced.
3. Choose a representation, model family, loss function, and training procedure.
4. Fit parameters on training data and tune choices without contaminating the final test.
5. Evaluate generalization, calibration, failure modes, subgroup performance, and robustness.
6. Monitor the deployed system as data and behavior change.

Learning is always conditional on an inductive bias: assumptions embedded in the architecture, features, objective, data augmentation, and regularization. Generalization is not magic; it is the bet that those biases fit the future well enough.

In engineering organizations, the first ML problem is often not model selection. Our Design for AI work argues that readiness is itself a design problem: machine-readable data, metadata, interoperable digital threads, and people who can connect engineering practice to model development are frequently the bottleneck. A sophisticated learner cannot recover evidence the organization never made usable.

Representation is part of that infrastructure. In our drone-performance work, graph representations learned the engineering relationships more effectively than image-grid encodings. The lesson is broader than drones: a model can only learn easily from structure its representation makes available.

### When learning beats programming
ML is useful when examples or experience capture a mapping that is difficult to specify directly: perception, prediction, anomaly detection, surrogate modeling, recommendation, or policy learning. In engineering design it can approximate expensive simulation, learn representations, identify patterns in design behavior, or generate candidate artifacts.

A hand-written rule, physical model, or simple statistical model is often better when data are scarce, extrapolation dominates, causal guarantees matter, or failure must be explained precisely.

### Models inherit their data
- **Confusing fitting with learning that generalizes.** Training performance is not the result.
- **Leaking test information.** Preprocessing, augmentation, and model selection can all contaminate evaluation.
- **Treating labels as ground truth.** Labels often encode disagreement, policy, or measurement error.
- **Ignoring the baseline.** A complex model should beat a meaningful simple alternative.
- **Evaluating a model while deploying a system.** Interfaces, incentives, monitoring, and human use affect outcomes.

## Resources

- **[Some Studies in Machine Learning Using the Game of Checkers](https://doi.org/10.1147/rd.33.0210)** — Arthur Samuel (1959), <em>IBM Journal of Research and Development</em>. An early demonstration of performance improvement through experience.
- **[Machine Learning](https://www.cs.cmu.edu/~tom/mlbook.html)** — Tom Mitchell (1997). Provides the enduring task–experience–performance definition and a broad introduction to the field.
- **[Pattern Recognition and Machine Learning](https://www.microsoft.com/en-us/research/publication/pattern-recognition-machine-learning/)** — Christopher Bishop (2006). A probabilistic foundation for supervised and unsupervised learning.
- **[An Introduction to Statistical Learning](https://www.statlearning.com/)** — an accessible, free text with labs.
- **[Fairness and Machine Learning](https://fairmlbook.org/)** — Barocas, Hardt, and Narayanan on sociotechnical consequences of learning systems.
- **[REID Lab](https://engineering.purdue.edu/reidlab/)** — Tahira Reid Smith's human-centered design research is a useful counterweight to model-first thinking.
- **[Design for Artificial Intelligence](https://doi.org/10.1115/1.4055854)** — **From our group.** argues that useful ML begins with data practices and engineering infrastructure, not model selection.
- **[Assessing Machine Learnability of Image and Graph Representations for Drone Performance Prediction](https://doi.org/10.1017/pds.2022.180)** — **From our group.** shows that design representation materially shapes learnability.
{: .reading-list }
