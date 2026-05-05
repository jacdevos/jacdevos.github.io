---
published: true
layout: post
title: Hermes Agent — A Self-Improving AI Agent That Runs Everywhere
context: AI / Open Source
---

[Hermes Agent](https://github.com/NousResearch/hermes-agent) is an open-source AI agent framework by [Nous Research](https://nousresearch.com) that runs in your terminal, on messaging platforms, and in your IDE. It's in the same category as Claude Code and OpenAI Codex — autonomous agents that use tool calling to interact with your system — but with a few ideas that set it apart.

## What makes it different

**It learns from experience.** When Hermes solves a complex problem or discovers a workflow, it can save that as a *skill* — a reusable procedure that loads into future sessions. Over time, your agent accumulates skills specific to your environment, your tools, and how you like things done. It gets better the more you use it.

**It remembers across sessions.** Persistent memory means it recalls who you are, your preferences, project conventions, and environment quirks. You don't re-explain yourself every conversation.

**Multi-platform by design.** The same agent works on Telegram, Discord, Slack, Signal, WhatsApp, Email, Matrix — 15+ platforms — with full tool access. It's not a chatbot wrapper; it's the actual agent, reachable wherever you are.

**Provider-agnostic.** 20+ LLM providers supported. Swap models mid-workflow without changing anything else. OpenRouter, Anthropic, OpenAI, DeepSeek, Google, local models — pick what works, change when you want.

## What I use it for

Running Hermes on my Mac, connected to Telegram. It handles:

- **Daily briefings** — morning digest with weather, inbox scan, news headlines
- **Coding tasks** — delegates to Claude Code or OpenCode for PRs and features
- **System maintenance** — self-updating with automatic rollbacks, backups to private GitHub
- **Blog management** — this blog, including drafting, building, and previewing posts
- **Research** — paper searches, market data, domain reconnaissance
- **Home automation** — lights, reminders, notes, calendar

## How it works

At its core, Hermes is a conversation loop: it receives your message, builds context (system prompt + memory + loaded skills), calls an LLM, executes any tools the model requests (terminal, file ops, web search, browser, delegation to sub-agents), returns the result, and repeats. Context compression keeps long sessions manageable.

The architecture is modular:

```
hermes-agent/
├── run_agent.py          # Core conversation loop
├── tools/                # One file per tool (~30 tools)
├── gateway/              # Messaging platform adapters
├── cron/                 # Scheduled job scheduler
├── agent/                # Prompt builder, memory, model routing
└── hermes_cli/           # CLI, config, slash command registry
```

Skills, memory, sessions, and config all live under `~/.hermes/`. Tools are grouped into *toolsets* you can enable or disable per platform. Cron jobs run on schedule with isolated sessions. Sub-agents can be spawned for parallel work.

## Quick start

```bash
# Install
curl -fsSL https://raw.githubusercontent.com/NousResearch/hermes-agent/main/scripts/install.sh | bash

# Set up your model and provider
hermes setup

# Start chatting
hermes
```

Or via Docker if you prefer containerised. Full docs at [hermes-agent.nousresearch.com](https://hermes-agent.nousresearch.com/docs/).

## Why it matters

We're in a weird moment with AI tools. The raw capability is staggering, but most tools are stateless — every session starts from zero. Hermes is one of the few agents that accumulates context over time: skills, memory, conventions, preferences. That accumulation is the difference between a tool you prompt and an agent that knows how you work.

It's open source (MIT), actively developed, and free to use with any provider. If you're already using Claude Code or Codex and want something that grows with you across platforms, it's worth a look.
