---
name: write-article
description: >-
  Collaboratively turns an approved article plan into a plain Markdown draft,
  writing one section at a time and pausing for the author's explicit approval
  after every section. Use when an article plan is ready to become a draft.
disable-model-invocation: true
---

# Write Article

Turn an approved article plan into a finished plain Markdown draft with the author. Focus only on the article's content; leave Jekyll packaging and local verification to `publish-and-test-article`.

## Prepare

1. Read `article-writing-spec.md`.
2. Read the approved article plan and the material it references. If the plan is not clear from the conversation or workspace, ask the author for it.
3. Read the voice references required by the specification.
4. Privately distil a writing brief from the plan: the reader, intended outcome, central idea, evidence boundaries, and useful voice cues.
5. Propose one working title and briefly say what it foregrounds. Ask the author to approve or revise it before continuing.

## Create the article

After the working title is approved:

1. Infer a short kebab-case working slug from the title.
2. Create `_drafts/<slug>.md`.
3. Add the approved working title as a single `#` heading.
4. Add an empty section structure based on the plan and the specification's flexible spine.
5. Show the structure to the author and revise it until they approve it.

Do not add draft prose while creating the structure.

The draft must remain plain Markdown. Do not add YAML front matter, a publication date, Jekyll tags or includes, site asset paths, image metadata, a permalink, or other publishing details.

## Write one section at a time

For each section:

1. Privately define the section's job, key point, supporting material, and relationship to previously approved sections and the planned next section.
2. If essential information is missing, ask one focused question instead of filling the gap with generic prose or invented detail.
3. Write only that section in the draft file, using the plan as source material and `article-writing-spec.md` as the writing standard.
4. Do two editing passes before presenting it: first for substance and continuity, then for prose and voice, using the specification's criteria.
5. Present the section and ask the author directly whether they approve it or want changes.
6. Apply specific feedback to the current section. If the intent is unclear, ask rather than guessing.
7. Re-read the revised section in context and ask again until the author explicitly approves it.
8. Only then move to the next section.

Do not draft a later section while waiting for approval. Do not rewrite an approved section unless the author asks, or first explain why a necessary correction affects it.

Follow the drafting order recommended by `article-writing-spec.md`. The initial title is a working title: revisit it with the author when the specification calls for the final title.

## Complete the article

1. Revisit the working title, then write the TL;DR and conclusion at the points recommended by `article-writing-spec.md`.
2. Review the complete article for flow and correctness. Obtain approval before changing previously approved prose.
3. Check the completed draft against `article-writing-spec.md`.
4. Report the draft path, unresolved content questions, and any visual concepts or publication needs worth carrying forward.
5. Ask: “Would you like me to publish and test this article locally?”

Only hand off to `publish-and-test-article` after the author agrees.
