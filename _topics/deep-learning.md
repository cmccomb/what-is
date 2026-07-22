---
title: Deep learning
slug: deep-learning
description: Learning layered representations with multilayer neural networks trained from data.
one_sentence: Deep learning is machine learning with multilayer neural networks that learn task-relevant representations through stacked nonlinear transformations.
order: 13
read_time: 6 minutes
updated: 2026-07-22
detail_title: Deep down, it is representation
related:
  - machine-learning
  - latent-space
  - large-language-models
---
## Definition

**Deep learning** is a family of machine-learning methods that use multilayer neural networks to learn representations and task mappings through stacked nonlinear transformations. “Deep” refers to the number and hierarchy of learned computational layers—not to depth of understanding.

> Our stance: deep learning earns its complexity when representation learning is the bottleneck. It is not automatically the right choice for a small table of well-defined engineering variables.

Convolutional networks build spatial biases into image-like data; recurrent networks process sequences; transformers use attention; graph neural networks operate on relational structures. Their shared strength is learning useful intermediate features rather than requiring every feature to be manually specified.

## Deep down, it is representation

1. A network maps inputs through parameterized layers to an output.
2. A loss function measures the mismatch between outputs and training targets.
3. Backpropagation computes how each parameter affected the loss.
4. An optimizer updates parameters over many examples.
5. Regularization, architecture, data augmentation, and validation control generalization.

Large models are often pretrained on broad data and adapted through fine-tuning, prompting, retrieval, or smaller task-specific heads. The learned internal coordinates are often called representations or latent spaces.

Our group has used that representational capacity in two very different ways: to learn visual design strategies from human action sequences, and to approximate thermal physics in additive manufacturing. The contrast is useful. In the first case, the network learns a trace of how people design; in the second, governing equations help constrain what the network may learn. “Deep learning” names the machinery, not the source of authority.

### When depth earns its keep
Deep learning is useful for high-dimensional, unstructured, or relational inputs such as images, text, audio, fields, meshes, and graphs. In engineering it supports fast surrogate models, inverse design, representation learning, scientific machine learning, and extraction of patterns from simulation or sensor data.

It is a weaker default when data are limited, extrapolation is central, uncertainty must be characterized rigorously, or a governing physical model is inexpensive and trusted.

### Deep does not mean wise
- **Equating depth with intelligence.** A model can be powerful and still brittle, ungrounded, or poorly calibrated.
- **Skipping simple baselines.** Tree models and linear methods often win on modest tabular datasets.
- **Ignoring data geometry.** Architecture should reflect spatial, temporal, graph, or symmetry structure when possible.
- **Reporting interpolation as discovery.** Random train/test splits can conceal weak extrapolation.
- **Treating physics-informed as physics-guaranteed.** A physics term in the loss does not prove physical validity.

## Resources

- **[Learning Representations by Back-Propagating Errors](https://doi.org/10.1038/323533a0)** — David Rumelhart, Geoffrey Hinton, and Ronald Williams (1986), <em>Nature</em>. The classic account of training multilayer networks with backpropagation.
- **[Deep Learning](https://doi.org/10.1038/nature14539)** — Yann LeCun, Yoshua Bengio, and Geoffrey Hinton (2015), <em>Nature</em>. A concise field overview at the start of the modern deep-learning era.
- **[Deep Learning](https://www.deeplearningbook.org/)** — Ian Goodfellow, Yoshua Bengio, and Aaron Courville (2016). A free, comprehensive reference on representations, optimization, and major architectures.
- **[Dive into Deep Learning](https://d2l.ai/)** — a free, executable textbook.
- **[Distill](https://distill.pub/)** — visual explanations of neural-network concepts and representations.
- **[Design Society: Artificial Intelligence and Data-Driven Design](https://www.designsociety.org/group/24/30/Artificial+Intelligence+and+Data-Driven+Design)** — community work connecting learning architectures to design problems.
- **[Learning to Design From Humans](https://doi.org/10.1115/1.4044256)** — **From our group.** trains a visual design agent from human action sequences rather than an explicit objective.
- **[Stochastically-Trained Physics-Informed Neural Networks](https://doi.org/10.1115/DETC2021-70557)** — **From our group.** applies deep learning to thermal analysis in additive manufacturing.
{: .reading-list }
