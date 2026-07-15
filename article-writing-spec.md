# Article Writing Specification

## Recommended default spine

Before outlining, privately clarify the intended audience, their goal, and the outcome the article should create. Let the article reveal this naturally through its title, opening, context, and examples.

1. **A short, specific title**: name the main topic and central idea clearly, and make sense out of context.
2. **TL;DR**: in 2–4 sentences, state the idea, why it matters, and the strongest reason to believe it.
3. **Problem, opportunity, and context**: explain why the idea matters, relevant constraints, and only the background the reader needs.
4. **The idea or proposed approach**: explain the model and compare it with something familiar. Use concrete examples where helpful.
5. **Alternatives, evidence, and tradeoffs**: compare credible alternatives fairly and distinguish experience, evidence, inference, and opinion.
6. **What remains open and worth exploring**: state limitations, assumptions, unanswered questions, and what could change the view. Further reading or a focused invitation to compare experience can go here.
7. **Conclusion**: end with a short decision rule or transferable takeaway rather than repeating the TL;DR.

## Guidelines

- Treat the spine as a flexible default. Keep the core arc, but use only the sections that help the idea. Short opinions, lists, thought experiments, evidence-backed proposals, and talk pages may use smaller variations.
- Develop one central idea and aim for the shortest version that makes it credible. Move worthwhile side ideas into separate linked posts.
- Write for a specific engineering reader. Build on what they probably know, explain only what they need, and organise around what they want to understand, reconsider, decide, or try. Open with the point or stakes, not broad history.
- Make the article easy to scan and natural to read. Use descriptive headings, one idea per paragraph, plain active language, concrete examples, and varied sentence length. Read it aloud.
- Write as if discussing an idea with a thoughtful engineering peer: direct, curious, and opinionated when experience supports it, but modest about uncertainty. Give enough evidence, counterexamples, tradeoffs, and sources to evaluate the idea without becoming exhaustive. Never invent experience, evidence, certainty, or opinions.
- Prefer visuals that explain or strengthen the central idea. During planning and writing, record useful visual concepts without generating assets or introducing publishing details into the draft.
- Write like the author, not like a generic AI. Use [The AI-Native 2/20 Software Product Peloton](_posts/2026-04-01-the-ai-native-2-20-software-product-peloton.md), [BDD for Spec-driven Agentic Development](_posts/2026-05-13-executable-markdown-specs-agentic-coding.md), and the closest related article as voice references. Preserve the practitioner perspective, fair criticism, concrete metaphors, British spelling, uncertainty, short punch lines, and openness to challenge. Avoid hype, repetitive summaries, forced patterns, corporate prose, and em dashes.
- Draft the body first. Verify the technical content and cut anything that does not support the central idea. Then revisit the title, write the TL;DR and conclusion, and finish with a voice review. Rewrite anything the author would not naturally say without copying existing wording.

## Draft format

- Write the draft as plain Markdown.
- Use one `#` heading for the working title, `##` for article sections, and `###` for subsections.
- Do not add YAML front matter, dates, Jekyll tags, includes, site asset paths, image dimensions, permalinks, or other publication metadata.
- Keep publication decisions and generated assets out of the draft. Record unresolved publication needs in the handoff instead.
