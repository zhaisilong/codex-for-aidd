# AGENTS.md

> Copy to your project root and adapt. Keep it short and specific.

## Project summary

One sentence on what the project does. Example: docking and scoring pipeline for screening BRD4 ligands.

## Environment

- Overall environment: `mamba env create -f envs/environment.yml`, then `mamba activate <env-name>`
- Python dependencies with uv: `uv add <pkg>`, `uv run <cmd>`
- Tests: `pytest -q`

## Directory conventions

- `data/raw/`: **read-only**; do not modify, move or delete
- `data/processed/`, `results/`: reproducible output
- `src/`: reusable code; `scripts/`: thin entry-point scripts, logic goes in `src/`
- `tests/`: use the small samples under `tests/data/`

## No-go zones

- Never modify `data/raw/`
- Never commit keys, `.env`, large data or model weights
- Do not add dependencies without saying so

## Code style

- Python 3.x with type hints; format and lint with `ruff format` / `ruff check`
- Docstrings that state inputs, outputs and units

## Way of working

- For large or non-obvious changes, give a plan first and wait for my confirmation
- One thing at a time; keep changes small
- Run the tests when done; do not say "done" if they fail
- When finished, record the change under today's entry in `CHANGELOG.md`, and briefly say what changed, why, and how it was verified
- Update `VALIDATION.md` with stage results

## Definition of done

- Tests pass and no no-go zone was touched
- New or changed functions have docstrings
- `CHANGELOG.md` is updated
