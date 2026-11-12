---
published: true
layout: post
image: /assets/article_images/2026-11-12-sdlc-in-the-agentic-era/sdlc-v3.png
image_width: 1600
image_height: 1000
title: The SDLC in the agentic era
context: Essay
---

AI can automate more of the repeatable engineering work across the software development lifecycle. It can also help us try a design, test it and revise it. How does that change disciplined software engineering? Let’s look at how the lifecycle evolved.

[![SDLC v3 shows the same six stages in two lanes, an automated repeatable pipeline and an iterative design process.](/assets/article_images/2026-11-12-sdlc-in-the-agentic-era/sdlc-v3.png)](/assets/article_images/2026-11-12-sdlc-in-the-agentic-era/sdlc-v3.png)

## SDLC v1 (pre-2000) · Waterfall with handovers

In the waterfall view, planning, requirements and specification were seen as engineering design. The design was done up front and handed over. Development and testing were treated like manual manufacturing.

Working code kept exposing details that the specification hadn’t settled. Writing it and testing it helped us discover the real complexity, the constraints and the flaws in how the solution fit the problem. The code itself was a design artefact. [Jack W. Reeves, *What Is Software Design?*](https://www.developerdotstar.com/mag/articles/reeves_design.html)

## SDLC v2 (2002–2025) · Iterative development with CI/CD

Once you see development and testing as part of engineering design, the process looks different. You build something, see how it behaves and use what you learn to revise the design. CI/CD takes care of the repeatable work of building, running automated checks and delivering the software.

## SDLC v3 (2026+) · AI-assisted iterative development

The same stages now have two lanes. Both run through planning, requirements, specification, development, testing and deployment.

- **Automation** runs repeatable work through a pipeline. An agent can generate and review code. The pipeline can build it, run checks and deploy it. Some of those steps produce variable results, and others are more deterministic.
- **Design** is the iterative work of deciding what to try and learning from it. An agent can help explore an option. We might choose a test environment and an audience, let the pipeline deploy to that target, then use what we learn to revise the design.

## What can we learn from this change?

1. **Automation. Move from CI/CD to Continuous Engineering (CE).** Use AI to automate repeatable engineering work throughout the lifecycle that CI/CD alone could not automate before.
2. **Design. Use the extra room to iterate.** AI makes it easier to try, test and revise a design. As in earlier versions of the SDLC, a focus on automation and handovers can obscure the design loop.
3. **Tooling. Build end-to-end pipelines.** Today’s tooling is split between agentic development environments and traditional CI/CD tools. I’d like to see them joined in one pipeline that carries a change from specification through delivery in a disciplined way.
