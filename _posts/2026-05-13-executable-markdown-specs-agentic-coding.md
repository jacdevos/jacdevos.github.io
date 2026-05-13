---
published: true
layout: post
image: /assets/article_images/2026-05-13-executable-markdown-specs-agentic-coding/section-5-bdd-ai-loop.svg
image_width: 1400
image_height: 788
title: BDD for Spec-driven Agentic Development
context: Lightning Talk
---

Agentic software is changing how we build.

As agentic coding becomes more common, **specifications are becoming the control surface**. The goal is longer autonomous execution loops: give an agent intent, let it plan, let it build, let it run checks, and keep going.

The constraint is also obvious: **agents need precise intent**.

The workflow many of us are moving toward is:

> **Spec as prompt → Plan → Build → Automated tests → CI validates behaviour**

Weak specs lead to unreliable autonomy. Strong, executable specs make autonomy safer.

That is why I think the practical future of spec-driven development is not only new tooling. It is also a proven software engineering pattern becoming much more important again:

> **Executable Markdown specifications enforced in CI.**

## 1. Agentic software is changing how we build

![Tool-card image showing Claude Code, OpenCode, Cursor, and Goose around autonomous coding loops](/assets/article_images/2026-05-13-executable-markdown-specs-agentic-coding/section-1-agentic-software.svg)

Agentic coding is increasingly common. Tools like Claude Code, OpenCode, Cursor, and Goose point at the same direction: longer loops where the system can take intent and move from analysis into implementation.

But the key constraint remains intent.

The emerging workflow is simple:

1. **Spec as prompt**
2. **Plan**
3. **Build**
4. **Automated tests**

That fourth step matters. Without automated tests, the loop depends too much on human review. With tests, the agent has a feedback signal it can use while working.

Weak specs still produce weak outcomes. LLMs do not remove ambiguity. They often scale it.

## 2. The industry is converging on “spec-first”

![Tool-card image showing SpecKit, spec-driven development, structured prompts, and prompt to plan to build pipelines](/assets/article_images/2026-05-13-executable-markdown-specs-agentic-coding/section-2-spec-first-convergence.svg)

The industry is already converging on “spec-first”.

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

This is the core idea behind BDD and Specification by Example:

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

## 4. Why this matters more with AI

![Diagram showing LLMs amplifying strong specifications into reliable autonomy and weak specifications into incorrect behaviour](/assets/article_images/2026-05-13-executable-markdown-specs-agentic-coding/section-4-ai-amplifies-spec-quality.svg)

LLMs amplify spec quality.

Strong specs make autonomous execution more reliable. Weak specs create scalable incorrect behaviour. Ambiguity gets amplified, not resolved.

So the bottleneck moves.

It is no longer only about how quickly we can generate code. The bottleneck becomes the **quality and executability of the specification itself**.

This is why CI-enforced specs matter.

A Markdown document in a repo can still drift. A ticket can go stale. A Confluence page can become archaeological evidence.

But an executable spec that runs in CI fails loudly.

That loud failure is the point. It tells humans and agents that either the implementation is wrong, or the behaviour contract must be updated deliberately.

## 5. BDD + AI = spec-driven development loop

![Loop diagram showing Spec as prompt to Plan to Build to Automated tests to CI validates behaviour](/assets/article_images/2026-05-13-executable-markdown-specs-agentic-coding/section-5-bdd-ai-loop.svg)

Put together, the practical workflow becomes:

1. **Spec as prompt**
2. **Plan**
3. **Build**
4. **Automated tests**
5. **CI validates behaviour**

This is where BDD and AI fit together naturally.

The spec gives the agent intent. The plan gives it structure. The build changes the system. Automated tests give fast feedback. CI enforces the behaviour contract over time.

Gauge fits this model well:

* specs are Markdown-based
* scenarios are human-readable and LLM-readable
* executable scenarios are tied to code
* Markdown lives naturally in the repo
* CI can enforce the behaviour continuously

Markdown itself becomes a superpower in LLM workflows. It is readable by humans, easy for LLMs to consume, reviewable in pull requests, and close enough to code to become part of the engineering system.

The final point:

> **The future is not only new spec-driven tools. It is executable Markdown specs enforced in CI.**
