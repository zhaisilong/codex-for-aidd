# 08 Sessions and Hand-off

## Do initialization in one session

For a project's init / create phase, try to finish in the **same session**: skeleton, directories, `AGENTS.md`, the first conventions. The context stays coherent and the direction does not drift.
After that there are two ways to branch out:

- **Fork**: use `/fork` in Codex (or `codex fork` in the terminal) to copy the current conversation into a new thread and carry the existing context into one feature block. The original session is untouched.
- **New session**: have the agent read `AGENTS.md`, `docs/` and the latest `hand_off/` and learn the project on its own.

## One session per feature block

From then on, do not cram all work into one session. Let each session own a feature block, with boundaries drawn from your understanding of the project.
When working in parallel on one repository, give each its own branch (or git worktree) so they do not overwrite each other.

For example, once the project is built and needs deploying and a GitHub update, open a separate session and hand it to the better-value Terra.
Multiple sessions are also a better speed-up than Fast: advance several blocks at once and keep yourself busy.

## Models: no switching inside a session

**We do not recommend switching models inside one session**; it affects behavior and performance. Sol stays Sol, Terra stays Terra.
To change model, change session.

So **gradient use** happens across sessions:

| Stage | Session | Model |
|---|---|---|
| Start: quickly accumulate original code | Initialization session | Sol, Ultra |
| Later feature work, refactoring | Fork or new | Sol, Extra high |
| Deployment, GitHub updates and other chores | Separate new session | Terra |

## Resuming: use it, but not for the long haul

Resuming (`/resume`) and forking are handy and worth using. But do not leave all work in one session for long:

- Context gets messier, and the agent is easily led astray by irrelevant content
- Every turn carries a lot of irrelevant context and burns many tokens

Wrap up each feature block when done; fork or open new for the next.

## hand_off: the hand-over documents

What carries information between sessions? **We do not recommend maintaining just one `PROGRESS.md`.** Build a `hand_off/` directory and **publish a hand-off package now and then**, such as `hand_off/v2026-11-25/`, containing:

- `README.md`: current state, key decisions, next steps, open questions
- `meta.json`: version, date, git commit, environment versions and other metadata
- Key summaries and core data: result summaries and important small data files

Assemble the package with **Python / shell scripts you maintain yourself**, not by hand. The scripts evolve with the project and get smoother with use.
Template script: [`templates/en/make_handoff.sh`](../../templates/en/make_handoff.sh).

At the start of a new session, have it read the latest package first:

```text
Read the latest hand-off package under hand_off/, summarize the current state and next steps,
then wait for my confirmation.
```
