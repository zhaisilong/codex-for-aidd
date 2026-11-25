# 推荐项目目录

```text
my-project/
├── AGENTS.md              # 给智能体看的说明(见 templates/AGENTS.md)
├── README.md              # 给人看的说明
├── LICENSE
├── .gitignore             # 见 templates/gitignore
├── envs/
│   └── environment.yml    # 或 pyproject.toml / requirements.txt
├── data/
│   ├── raw/               # 原始数据,只读
│   └── processed/         # 脚本生成,可再生
├── src/
│   └── <package>/         # 可复用代码
├── scripts/               # 入口脚本,保持精简
├── notebooks/             # 探索用
├── tests/
│   ├── data/              # 小样例
│   └── test_*.py
├── results/               # 可再生输出
└── docs/                  # 方法说明、决策记录
```

## 命名建议

- 数据文件带日期或版本:`ligands_2026-11_v1.csv`
- 脚本用动词开头:`clean_ligands.py`、`run_docking.py`
- 结果目录按日期或实验编号分:`results/2026-11-25_exp01/`
