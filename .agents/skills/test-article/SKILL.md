---
name: test-article
description: >-
  Sets up and runs the local Jekyll site, tests a blog article on its catalogue
  overview and post page at desktop and mobile sizes, captures screenshots, and
  performs a fresh editorial review. Use after writing or packaging an article,
  or when the user asks to run, preview, test, or review a post locally.
---

# Test Article

Build the site, test one article in context, and report technical, visual, and editorial findings. Publishing remains a separate workflow.

Canonical example: `_posts/2017-03-10-we-are-all-product-designers.md`.

## Checklist

```text
- [ ] Identify the target post and expected URL
- [ ] Install the build dependencies if needed
- [ ] Build successfully and start or reuse the local server
- [ ] Verify the overview card and article page
- [ ] Capture and inspect desktop and mobile screenshots of both
- [ ] Review the complete article afresh
- [ ] Report findings and screenshot paths
```

## 1. Identify the article

Use the post the user names. Otherwise, use the post created or edited in the current work; if that is ambiguous, ask.

Read its front matter, body, referenced includes, and assets. Derive the URL using `_config.yml`; do not assume the filename slug is the permalink when the title controls it. Determine which paginated catalogue page contains the post after building.

Before running commands, preserve the user's work. Do not pull, reset, clean, publish, commit, or rewrite the article as part of testing.

## 2. Set up and build

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

## 3. Test the catalogue overview

Verify the target card, not merely the page:

- title, date, context, and excerpt are correct and readable
- the card links to the expected article URL
- the catalogue image loads, has the intended crop/aspect ratio, and does not distort or break the layout
- spacing, alignment, and neighbouring cards remain sound
- no text or image overflows at desktop or mobile width

If the post is not on the first catalogue page, test the page where it actually appears.

## 4. Test the article page

Verify:

- title, date, context, headings, paragraphs, lists, links, code, embeds, and includes render correctly
- every expected image loads, is correctly sized and positioned, has useful alt text, and behaves at both viewport sizes
- the catalogue image or article hero appears on the article page if the site's intended layout calls for it
- navigation and previous/next links work
- there is no clipping, horizontal scrolling, overlap, or unreadably small content

Do not silently compensate for a layout defect. Record a missing image or unsupported template behaviour clearly.

## 5. Capture and inspect screenshots

Write screenshots under `.screenshots/test-article/<post-slug>/` using stable names:

```text
overview-desktop.png
overview-mobile.png
article-desktop.png
article-mobile.png
```

Use a 1440×900 desktop viewport and a 390×844 mobile viewport. With local Chrome, for example:

```bash
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
"$CHROME" --headless=new --disable-gpu --hide-scrollbars \
  --window-size=1440,900 --screenshot="<output.png>" "<local-url>"
```

Repeat for each URL and viewport. Read all four PNGs and inspect them visually; creating files alone is not verification. Capture additional focused screenshots when an important section falls below the initial viewport.

## 6. Review the article afresh

Only after the technical and visual checks pass far enough to read the article reliably, review the complete piece without relying on prior approvals.

Check:

- the title, opening, argument, examples, transitions, and conclusion form a coherent whole
- claims are accurate, appropriately qualified, and supported; verify time-sensitive or external claims when needed
- repetition, gaps, contradictions, unclear references, awkward phrasing, grammar, and typos
- links, captions, image relevance, alt text, and front matter
- the overview excerpt represents the article well and is not polluted by include markup or hidden content

Separate objective defects from optional editorial suggestions. Do not edit approved prose or templates without the user's approval.

## 7. Report

Lead with whether the build and local preview passed. Then provide:

1. blocking defects
2. visual/layout findings
3. editorial findings
4. checks that passed
5. local article and catalogue URLs
6. screenshot paths

For each defect, name the affected viewport/page and give a concrete proposed fix. If there are no findings in a category, say so briefly.
