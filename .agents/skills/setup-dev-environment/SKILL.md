---
name: setup-dev-environment
description: >-
  Sets up the local Jekyll blog development environment: pull latest, install
  gems, start the server with Ruby 3.4 taint compat, and verify with screenshots.
  Use when starting work on this repo, getting the site running locally, or when
  the user asks to set up / pull / run the blog.
---

# Setup Dev Environment

Get the local Jekyll blog running and verified. Environment only — no `_posts/` changes. Publishing is `publish-blog`.

## Checklist

```
- [ ] git pull
- [ ] bundle install (if needed)
- [ ] jekyll serve with taint compat
- [ ] http://127.0.0.1:4000/ returns 200
- [ ] Screenshots: home + one post (desktop + mobile)
- [ ] Tell the user the system is ready to start creating new posts
```

## Sync and install

```bash
git pull
bundle install
```

If Bundler rejects the lockfile `BUNDLED WITH` version, bump only that line to the installed Bundler version and retry.

## Start the server

github-pages safe mode skips `_plugins/`. Ruby 3.4 removed `tainted?` (Liquid still calls it). Preload the compat patch:

```bash
RUBYOPT="-r$(pwd)/_plugins/taint_compat.rb" bundle exec jekyll serve --host 127.0.0.1 --port 4000 --livereload
```

Expect `[taint_compat] Applied to Object` and `Server address: http://127.0.0.1:4000/`. Reuse an existing healthy server on :4000 if present.

## Verify with screenshots

```bash
mkdir -p .screenshots
CHROME="/Applications/Google Chrome.app/Contents/MacOS/Google Chrome"
"$CHROME" --headless=new --disable-gpu --hide-scrollbars --window-size=1440,900 \
  --screenshot=.screenshots/home-desktop.png "http://127.0.0.1:4000/"
"$CHROME" --headless=new --disable-gpu --hide-scrollbars --window-size=390,844 \
  --screenshot=.screenshots/home-mobile.png "http://127.0.0.1:4000/"
```

Also screenshot one recent post (desktop + mobile). `.screenshots/` is gitignored. Read the PNGs and confirm the site looks healthy.

## Done

Tell the user **the system is ready to start creating new posts**. Mention the server URL and any caveats. Stop — do not publish or edit posts.
