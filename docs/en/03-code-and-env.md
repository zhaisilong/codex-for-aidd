# 03 Code and Environment

Agents write code fast, and duplicate code grows just as fast. This chapter is about making code last and run.

## From one-off script to reusable module

1. Explore in a notebook or throwaway script
2. Once the result is reliable, extract the core logic into functions under `src/`
3. Keep the script to arguments and input/output
4. Give each function a small test

```text
Extract the part of notebooks/dock_analysis.ipynb that parses docking results into functions in
src/docking/parse.py, keeping behavior unchanged, and write tests in tests/ with a small sample.
Give me the plan first. Do not edit yet.
```

## Make code easy to modify correctly

- Small, single-purpose functions
- Type hints and docstrings, especially the meaning of inputs and outputs, units, and whether SMILES are already standardized
- Put thresholds in config with their source noted; no magic numbers
- No hard-coded paths: use arguments or config

## Tests: small but enough

You do not need big data. Keep 3 to 10 representative samples in `tests/data/`, covering normal and edge cases (empty input, invalid SMILES, missing columns), and require "tests must pass before you finish".
Tests are the cheapest contract between you and the agent.

## Environment: mamba/conda + uv

**mamba/conda manages the overall environment.** AIDD and bioinformatics often depend on binary packages such as RDKit and OpenBabel, and on non-Python software; the conda ecosystem handles that best.
We strongly recommend mamba. Installation guide (Miniforge recommended):
https://mamba.readthedocs.io/en/latest/installation/mamba-installation.html

**uv manages Python dependencies.** Codex agents work smoothly with uv on Python projects, and we recommend it too: fast, clear lock file, simple commands.
Install: https://docs.astral.sh/uv/getting-started/installation/

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh   # macOS / Linux
```

How to combine them:

- Pure-Python project: `uv init`, `uv add`, `uv run`; commit `pyproject.toml` and the lock file
- Needs non-Python dependencies: create the environment with mamba first, then install Python packages inside it with `uv pip install`

Write the environment notes into `AGENTS.md` so Codex knows which to use.

## Reproducibility details

Fix random seeds and write them into output metadata; record key software versions (RDKit, PyTorch, Scanpy, and so on) and data versions or checksums; commit environment files with the code.

## Prune regularly

After a refactor, ask: "Did this leave any dead files or functions?" Deleting code matters as much as writing it.
