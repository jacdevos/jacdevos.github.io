---
published: true
layout: post
image: /assets/article_images/2026-10-10-decision-models/hero.png
image_width: 1672
image_height: 941
title: "Jev decision model: first impressions"
context: First Impressions
---

## TL;DR

Jev lets you describe a classification task and get a choice, score or probability back, without training your own classifier. Our first uses are very promising. This seems to fill a real gap and will have many uses.

On 15 September 2026, TypeSafe [released Jev](https://typesafe.ai/blog/introducing-system-one-models-and-jev), and on 6 October, OpenAI released its own take, the [Decisions API](https://developers.openai.com/api/docs/changelog).

Jev is a new kind of AI model built to make decisions. You give it information and describe what you want to know. It returns a choice from your list, a score on your scale, or a probability. Answers your code can act on.

We've started using it for small decisions inside a support bot. These are my first impressions.

## My first thought: isn't this just classification?

When I first saw Jev, I thought it was something old being hyped up. Text goes in, an enum comes out. We've had classifiers for years. So what's new?

For me, the answer is obvious once you see it: you don't have to train a neural network. You send in text, describe the decision and the possible answers, and perhaps add a couple of examples. You get the practical advantages of a specialised neural classifier without having to do the machine-learning work yourself.

An LLM can classify too. The attraction of a decision model is lower cost and faster responses when the same check runs thousands of times.

## Our first use cases

We are building a support bot that has to stay cheap. It started with two questions.

**Does the user want to speak to a person?** A direct request is easy to recognise. A plain “Yes” after the bot offers a handover needs context. We give the model the conversation and ask whether the latest message requests or accepts a handover.

**Where did this topic start?** Users want one continuous chat. The bot still needs to search help articles using the current topic, rather than everything the user has ever said. We ask how many of the latest user messages belong together. “And on Android?” stays with the Garmin question before it. “Where is the class timetable?” starts fresh.

The third use came up while testing: **does the reply do what we asked?** We give the model a reply and a short description of a good answer, then use its probability estimate as a test signal. This helps us check replies automatically, but we still need to compare the model's judgements with our own.

## More uses for Jev

Once you start looking, these decisions appear everywhere:

- **Route a support ticket:** which team should handle it, and how urgent is it?
- **Classify a document:** which of the document types your system understands does this PDF belong to?
- **Qualify a sales lead:** how well does it fit the customers you serve?
- **Flag a risky pull request:** how risky is this change, and does it need a human reviewer?

Each has the same useful shape: messy information in, a small set of answers out. For a PDF, you could start by supplying the extracted text.

The answer can still be wrong. Returning one of the allowed values doesn't guarantee the right choice. Before using a probability threshold to trigger an action, we need to test it on representative examples. For something like pull-request risk, I'd first show the result alongside normal reviews and see where they disagree.

## Where I would start

The uses are many, but here's a rough rule of thumb:

- **If you can write the rule clearly, use ordinary code.** For example, send an overdue invoice reminder after 30 days.
- **If the input needs interpretation and the possible answers are known, try a decision model.** For example, decide whether a customer's message is a complaint, a question or a request to cancel.
- **If you need a written response, use a chat model.** For example, draft the reply to that customer.

Start with one small decision, try it on real examples, and see where it gets things wrong.
