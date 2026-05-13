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

A good example is GitHub's [Spec Kit](https://github.com/github/spec-kit): an open-source toolkit for spec-driven development. It installs a `specify` CLI, sets up agent workflows, and gives agents structured commands like `/speckit.specify`, `/speckit.plan`, `/speckit.tasks`, and `/speckit.implement`.

That is useful. It makes the path from product scenario → spec → plan → tasks → implementation more explicit.

But it still points at the same hard problem: generating a plan from a spec is useful; keeping the spec correct as the system changes is the long-term problem.

## 3. Specification by example already exists

![Specification by Example book cover](https://m.media-amazon.com/images/I/61K4UV59xyL._SY522_.jpg)

The main idea in the [Specification by Example](https://gojko.net/books/specification-by-example/) book is simple: instead of writing traditional requirement documents like “the system should calculate discounts correctly”, teams define concrete examples:

> “When a customer buys 3 items, they get 10% off”
>
> “When they buy 10 items, they get 20% off”

These examples become the basis for:

* requirements
* automated acceptance tests
* development guidance
* documentation

This approach is what the book calls **Specification by Example** (SBE). It is the same family of practice behind BDD, Cucumber, and Gauge: make behaviour concrete enough that humans, agents, and CI can all work from the same examples.

That directly solves a problem agentic development exposes:

* **Ambiguity** -- examples make intent concrete.
* **Misalignment** -- humans and agents can work from the same behaviour contract.
* **Spec drift** -- the build fails when behaviour no longer matches the spec.

The important part is that it isn't just a static document, it is the feedback loop. If the spec is continuously validated by the build, it does not silently rot.

## 4. BDD + AI = spec-driven development loop

![Flow diagram showing Prompt with a Spec to Agent Plans to Agent Builds to Agent Runs Tests](/assets/article_images/2026-05-13-executable-markdown-specs-agentic-coding/agentic-development-flow.svg)

Put together, the practical workflow becomes:

1. **Prompt with a Spec**
2. **Agent Plans**
3. **Agent Builds**
4. **Agent Runs Tests**

This is where BDD and AI fit together naturally: BDD plays at both ends of the flow. At step 1, it gives the agent concrete examples up front. At step 4, executable tests keep the loop honest after the build.

With AI, this matters more because LLMs amplify spec quality. Strong specs make autonomous execution more reliable. Weak specs create scalable incorrect behaviour.

[Gauge](https://gauge.org/) test framework fits this BDD model well because Markdown specs are readable by humans, easy for LLMs to consume, reviewable in pull requests, tied to executable code, and close enough to the repo and CI to become part of the engineering system.

The final point:

> **BDD helps solve the specification drift problem by turning examples into executable tests: the same specs guide the build and keep checking the behaviour over time.**
