---
layout: post
title: "Is fast typing required for developers?"
tags:
---
I changed my mind on this recently, and here's why.

There is a sentiment that developers have to type really fast because we "type code for a living".

I've long rejected that idea, and not just because lines of code is the worst possible metric for productivity. My main reason was that a good dev workflow normally entails much, much more reading than writing. Also, communication skills, design skills, etc. seem more important to me. I thought fast typing was merely a nice to have, and I never really invested time into improving mine.

But reading the great book "Thinking, Fast and Slow" by Daniel Kahneman showed me a flaw in my view (there's so much substance in that book, I'm sure I'll get many more insights from it).

#### The insight is this:
* Explicit, conscious thinking (which I believe paramount to development) takes a lot of mental energy.
* Like physical stamina, we literally have a limited pool of mental energy. Any task that needs our conscious attention depletes our mental stamina, leaving us with less good thinking.
* Unconscious, automatic processing takes less of a strain (like strolling or breathing).
* Therefore, in order to do more good thinking (as is required in solving programming problems), we need to minimise non-automatic activities.

From this we can see that an activity like correcting a typing mistake will tap our "thinking stamina", but when typing becomes fully unconscious/automatic it will free up some space for productive problem solving. Hence, it's important that we learn to type automatically (fast is just a nice side effect of automatic).

This line of thinking can be taken much further than just typing. Anything in our dev environment that is explicit and not automatic, like looking for a menu with some function, or doing an explicit compile, will waste our mental stamina. It is therefore really important to:

1.   Know your dev tools, including common shortcuts and navigation tools. Keeping it simple is a easy way to achieve this. This has a similar benefit to automatic typing.
2.  Cut out explicit tasks. First thing that comes to mind is compiling. The Ruby and other dynamic lang peeps have been doing this for years, continuously running tests in the background that shows you the impact of changes, instead of a compile, run action. Some great tools in static world, like Resharper and NCrunch helps here. Another is deploying - the whole continuous delivery movement applies here. Tools like JRebel in Java world can also help.

In summary: as a developer, *always find ways to reduce explicit, non-automatic tasks that draw your attention*. I, for one, will take my environment and skills like typing more seriously now.

{% include twitter_include.html %}
