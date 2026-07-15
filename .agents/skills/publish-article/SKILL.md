---
name: publish-blog
description: >-
  Wires supplied content into a Jekyll post (_posts file, front matter, assets,
  optional includes) and previews it locally. Use when publishing or updating
  post packaging — not when writing the article or talk content itself.
---

# Publish Blog

Wire supplied content into the site and verify it. Packaging only — do not invent the piece.

Canonical example: `_posts/2017-03-10-we-are-all-product-designers.md`

If the server is not running, use `setup-dev-environment` first.

## Checklist

```
- [ ] Agree date + slug + title + context with the user
- [ ] Place catalogue image (and any other assets)
- [ ] Write _posts/YYYY-MM-DD-kebab-slug.md front matter
- [ ] Wire body from user (intro markdown and/or {% include %})
- [ ] Preview post URL + homepage catalogue card
- [ ] Report paths/URL; do not commit unless asked
```

## What you assemble

From the reference post, a published entry is:

1. **Front matter** — catalogue + permalink metadata  
2. **Intro markdown** — user-supplied; drives the ~30-word homepage excerpt  
3. **Optional `{% include %}`** — user-supplied heavy body (e.g. slides embed in `_includes/`)  
4. **Assets** — paths that match `image` / in-body references  

Ask for anything missing. Do not draft missing prose or slides.

## Front matter

```yaml
---
published: true
layout: post
image: /assets/article_images/talks/what-is-software-product-design.jpg
image_width: 2048
image_height: 1280
title: What is software product design?
context: DevConf Talk
---
```

- `image` + real `image_width` / `image_height` → homepage thumbnail (`catalogue_item`)
- `title` → display name and permalink segment (`/:year-:month-:day/:title`)
- `context` → meta label next to the date (e.g. `DevConf Talk`)
- Filename slug may differ from title (`we-are-all-product-designers.md` vs title above)

## Assets

| Kind | Location |
|------|----------|
| Shared talk thumbnail | `assets/article_images/talks/` |
| Post-specific art | `assets/article_images/YYYY-MM-DD-kebab-slug/` |
| Slide/HTML body | `_includes/<name>.html` → `{% include <name>.html %}` |

Use site-root paths in the post (`/assets/...`).

## Body shapes (content from user)

**Talk packaging** (reference): short intro paragraphs, then `{% include ... %}`.

**Markdown packaging**: user-provided markdown in the `.md` file; optional `![...](/assets/...)` if they supply images.

Excerpt on the homepage = first ~30 words of content (unless `excerpt_separator` is set).

## Verify

Confirm the build succeeds, open the post URL and the homepage card, optionally refresh `.screenshots/`. Summarize what was wired; do not commit unless asked.
