---
published: true
layout: post
title: The AI-Native 2/20 Software Product Peloton
---

**TL;DR** a 20 person software product team structure (aka Peloton), composed of about 7 2-person-crews, with about 5 supporting specialists and a product manager could remove new bottlenecks due to new LLM effeciencies.

LLMs has significantly expanded what individual software product developers can achieve.

How does this massive change affect software product org structures? This seems to be an open, jarring question.

Below is my stab at an idealised structure to answer this.

Replace the Squad, the current idealised 5-7 person cross-functional team, with a Pelaton:

**Ideal structure & roles:**

* **Pelaton** is a \+-20 person end-to-end product development team (large\!) composed of 5-7 2-person-crews and 5-7 specialists.
* **Crews**: Each crew is an autonomous product development pair, with a senior generalist, full process engineer and a junior product developer. Alternatively any pair that covers all the generalist skills necessary to develop a feature: product, domain, UX, code, engineering, QA, infrastructure. In some cases a crew of 3 could work.
* **Support: specialists:** Supported by 5-7 shared specialists. Product, domain, UX/UI, guardrail+QA engineering, software, harness engineering.
* **Support: product manager**: oversees overall priorities and cohesiveness of product components and backlogs. Not involved in every detail.

**Process:**

* The Crew **owns delivery from idea into users hands** (in production). We understand that this requires harness maturity, so practically staging with external checks could be implemented as a crutch, but not the ideal.
* The Crew **pulls in specialist help** as needed: e.g. when making a small change, maybe run a proposed implementation past the UX expert. Maybe a software/harness expert to improve flow. Maybe guardrail+QA engineer to workshop guardrails for the new work.
* Each Crew has its **own prioritised backlog** of work which it works from daily, and its own standups. No shared daily standup with other crews.
* The Crew **pulls work** from the product manager's overall roadmap into its backlog when it plans. With bigger, non-obvious changes crew workshops solutions with the product manager, UX to come up with overall design.
* The Peloton can **get together to align** on product, share learnings, retrospect, maybe once a month.

**In bigger orgs:**

* Specialist “Chapters” that operate across Pelatons, to help crews and specialists in a specific specialty and defining cross Peloton learning and governance is valuable as ever.
* Product Managers can report into a central structure to prioritise business goals.

This structure above attempts to combine what worked before with first principles: we need a team structure that optimises both flow of value generated, given the new reality that a single person can do lots more, but any handover, consensus, gates reliant on other people would be the bottleneck. Also, one person can’t be the perfect generalist, and needs help. Organisations (and society) also need to think about continuity, knowledge sharing and mentoring the next gen (hence the junior).

One downside of the above model is the **vast amount of skills a generalist Crew member is required to have** \- but I’m wondering: isn’t this the reality of the skills growth challenge we are faced with in order to get the full flow benefits of LLMs?

---

## **Context**

In the Agile world, the well established idea of cross-functional software product teams became the idealised structure to optimise product development value, eloquently described in Hendrik Kniberg’s *Spotify Engineering Culture* videos. Through my coaching work, I have helped many organisations transition to this model with strong results.

However, in the era of LLM-assisted development, this idealised structure is being challenged. Conversations with practitioners in the field reveal a common theme: everyone recognises the need to get skilled at working with LLMs, but there is no consensus yet on the best team structure to leverage this capability.

Historically, similar transitions have followed a consistent trajectory: Extreme Programming introduced pairing and tight feedback loops, and CI/CD gradually became an industry standard. The direction has been consistent: faster feedback loops, reduced handoffs, increased ownership, and stronger engineering discipline. LLMs represent the next step change: capable developers can now operate across implementation, design exploration, testing, documentation, analysis, and refactoring. This does not remove the need for teams or software engineering practices but changes the shape of the smallest effective delivery unit. Traditional cross-functional teams aimed to reduce dependencies between specialised roles, but when individuals can operate broadly across the stack, those structures may become unnecessarily constraining. We need a structure that preserves flow while enabling scale, quality, and learning.

---

## **The Core Unit: Product Development Pair**

The fundamental new delivery unit is the **Crew: A Product Development Pair**, typically a senior generalist and a junior developer. Alternatively any pair that covers all the generalist skills necessary to develop a feature: product, domain, UX, code, engineering, QA, infrastructure.

The pair owns delivery end-to-end, collaborates closely, and uses AI tools to expand capability.

While a pair can operate as a single individual, pairing provides several lasting organisational and personal benefits. A crew of 3 could also work in some cases. Knowledge sharing prevents silos and single points of failure. Not growing the next generation would be a mistake \- and becoming a good generalist is especially daunting. Pairing supports the development of future generalists, creating a continuous learning environment embedded directly in delivery work. LLMs expand individual capability, but collaboration remains essential for quality, human growth and long term continuity.

Each pair maintains an independent backlog and aims to deliver with minimal blocking dependencies, ideally to production. Independent backlogs clarify ownership, increase delivery speed, and improve the flow of value.

Pairs have authority to decide when specialist input is required. Lightweight prompts can support decision-making, such as: “Does this change introduce architectural complexity?” or “Are there reliability concerns?” Temporary checkpoints can scaffold teams still building capability, similar to early CI/CD adoption, ensuring high flow and quality without rigid gates.

Pairs pull in specialists only when beneficial. For example, a UX specialist may contribute to complex interaction design or review flows, while a product/domain specialist may shape problem definition or validate direction. The harness engineer provides architectural guidance and shared technical patterns. QA specialists focus on exploratory testing, edge cases, and system reliability. Specialists act as force multipliers rather than sequential phase owners. Most teams I dealt with struggled to get to fully pulling based before \- I but I don’t think it will be optional to get the speed and quality available.

## **The Harness Engineer**

A key new specialist support role is the **harness engineer**, who maintains the shared technical environment across the unit. Think of this as the devops engineer for the LLM enabled world. This role builds systems and pipelines, guardrails, manages development environments and reusable engineering patterns, develops approaches for LLM usage, and optimises system-level performance. The harness ensures pairs can operate effectively without managing infrastructure complexity themselves.

---

## **The QA and Guardrail Engineer**

QA remains critical, providing exploratory testing, scenario evaluation, and confidence in releases. Guardrails supplement QA by proactively enforcing automated validation patterns, reliability practices, observability standards, and system-level safeguards. Together, QA and guardrails allow pairs to move quickly while maintaining product quality.

I think the traditional QA roles now need to also start thinking in terms of guardrails and test automation. Test automation is not new by any means, but in my experience where the previous best practices faltered for most teams is in test automation \- I suspect it will be even a bigger problem, so changes from maybe we’ll get it right one day to necessary on

---

## **Avoiding speculation & anthropomorphism**

In this article I avoid several common views (which I don’t share):

* **Job loss predictions:** To me, the impact of capability expansion on employment is unclear; historically, infrastructure improvements increased demand rather than simply reducing labour \- but who knows this time? Rather not speculate\! But there seems to be a consensus: in order to do good product dev now a whole host of skills are required, and so I am worried about leaving the next generation of product engineers behind to cater for juniors in the structure. Skill up and you’ll be fine, seems to be the best advice atm.
* **Teams of agents:** I believe LLMs are best treated as engineering components, context, structured prompts, and guardrails, LLM in a loop with tools, rather than anthropomorphised actors. We are the engineers that have to utilise these amazing new processors.
* **Removal of software engineering discipline:** can a slop monolith give the best UX and also speed going forward? In my experience, no: working with LLMs increases the importance of understanding software engineering principles and practices \- we need those things more than ever. E.g. XP practices like TDD and CI that allows us to work in small, safe steps, to gain speed and quality.
