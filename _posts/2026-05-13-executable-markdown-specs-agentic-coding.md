---
published: true
layout: post
image: /assets/article_images/2026-05-13-executable-markdown-specs-agentic-coding/agentic-development-flow.svg
image_width: 1400
image_height: 788
title: BDD for Spec-driven Agentic Development
context: Lightning Talk
---

![Flow diagram showing Prompt with a Spec to Agent Plans to Agent Builds to Agent Runs Tests](/assets/article_images/2026-05-13-executable-markdown-specs-agentic-coding/agentic-development-flow.svg)

Agentic software is changing how we build.

As agentic coding becomes more common, **how good your prompts specify the behaviour you want is a key to good agent dev outcomes**. The goal is longer autonomous execution loops: give an agent intent, let it plan, let it build, let it run checks, and keep going.

The workflow many of us are moving toward is:

> **Prompt with a Spec → Agent Plans → Agent Builds → Agent Runs Tests**

Weak specs lead to unreliable autonomy. Strong, executable specs make autonomy safer.

## 1. Agentic software is changing how we build

![Tool-card image showing Claude Code, OpenCode, Codex, Cursor, and Goose around autonomous coding loops](/assets/article_images/2026-05-13-executable-markdown-specs-agentic-coding/section-1-agentic-software.svg)

Agentic coding is increasingly common. Tools like Claude Code, OpenCode, Codex, Cursor, and Goose point at the same direction: longer loops where the system can take intent and move from analysis into implementation.

But the key constraint remains intent.

The emerging workflow is simple:

1. **Prompt with a Spec**
2. **Agent Plans**
3. **Agent Builds**
4. **Agent Runs Tests**

Weak specs still produce weak outcomes. LLMs do not remove ambiguity. They often scale it.

## 2. The industry is experimenting with spec tools

![Tool-card image showing SpecKit, spec-driven development, structured prompts, and prompt to plan to build pipelines](/assets/article_images/2026-05-13-executable-markdown-specs-agentic-coding/section-2-spec-first-convergence.svg)

The industry is already experimenting with spec tools.

You can see it in SpecKit-style workflows, spec-driven development tools, and structured prompt → plan → build pipelines.

These approaches work best for:

* greenfield setup
* initial decomposition of features
* turning a rough idea into a first plan

But they still struggle with the harder part of software development:

* iterative development
* evolving systems
* ongoing spec maintenance

Generating a plan from a spec is useful. Keeping the spec correct as the system changes is the real problem.

That problem remains unsolved at scale.

## 3. The proven pattern already exists

![Tool-card image showing Specification by Example, BDD, Cucumber, Gauge, Gherkin, and Markdown specs as executable contracts](/assets/article_images/2026-05-13-executable-markdown-specs-agentic-coding/section-3-executable-contracts.svg)

The proven pattern already exists: **behaviour-driven, example-based specifications**.

This is the core idea behind BDD and the [Specification by Example](https://gojko.net/books/specification-by-example/) book:

* define behaviour as concrete examples
* express scenarios of system behaviour
* execute them as part of CI

The key idea is simple:

> **Specifications are not documents. They are executable behaviour contracts.**

That directly solves the problems agentic development exposes:

* **Ambiguity** — examples make intent concrete.
* **Misalignment** — humans and agents can work from the same behaviour contract.
* **Spec drift** — the build fails when behaviour no longer matches the spec.

The important part is not BDD ceremony. It is the feedback loop.

If the spec is continuously validated by the build, it does not silently rot.

## 4. BDD + AI = spec-driven development loop

![Flow diagram showing Prompt with a Spec to Agent Plans to Agent Builds to Agent Runs Tests](/assets/article_images/2026-05-13-executable-markdown-specs-agentic-coding/agentic-development-flow.svg)

Put together, the practical workflow becomes:

1. **Prompt with a Spec**
2. **Agent Plans**
3. **Agent Builds**
4. **Agent Runs Tests**

This is where BDD and AI fit together naturally: BDD gives the agent concrete examples up front, then executable tests keep the loop honest after the build.

With AI, this matters more because LLMs amplify spec quality. Strong specs make autonomous execution more reliable. Weak specs create scalable incorrect behaviour.

[Gauge](https://gauge.org/) fits this model well:

* specs are Markdown-based
* scenarios are human-readable and LLM-readable
* executable scenarios are tied to code
* Markdown lives naturally in the repo
* CI can enforce the behaviour continuously

Markdown itself becomes a superpower in LLM workflows. It is readable by humans, easy for LLMs to consume, reviewable in pull requests, and close enough to code to become part of the engineering system.

The final point:

> **Markdown specs as executable tests solve an immediate and long-term spec feedback problem.**
