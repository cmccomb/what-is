# What is?

A compact, research-grounded field guide to recurring concepts in design, computation, and engineering. The site is intended for quick use in advising meetings, classes, and collaborations. Its working definitions are deliberately opinionated: each page draws a useful boundary, identifies sloppy usages, and points toward deeper reading.

Public URL: <https://cmccomb.com/what-is/>

## Topics

- Agent-based modeling
- Configuration design
- Shape grammars
- Graph grammars
- Artificial intelligence
- Simulated annealing
- Hidden Markov models
- Markov chains
- Design space
- Design heuristics
- Reinforcement learning
- Machine learning
- Deep learning
- Large language models
- AI agents
- Optimization
- Design fixation
- A team
- A dyad
- Bricolage in design
- Topology optimization
- Generative design
- Latent space
- Design by analogy
- The Functional Basis
- Qualitative coding
- Pareto frontier

## Add a topic

1. Copy an existing file in `_topics/` and rename it with a URL-safe slug.
2. Update the front matter. Keep `slug` identical to the filename and give `order` a unique integer.
3. Preserve the six standard sections: working definition, how it works, when it is useful, common mistakes, core literature, and further reading and resources.
4. Prefer DOI or first-party links for core literature. Add one sentence explaining why each source is useful.
5. Build and check the site before committing.

```sh
bundle install
bundle exec jekyll build --strict_front_matter
ruby script/check_site.rb
```

For local preview:

```sh
bundle exec jekyll serve
```

Then open <http://127.0.0.1:4000/what-is/>.

## Suggested next topics

The strongest next cluster would continue documenting methods that recur across the group's work:

- Surrogate models and multi-fidelity modeling
- Uncertainty quantification and robust design
- Design of experiments
- Monte Carlo methods, Markov chain Monte Carlo, and Bayesian inference
- Evolutionary algorithms
- Product architecture and design structure matrices
- Protocol analysis and network analysis
- Cognitive style and collective intelligence
- Set-based concurrent engineering

## Deployment

GitHub Actions builds the Jekyll site and deploys it to GitHub Pages after pushes to `main`. The repository intentionally has no `CNAME`: GitHub Pages inherits the custom domain from the `cmccomb.github.io` user site and serves this project at `/what-is/`.
