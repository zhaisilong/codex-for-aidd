# 04 Git and GitHub

Version control is the safety rope you tie to the agent. When something goes wrong, one command takes you back.

## Rhythm

1. Before starting, confirm the working tree is clean (`git status`)
2. One branch per task
3. Small changes; read `git diff` yourself
4. Commit when satisfied, with a clear message. The agent can write it, but **you must read the diff**
5. Merge through a Pull Request, even if you are the only person

One commit, one thing. Keep refactors, features and mass reformatting in separate commits.

## Keep a CHANGELOG.md in every project

Record **feature iterations and bug fixes**, organized by date, with the same day's changes merged. It is your review material, and the fastest way for the agent or a colleague to see how the project evolved.

```markdown
## 2026-11-25
### Added
- Ligand cleaning script `scripts/clean_ligands.py`
### Fixed
- Crash on invalid SMILES
```

Let the agent update it after each task, and you check it. Template: [`templates/en/CHANGELOG.md`](../../templates/en/CHANGELOG.md). This repository's own [CHANGELOG](../../CHANGELOG.md) uses the same format.

## What stays out of the repo

| Type | What to do |
|---|---|
| Keys, tokens | Environment variables, never committed; if committed by mistake, revoke and replace immediately |
| Large data, model weights | Git LFS, DVC or external storage; keep only how to fetch them in the repo |
| Unpublished structures, subject data | Do not upload by default; see [05](05-verify-and-safety.md) |
| Reproducible intermediates | Add to `.gitignore` ([template](../../templates/en/gitignore)) |

## Tag

Tag the version of an analysis used in a paper or report (for example `v1.0-paper`), and note in the docs which data version and environment it corresponds to.

If the agent changed files you did not expect, do not commit. Ask why, and `git restore` if needed. Before pushing a public repo, check again for paths, emails and internal data.
