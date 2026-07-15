---
name: publish-and-test-article
description: >-
  Packages a supplied Markdown draft as a Jekyll post, adds publication
  metadata and assets, previews it locally, and tests its catalogue and article
  pages at desktop and mobile sizes. Use after an article draft is approved or
  when the user asks to publish, preview, or test an article locally.
---

# Publish and Test Article

Turn approved content into a locally verified Jekyll post. This workflow owns publication packaging and testing, not article drafting.

Canonical example: `_posts/2017-03-10-we-are-all-product-designers.md`.

## Checklist

```text
- [ ] Identify the approved draft
- [ ] Agree date, slug, title, and context
- [ ] Create the post and publication assets
- [ ] Build and serve the site locally
- [ ] Verify the catalogue card and article page
- [ ] Inspect desktop and mobile screenshots
- [ ] Perform a fresh editorial review
- [ ] Fix approved findings and retest
- [ ] Present the overview and article screenshots to the author
- [ ] Obtain the author's explicit visual approval
- [ ] Report the result and offer to commit and push
```

## 1. Identify the content

Use the draft named by the user. Otherwise, use the draft created or approved in the current work; if that is ambiguous, ask.

Read the complete draft and any source material needed to package it correctly. Do not invent or substantially rewrite article prose. Ask the author about missing content or editorial decisions.

Before changing files, preserve the user's work. Do not pull, reset, clean, commit, push, or deploy as part of local publishing and testing.

## 2. Agree the publication details

Determine from the draft and conversation, or ask only for what cannot be inferred:

- publication date
- filename slug
- final title
- context label, normally `Essay`
- catalogue image or approved image concept

The working `#` heading normally supplies the final title. Confirm a material title change with the author.

The destination is `_posts/YYYY-MM-DD-kebab-slug.md`. The filename date supplies the post date; the filename slug may differ from the displayed title.

## 3. Prepare assets

Put post-specific assets in `assets/article_images/YYYY-MM-DD-kebab-slug/`. Shared talk thumbnails may remain in `assets/article_images/talks/`. Use site-root paths beginning with `/assets/` inside the post.

Prefer a purposeful diagram or original visual that strengthens the article. If the draft has no approved image:

1. Propose one image concept based on the central idea.
2. Ask the author to approve or revise it.
3. Create or source the image only after approval.
4. Check generated text, licensing where relevant, catalogue-thumbnail legibility, and real pixel dimensions.

For a fallback generated image, use `assets/article_images/talks/how-to-become-a-thought-leader.jpg` as the visual style reference when supported. Aim for a wide 16:9 abstract editorial image with a near-black navy background, a centred technical composition, restrained cyan, teal, and emerald light, high contrast, and generous negative space. Avoid people, logos, UI panels, stock-photo elements, watermarks, and clutter.

Add a separate in-body image only when it contributes to the article:

```markdown
![Concise contextual alt text](/assets/article_images/YYYY-MM-DD-kebab-slug/image.svg)
```

## 4. Create the Jekyll post

Create the destination post from the approved draft, retaining the source draft until verification succeeds.

1. Remove the draft's `#` title because the post layout renders the front matter title.
2. Preserve the body as Markdown.
3. Add front matter using real values:

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

`image` supplies the catalogue thumbnail, `title` supplies the displayed heading and permalink title segment, and optional `context` appears next to the date. Always use the real image dimensions.

Use `##` for article sections and `###` for subsections. Use `{% include name.html %}` only for supplied slide decks or other HTML bodies in `_includes/`; full articles should normally remain Markdown.

The homepage catalogue uses roughly the first 30 words of body content. Keep the TL;DR near the start and use `excerpt_separator` only when the automatic excerpt is unsuitable.

The generated permalink follows `/:year-:month-:day/:title`; do not assume the filename slug is the URL.

## 5. Build and serve

Run `bundle install` when dependencies are missing or stale. If Bundler rejects the lockfile's `BUNDLED WITH` version, update only that line to the installed Bundler version and retry.

Build once before serving so compilation failures are explicit:

```bash
RUBYOPT="-r$(pwd)/_plugins/taint_compat.rb" bundle exec jekyll build
```

Ruby 3.4 removed `tainted?`, which Liquid still calls. Expect `[taint_compat] Applied to Object`.

Reuse a healthy server on port 4000. Otherwise start:

```bash
RUBYOPT="-r$(pwd)/_plugins/taint_compat.rb" bundle exec jekyll serve \
  --host 127.0.0.1 --port 4000 --livereload
```

Confirm the catalogue URL and article URL return HTTP 200. Treat build warnings, Liquid errors, missing includes, and failed local asset requests as findings.

## 6. Test the catalogue overview

Determine which paginated catalogue page contains the post after building. Verify the target card:

- title, date, context, and excerpt are correct and readable
- the card links to the expected article URL
- the catalogue image loads, crops as intended, and does not distort the layout
- spacing, alignment, and neighbouring cards remain sound
- nothing overflows at desktop or mobile width

## 7. Test the article page

Verify:

- title, date, context, headings, paragraphs, lists, links, code, embeds, and includes render correctly
- images load, are correctly positioned, have useful alt text, and work at both viewport sizes
- navigation and previous/next links work
- there is no clipping, horizontal scrolling, overlap, or unreadably small content

Do not silently compensate for a layout defect. Record unsupported template behaviour clearly.

## 8. Capture and inspect screenshots

Write screenshots under `.screenshots/publish-and-test-article/<post-slug>/`:

```text
overview-desktop.png
overview-mobile.png
article-desktop.png
article-mobile.png
```

Use a 1440×900 desktop viewport and a 390×844 mobile viewport. Read and visually inspect all four screenshots; creating files alone is not verification. Capture additional focused screenshots when important content falls below the initial viewport.

Present all four screenshots to the author in the conversation, clearly identifying:

- the catalogue overview at desktop size
- the catalogue overview at mobile size
- the article at desktop size
- the article at mobile size

Do not merely report their file paths. The author must be able to see both the overview and article before approving publication. If a fix changes either page, recapture, inspect, and present the affected screenshots again.

## 9. Review the article afresh

Once the article renders reliably, review the complete piece without relying on earlier approvals. Check:

- whether the title, opening, argument, examples, transitions, and conclusion form a coherent whole
- whether claims are accurate, appropriately qualified, and supported
- repetition, gaps, contradictions, unclear references, awkward phrasing, grammar, and typos
- links, captions, image relevance, alt text, front matter, and the catalogue excerpt

Separate objective defects from optional editorial suggestions. Fix clear packaging defects and retest. Obtain approval before changing previously approved prose, article meaning, or visual direction.

## 10. Obtain visual approval

After the checks and approved fixes pass, ask the author to review the presented overview and article screenshots. Wait for explicit approval or requested changes.

Do not offer to commit or push while screenshot approval is pending. If the author requests changes, apply the approved changes, rebuild, retest, and present updated screenshots for another review.

## 11. Complete the local workflow

Only after the author explicitly approves the screenshots:

1. Remove the source file from `_drafts/` so the verified post is the single canonical copy.
2. Report whether the build and local preview passed.
3. List blocking defects, visual findings, editorial findings, passed checks, local URLs, and screenshot paths.
4. Report any unresolved issues.
5. Ask: “The article has been published and tested locally. Would you like me to commit and push it to GitHub?”

Never commit or push without both screenshot approval and explicit approval to perform the Git operations.
