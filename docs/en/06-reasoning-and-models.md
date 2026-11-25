# 06 Reasoning Effort and Model Choice

> Level names and availability change with versions; go by what `/model` shows in Codex. Last checked: 2026-11-25.

## Levels

| Level | Meaning |
|---|---|
| Low (called Light in the desktop app) | Fastest; small edits |
| Medium | Default |
| High | Everyday development, ordinary debugging |
| **Extra high** | **Our workhorse** |
| Max | Deepest single-threaded thinking |
| Ultra | Parallel: subagents handle different parts of a task at once |

In some versions Max and Ultra must be enabled in settings first. Set a default in `config.toml` with `model_reasoning_effort` (see the official docs).

## How we use them

**Extra high: the daily workhorse.** Complex logic, refactoring, pipeline design, problems that keep failing.
**With a Pro $100+ account, run Extra high all the way and keep it on**; no switching needed. Otherwise switch by difficulty: small jobs Low/Medium, daily work High, hard problems Extra high, Max occasionally.

**Ultra: the start and wide exploration.** It works in parallel, which suits:
- A project's beginning: quickly accumulate the original code and explore several directions at once
- Wide, fast exploration (several databases, several methods)
- Writing code in step with exploration, when modules can advance in parallel

Parallel work multiplies quota use (one community test saw about 2.5x; for reference only), so it pays off only when the task splits into fairly independent parts.

**Max: single-threaded, blocking deep thought.**
1. Run only this one task; do not do other things at the same time
2. Put the material in front of it first: results, logs, data summaries, key code, paper notes, organized into files
3. Then give one clear prompt: what to answer, what constraints, what form of output
4. Then wait, and do not interrupt midway

Like asking an expert to shut the door and think for an afternoon; the more complete the material, the better the return.

## Gradient use

Using different levels and models at different stages is the cheapest and steadiest approach:

| Stage | Model | Level |
|---|---|---|
| Start: quickly accumulate original code | Sol | Ultra |
| Later development, refactoring | Sol | Extra high |
| Deployment, GitHub updates and other chores | Terra | Medium / High |

Note: **do not switch models inside one session** (it affects behavior and performance). To change model, change session. How to split sessions: see [08](08-sessions-and-handoff.md).

## Choosing a model

- Workhorses are **Sol / Terra**. **Astra is too expensive**: use it only when Sol keeps failing, the problem is extremely hard, or a mistake would be very costly
- Sol stays Sol, Terra stays Terra; do not swap back and forth inside a session
- Generally just use the newest model; prices are similar
- Price table: [07](07-pricing.md)
