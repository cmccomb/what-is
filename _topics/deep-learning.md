---
title: Deep learning
slug: deep-learning
description: Learning layered representations with multilayer neural networks trained from data.
one_sentence: Deep learning is machine learning with multilayer neural networks that learn task-relevant representations through stacked nonlinear transformations.
category: Artificial intelligence
order: 13
read_time: 6 minutes
updated: 2026-07-17
related:
  - machine-learning
  - latent-space
  - large-language-models
---
## Working definition

**Deep learning** is a family of machine-learning methods that use multilayer neural networks to learn representations and task mappings through stacked nonlinear transformations. “Deep” refers to the number and hierarchy of learned computational layers—not to depth of understanding.

> Our stance: deep learning earns its complexity when representation learning is the bottleneck. It is not automatically the right choice for a small table of well-defined engineering variables.

Convolutional networks build spatial biases into image-like data; recurrent networks process sequences; transformers use attention; graph neural networks operate on relational structures. Their shared strength is learning useful intermediate features rather than requiring every feature to be manually specified.

## How it works

1. A network maps inputs through parameterized layers to an output.
2. A loss function measures the mismatch between outputs and training targets.
3. Backpropagation computes how each parameter affected the loss.
4. An optimizer updates parameters over many examples.
5. Regularization, architecture, data augmentation, and validation control generalization.

Large models are often pretrained on broad data and adapted through fine-tuning, prompting, retrieval, or smaller task-specific heads. The learned internal coordinates are often called representations or latent spaces.

## When it is useful

Deep learning is useful for high-dimensional, unstructured, or relational inputs such as images, text, audio, fields, meshes, and graphs. In engineering it supports fast surrogate models, inverse design, representation learning, scientific machine learning, and extraction of patterns from simulation or sensor data.

It is a weaker default when data are limited, extrapolation is central, uncertainty must be characterized rigorously, or a governing physical model is inexpensive and trusted.

## Common mistakes

- **Equating depth with intelligence.** A model can be powerful and still brittle, ungrounded, or poorly calibrated.
- **Skipping simple baselines.** Tree models and linear methods often win on modest tabular datasets.
- **Ignoring data geometry.** Architecture should reflect spatial, temporal, graph, or symmetry structure when possible.
- **Reporting interpolation as discovery.** Random train/test splits can conceal weak extrapolation.
- **Treating physics-informed as physics-guaranteed.** A physics term in the loss does not prove physical validity.

## Core literature

<ul class="reading-list">
  <li><strong><a href="https://doi.org/10.1038/323533a0">Learning Representations by Back-Propagating Errors</a></strong> — David Rumelhart, Geoffrey Hinton, and Ronald Williams (1986), <em>Nature</em>.<p>The classic account of training multilayer networks with backpropagation.</p></li>
  <li><strong><a href="https://doi.org/10.1038/nature14539">Deep Learning</a></strong> — Yann LeCun, Yoshua Bengio, and Geoffrey Hinton (2015), <em>Nature</em>.<p>A concise field overview at the start of the modern deep-learning era.</p></li>
  <li><strong><a href="https://www.deeplearningbook.org/">Deep Learning</a></strong> — Ian Goodfellow, Yoshua Bengio, and Aaron Courville (2016).<p>A free, comprehensive reference on representations, optimization, and major architectures.</p></li>
</ul>

## Further reading and resources

- [Dive into Deep Learning](https://d2l.ai/) — a free, executable textbook.
- [Distill](https://distill.pub/) — visual explanations of neural-network concepts and representations.
- [Design Society: Artificial Intelligence and Data-Driven Design](https://www.designsociety.org/group/24/30/Artificial+Intelligence+and+Data-Driven+Design) — community work connecting learning architectures to design problems.

### From our group

- [Learning to Design From Humans](https://doi.org/10.1115/1.4044256) — trains a visual design agent from human action sequences rather than an explicit objective.
- [Stochastically-Trained Physics-Informed Neural Networks](https://doi.org/10.1115/DETC2021-70557) — applies deep learning to thermal analysis in additive manufacturing.
