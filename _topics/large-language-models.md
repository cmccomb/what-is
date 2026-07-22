---
title: Large language models
question_verb: are
question_term: large language models
slug: large-language-models
description: Large neural sequence models trained to predict and generate token sequences across broad language data.
one_sentence: Large language models are neural sequence models trained at scale to predict tokens, yielding flexible capabilities for generating and transforming language and other serialized representations.
order: 14
read_time: 7 minutes
updated: 2026-07-22
detail_title: Talk is cheap
related:
  - deep-learning
  - ai-agents
  - generative-design
---
## Definition

**Large language models (LLMs)** are neural sequence models trained on very large text or multimodal corpora, usually through next-token or masked-token prediction. Scale, transformer architectures, and broad pretraining produce models that can continue, transform, summarize, translate, retrieve, reason over, and generate serialized information.

> Our stance: an LLM is a powerful predictive model, not a database, truth machine, or agent by itself. Its fluency is useful precisely because it compresses broad regularities—and dangerous when fluency is mistaken for evidence.

“Large” is relative to an era and community. The more useful distinction is between a base model trained on a predictive objective and an application system that adds instructions, retrieval, tools, memory, verification, or domain constraints.

## Talk is cheap

1. Text and other inputs are converted into tokens.
2. A transformer uses attention and learned representations to model relationships among tokens.
3. Pretraining adjusts billions of parameters to improve token prediction across a broad corpus.
4. Instruction tuning and preference optimization shape interaction behavior.
5. At inference, the model generates a probability distribution over the next token and samples or selects repeatedly.

Prompting changes the context, not the model's underlying parameters. Retrieval provides external evidence. Tool use gives the model actions. Fine-tuning changes behavior through additional training data.

Prompting can also make a model *sound* as though it has a particular cognitive style. Our experiments suggest that this can change the distribution of outputs, but it does not establish that the model possesses the human cognitive process named in the prompt. Behavioral resemblance is an experimental result; psychological attribution is an additional claim.

### Where language becomes leverage
LLMs are useful for drafting, synthesis, extraction, coding, tutoring, search interfaces, and early design ideation—especially when the output can be checked. They can lower the cost of exploring alternatives or translating between representations.

They are poor authorities for exact facts without sources, private organizational knowledge not in context, numerical guarantees, or high-stakes decisions without verification.

They are also not automatically diverse ideators. Across 4,000 generated concepts in one of our studies, LLMs produced useful volume but human concept sets remained more diverse. Scale is easy to see; collapse toward familiar regions of the design space is easier to miss.

### Fluency is not evidence
- **Calling the model an agent.** Agency requires an action loop, goals, state, and an environment—not just text generation.
- **Treating explanations as faithful traces.** A plausible rationale may not reveal the mechanism that produced an answer.
- **Using retrieval as a truth guarantee.** The model can misread, omit, or distort retrieved evidence.
- **Evaluating vibes.** Use task-specific cases, failure taxonomies, and meaningful baselines.
- **Ignoring representation effects.** Wording, order, modality, and context can change outcomes substantially.

## Resources

- **[Attention Is All You Need](https://arxiv.org/abs/1706.03762)** — Ashish Vaswani and colleagues (2017). Introduces the transformer architecture underlying modern LLMs.
- **[Language Models Are Few-Shot Learners](https://papers.nips.cc/paper/2020/hash/1457c0d6bfcb4967418bfb8ac142f64a-Abstract.html)** — Tom Brown and colleagues (2020). Demonstrates in-context learning at scale and helped establish the modern general-purpose LLM paradigm.
- **[On the Dangers of Stochastic Parrots](https://doi.org/10.1145/3442188.3445922)** — Emily Bender, Timnit Gebru, Angelina McMillan-Major, and Margaret Mitchell (2021). A necessary account of data, scale, environmental, bias, and meaning-related risks.
- **[On the Opportunities and Risks of Foundation Models](https://arxiv.org/abs/2108.07258)** — a broad sociotechnical research agenda.
- **[Conceptual Design Generation Using Large Language Models](https://www.research.autodesk.com/publications/conceptual-design-generation-using-large-language-models/)** — a design-community comparison with crowdsourced concepts.
- **[Christina Harrington's research](https://www.christinaharrington.me/research-1)** — community-based and equity-centered methods worth bringing into AI product research.
- **[Do Large Language Models Produce Diverse Design Concepts?](https://doi.org/10.1115/1.4067332)** — **From our group.** distinguishes usefulness and feasibility from novelty and diversity.
- **[Putting the Ghost in the Machine](https://arxiv.org/abs/2405.04020)** — **From our group.** tests whether prompting can emulate different cognitive styles.
- **[Expanding the Generative Power of LLMs Through Formal Design Grammars](https://doi.org/10.1115/1.4070095)** — **From our group.** pairs statistical generation with explicit design languages.
{: .reading-list }
