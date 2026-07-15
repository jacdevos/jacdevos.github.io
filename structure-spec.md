# Article Structure Specification

## Recommended default spine

Before outlining, privately clarify the intended audience, their goal, and the outcome the article should create. Let the published article reveal this naturally through its title, opening, context, and examples.

1. **Front matter and a purposeful image**: retain the established metadata. Prefer a diagram or original visual that adds meaning.
2. **A short, specific title**: name the main topic and central idea clearly, and make sense out of context.
3. **TL;DR**: in 2–4 sentences, state the idea, why it matters, and the strongest reason to believe it.
4. **Problem, opportunity, and context**: explain why the idea matters, relevant constraints, and only the background the reader needs.
5. **The idea or proposed approach**: explain the model and compare it with something familiar. Use concrete examples where helpful.
6. **Alternatives, evidence, and tradeoffs**: compare credible alternatives fairly and distinguish experience, evidence, inference, and opinion.
7. **What remains open and worth exploring**: state limitations, assumptions, unanswered questions, and what could change the view. Further reading or a focused invitation to compare experience can go here.
8. **Conclusion**: end with a short decision rule or transferable takeaway rather than repeating the TL;DR.

## Guidelines

- Treat the spine as a flexible default. Keep the core arc, but use only the sections that help the idea. Short opinions, lists, thought experiments, evidence-backed proposals, and talk pages may use smaller variations.
- Develop one central idea and aim for the shortest version that makes it credible. Move worthwhile side ideas into separate linked posts.
- Write for a specific engineering reader. Build on what they probably know, explain only what they need, and organise around what they want to understand, reconsider, decide, or try. Open with the point or stakes, not broad history.
- Make the article easy to scan and natural to read. Use descriptive headings, one idea per paragraph, plain active language, concrete examples, and varied sentence length. Read it aloud.
- Write as if discussing an idea with a thoughtful engineering peer: direct, curious, and opinionated when experience supports it, but modest about uncertainty. Give enough evidence, counterexamples, tradeoffs, and sources to evaluate the idea without becoming exhaustive. Never invent experience, evidence, certainty, or opinions.
- Prefer a purpose-built image that explains or strengthens the central idea. A relevant downloaded image is the next choice when its licence permits reuse and its source is credited. When time is limited, generate a mostly abstract technical image in the established blog style. Short key terms or familiar buzzwords may be included when text makes sense and connects the image to the article. Give informative images concise contextual alt text.
- Write like the author, not like a generic AI. Use [The AI-Native 2/20 Software Product Peloton](_posts/2026-04-01-the-ai-native-2-20-software-product-peloton.md), [BDD for Spec-driven Agentic Development](_posts/2026-05-13-executable-markdown-specs-agentic-coding.md), and the closest related article as voice references. Preserve the practitioner perspective, fair criticism, concrete metaphors, British spelling, uncertainty, short punch lines, and openness to challenge. Avoid hype, repetitive summaries, forced patterns, corporate prose, and em dashes.
- Draft the body first. Verify the technical content and cut anything that does not support the central idea. Then revisit the title, write the TL;DR and conclusion, and finish with a voice review. Rewrite anything the author would not naturally say without copying existing wording.

## Specification

- Write posts in kramdown Markdown at `_posts/YYYY-MM-DD-kebab-slug.md`. The filename date supplies the post date. The filename slug may differ from the displayed title.
- Start with YAML front matter:

  ```yaml
  ---
  published: true
  layout: post
  image: /assets/article_images/YYYY-MM-DD-kebab-slug/hero.png
  image_width: 1400
  image_height: 788
  title: A short, specific title
  context: Essay
  ---
  ```

- Use the real image dimensions. `image` creates the homepage catalogue thumbnail, `title` supplies the displayed heading and permalink title segment, and optional `context` appears next to the date.
- Put post-specific images in `assets/article_images/YYYY-MM-DD-kebab-slug/`. Shared talk thumbnails may remain in `assets/article_images/talks/`. Use site-root paths beginning with `/assets/`.
- For a fallback generated image, supply [How to become a thought leader in software](assets/article_images/talks/how-to-become-a-thought-leader.jpg) as the visual style reference whenever supported, use the prompt below, then check any generated text and confirm the image works as a small catalogue thumbnail:

  ```text
  Use the supplied “How to become a thought leader in software” image as the
  visual style reference, not as content to copy.

  Create a wide 16:9 abstract editorial hero image inspired by [ARTICLE THEME].
  Suggest [CENTRAL IDEA] indirectly rather than illustrating it literally.

  Use a near-black navy background and one centred circular composition made
  from layered translucent isometric forms, floating geometric structures,
  fine wireframes, dotted grids, vertical data-like lines, and subtle particles.
  Use restrained cyan, teal, and emerald light, soft glow, depth, high contrast,
  and generous negative space. The result should feel sophisticated, technical,
  conceptual, and slightly mysterious.

  Where text makes sense, include a few exact short key terms, familiar words,
  or relevant buzzwords that connect the image to the article: [OPTIONAL TERMS].
  Keep text sparse and readable. No sentences, logos, UI panels, flowcharts,
  people, stock-photo elements, watermarks, or decorative clutter.
  ```

- Use `##` for article sections and `###` for subsections. Do not add a Markdown `#` heading because the post layout renders the front matter title as the page heading.
- Add an image to the article body separately when it should appear there: `![Concise contextual alt text](/assets/article_images/YYYY-MM-DD-kebab-slug/image.svg)`.
- Keep the TL;DR near the start because the homepage catalogue uses roughly the first 30 words of post content. Use `excerpt_separator` only when the automatic excerpt is unsuitable.
- Use `{% include name.html %}` only for supplied slide decks or other HTML bodies stored in `_includes/`. Full articles should normally remain Markdown.
- The generated permalink follows `/:year-:month-:day/:title`.
