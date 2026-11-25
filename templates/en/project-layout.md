# Recommended project layout

```text
my-project/
├── AGENTS.md              # notes for the agent (templates/en/AGENTS.md)
├── README.md
├── CHANGELOG.md           # feature iterations and bug fixes (templates/en/CHANGELOG.md)
├── VALIDATION.md          # validation checklist (templates/en/VALIDATION.md)
├── LICENSE
├── .gitignore             # templates/en/gitignore
├── envs/
│   └── environment.yml    # mamba/conda; Python deps in pyproject.toml (uv)
├── pyproject.toml
├── data/
│   ├── raw/               # read-only
│   └── processed/         # reproducible
├── src/<package>/         # reusable code
├── scripts/               # thin entry points, including make_handoff.sh
├── notebooks/             # exploration
├── tests/
│   ├── data/              # small samples
│   └── test_*.py
├── results/               # reproducible
├── docs/                  # methods, plans, decision records
└── hand_off/              # hand-off packages: hand_off/v2026-11-25/
```

## Naming

- Data files carry a date or version: `ligands_2026-11_v1.csv`
- Scripts start with a verb: `clean_ligands.py`, `run_docking.py`
- Results by date or experiment id: `results/2026-11-25_exp01/`
- Hand-off packages by date: `hand_off/v2026-11-25/`
