---
published: true
layout: post
image: /assets/article_images/2026-04-01-the-ai-native-2-20-software-product-peloton/peloton-structure.png
title: The AI-Native 2/20 Software Product Peloton
context: Thought Experiment
---

**Thought experiment:** a ~20 person team structure (aka Peloton)—about 7 **2-person-crews**, ~5 supporting specialists, and a product manager—**might** ease new bottlenecks from LLM efficiency. 

![Peloton: 2-person-crews, specialists, and product manager](/assets/article_images/2026-04-01-the-ai-native-2-20-software-product-peloton/peloton-structure.png)

LLMs have significantly expanded what individual software product developers can achieve.

How does this massive change affect software product org structures? This seems to be an open, jarring question.

Below is my stab at a **reference** structure to answer this—but **only as a thought experiment** for larger software product orgs, not as something you should “roll out” from a blog post.

The shape below is stitched together from **first principles and from what I have seen coaching and advising** over the years. It is not a case study of one “proven” model. Treat it as a **sketch to argue with**: stress-test the ideas, steal a piece, or discard the lot.

I mean this as an **open discussion**: the field is moving quickly, and I am super keen to learn more from others’ thoughts and experiences.

So here it is: instead of only the Spotify-style squad—the usual **canonical** 5–7 person cross-functional team—consider a Peloton-shaped unit.

**Treat this as an idea, not a rigid org chart.** The part worth considering is the *pattern*: pair-sized ownership, pull specialists when you need depth, a shared harness, and guardrails—more than any exact headcount. The **numbers** below (±20 people, ~7 crews, ~5 specialists) are **illustrative**: one plausible balance of coverage and flow. You might run smaller, combine roles, or split a Peloton across product lines without “breaking” the model—as long as you do not reintroduce the old bottlenecks by accident.

**Guiding structure & roles:**

* **Peloton** is a \+-20 person end-to-end product development team (large\!) composed of 5-7 **2-person-crews** and 5-7 specialists.
* **Crews**: Each crew is an autonomous product development pair: typically a senior generalist and a junior developer, who together own the full process from idea to delivery. Alternatively any pair that covers all the generalist skills necessary to develop a feature: product, domain, UX, code, engineering, QA, infrastructure. In some cases a crew of 3 could work.
* **Support: specialists:** Supported by 5-7 shared specialists. Product, domain, UX/UI, guardrail+QA engineering, software, harness engineering.
* **Support: product manager**: oversees overall priorities and cohesiveness of product components and backlogs. Not involved in every detail.

**Process:**

* The Crew **owns delivery from idea into users’ hands** (in production). We understand that this requires harness maturity, so practically staging with external checks could be implemented as a crutch, but not the **end goal**.
* The Crew **pulls in specialist help** as needed: e.g. when making a small change, maybe run a proposed implementation past the UX expert. Maybe a software/harness expert to improve flow. Maybe guardrail+QA engineer to workshop guardrails for the new work.
* Each Crew has its **own prioritised backlog** of work which it works from daily, and its own standups. No shared daily standup with other crews.
* The Crew **pulls work** from the product manager's overall roadmap into its backlog when it plans. With bigger, non-obvious changes crew workshops solutions with the product manager, UX to come up with overall design.
* The Peloton can **get together to align** on product, share learnings, retrospect, maybe once a month.

**In bigger orgs:**

* Specialist “Chapters” that operate across Pelotons, to help crews and specialists in a specific specialty and defining cross-Peloton learning and governance is valuable as ever.
* Product Managers can report into a central structure to prioritise business goals.

In this thought experiment, the structure attempts to combine what worked before with first principles: a team shape that optimises flow of value given that a single person can do lots more, while handovers, consensus, and gates that depend on other people still act as bottlenecks. Also, one person can’t be the perfect generalist, and needs help. Organisations (and society) also need to think about continuity, knowledge sharing and mentoring the next gen (hence the junior).

One downside of the above model is the **vast amount of skills a generalist Crew member is required to have** \- but I’m wondering: isn’t this the reality of the skills growth challenge we are faced with in order to get the full flow benefits of LLMs?

## **Context**

In the Agile world, the well established idea of cross-functional software product teams became the **canonical** structure to optimise product development value, eloquently described in Hendrik Kniberg’s *Spotify Engineering Culture* videos. In coaching work I have helped organisations move toward that kind of model; the Peloton sketch earlier in this post is a separate, speculative step for the LLM era—not a claim that I run it end-to-end in my own small team.

However, in the era of LLM-assisted development, that **canonical** squad model is being challenged. Everyone recognises the need to get very skilled at working with LLMs and learn how to get the benefits. Also, everyone seems to have experiences of 1 person team / "lone wolf" being extremely productive, there is consensus on this. But structuring your company as 1000, 1 person teams would surely be chaotic? Imo you need effective team/communication structures in a larger org, in the LLM era, just as much as the Roman army did 2k years ago.

Historically, similar transitions have followed a consistent trajectory: Extreme Programming introduced pairing and tight feedback loops, and CI/CD gradually became an industry standard. The direction has been consistent: faster feedback loops, reduced handoffs, increased ownership, and stronger engineering discipline. LLMs represent the next step change: capable developers can now operate across implementation, design exploration, testing, documentation, analysis, and refactoring. This does not remove the need for teams or software engineering practices but changes the shape of the smallest effective delivery unit. Traditional cross-functional teams aimed to reduce dependencies between specialised roles, but when individuals can operate broadly across the stack, those structures may become unnecessarily constraining. At scale, the question is what shape preserves flow while enabling scale, quality, and learning—this article offers one possible answer, not the answer.

## **The Core Unit: Product Development Pair**

The fundamental new delivery unit is the **Crew: A Product Development Pair**, typically a senior generalist and a junior developer. 

It doesn't have to be senior/junior, any pair that covers all the generalist skills necessary to develop a feature: product, domain, UX, code, engineering, QA, infrastructure would work. The reason I'm pushing the junior here as a kind of apprentice, to solve the continuity for the company and large skills requirements to be effective - and grow the next generation of builders. Think of a blacksmith with an apprentice. It's more for the long term benefits.

The pair owns delivery end-to-end, collaborates closely, and uses AI tools to expand capability.

While a pair can operate as a single individual, pairing provides several lasting organisational and personal benefits. A crew of 3 could also work in some cases. Knowledge sharing prevents silos and single points of failure. Not growing the next generation would be a mistake \- and becoming a good generalist is especially daunting. Pairing supports the development of future generalists, creating a continuous learning environment embedded directly in delivery work. LLMs expand individual capability, but collaboration remains essential for quality, human growth and long term continuity.

Each pair maintains an independent backlog and aims to deliver with minimal blocking dependencies, ideally to production. Independent backlogs clarify ownership, increase delivery speed, and improve the flow of value.

Pairs have authority to decide when specialist input is required. Lightweight prompts can support decision-making, such as: “Does this change introduce architectural complexity?” or “Are there reliability concerns?” Temporary checkpoints can scaffold teams still building capability, similar to early CI/CD adoption, ensuring high flow and quality without rigid gates.

Pairs pull in specialists only when beneficial. For example, a UX specialist may contribute to complex interaction design or review flows, while a product/domain specialist may shape problem definition or validate direction. The harness engineer provides architectural guidance and shared technical patterns. QA specialists focus on exploratory testing, edge cases, and system reliability. Specialists act as force multipliers rather than sequential phase owners. Most teams I dealt with struggled to reach fully pull-based delivery before—but I don’t think that will be optional if we want the speed and quality now available.

## **The Harness Engineer**

A key new specialist support role is the **harness engineer**, who maintains the shared technical environment across the unit. Think of this as the devops engineer for the LLM enabled world. This role builds systems and pipelines, guardrails, manages development environments and reusable engineering patterns, develops approaches for LLM usage, and optimises system-level performance. The harness ensures pairs can operate effectively without managing infrastructure complexity themselves.

## **The QA and Guardrail Engineer**

QA remains critical, providing exploratory testing, scenario evaluation, and confidence in releases. Guardrails supplement QA by proactively enforcing automated validation patterns, reliability practices, observability standards, and system-level safeguards. Together, QA and guardrails allow pairs to move quickly while maintaining product quality.

I think the traditional QA roles now need to also start thinking in terms of guardrails and test automation. Test automation is not new by any means, but in my experience where the previous best practices faltered for most teams is in test automation—I suspect it will be an even bigger problem, so the shift is from “maybe we’ll get it right one day” to “necessary from day one.”

## **Avoiding speculation & anthropomorphism**

In this article I avoid several common views (which I don’t share):

* **Job loss predictions:** To me, the impact of capability expansion on employment is unclear; historically, infrastructure improvements increased demand rather than simply reducing labour \- but who knows this time? Rather not speculate\! But there seems to be a consensus: doing good product development now requires a broad skill set, and I worry about junior product engineers being left behind unless we deliberately make room for them in how we organise (hence the junior in each crew). “Skill up and you’ll be fine” seems to be the best advice atm.
* **Teams of agents:** I believe LLMs are best treated as engineering components, context, structured prompts, and guardrails, LLM in a loop with tools, rather than anthropomorphised actors. We are the engineers that have to utilise these amazing new processors.
* **Removal of software engineering discipline:** can a slop monolith give the best UX and also speed going forward? In my experience, no: working with LLMs increases the importance of understanding software engineering principles and practices \- we need those things more than ever. E.g. XP practices like TDD and CI that allow us to work in small, safe steps, to gain speed and quality.

I am still learning on this topic; if you are running experiments with team shape in the LLM era—at a larger scale, or a deliberately different one—I would genuinely like to hear about it.
