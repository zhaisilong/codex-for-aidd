# 推荐项目目录

```text
my-project/
├── AGENTS.md              # 给智能体的说明(templates/AGENTS.md)
├── README.md
├── CHANGELOG.md           # 功能迭代与 bug 修复(templates/CHANGELOG.md)
├── VALIDATION.md          # 验证清单(templates/VALIDATION.md)
├── LICENSE
├── .gitignore             # templates/gitignore
├── envs/
│   └── environment.yml    # mamba/conda;Python 依赖见 pyproject.toml(uv)
├── pyproject.toml
├── data/
│   ├── raw/               # 只读
│   └── processed/         # 可再生
├── src/<package>/         # 可复用代码
├── scripts/               # 精简入口脚本,含 make_handoff.sh
├── notebooks/             # 探索用
├── tests/
│   ├── data/              # 小样例
│   └── test_*.py
├── results/               # 可再生
├── docs/                  # 方法、计划、决策记录
└── hand_off/              # 交接包:hand_off/v2026-11-25/
```

## 命名建议

- 数据文件带日期或版本:`ligands_2026-11_v1.csv`
- 脚本动词开头:`clean_ligands.py`、`run_docking.py`
- 结果按日期或实验编号分:`results/2026-11-25_exp01/`
- 交接包按日期:`hand_off/v2026-11-25/`
