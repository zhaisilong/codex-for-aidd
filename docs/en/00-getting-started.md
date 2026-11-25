# 00 Getting Started

## Install and update

```bash
npm install -g @openai/codex
```

Run `codex` in a project directory and sign in when prompted (a ChatGPT account or an API key; see [07](07-pricing.md) for the difference).
Official docs: https://github.com/openai/codex

**Update every few days.** New interactions and new models arrive with new versions:

```bash
npm install -g @openai/codex@latest
```

## Recommended tool: usage tracking

[ccusage](https://github.com/ryoppippi/ccusage) shows Codex token usage and cost, no install needed:

```bash
npx -y ccusage@latest codex monthly
```

Swap `monthly` for `daily`, `weekly` or `session`. A monthly look at where your quota went beats any saving trick.

## First run

In a project **already under Git**, start with reading, not editing:

```text
Read this repository and tell me what the project does, the main directories and entry points,
and how to run the tests. Do not modify any files yet.
```

Then pick a small task, for example "add docstrings and type hints to `scripts/clean_ligands.py`". Ask it to say which files it will touch, run the tests afterwards, and leave `data/` alone.
Then read the `git diff` yourself.

Next: [01 Think First](01-think-first.md).

> Last checked: 2026-11-25
