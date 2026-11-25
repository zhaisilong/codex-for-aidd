# 02 项目目录与脚本

智能体不会读你的心,但会读你的目录。结构清楚,它犯错的机会就少。

## 推荐目录

```text
my-project/
├── AGENTS.md          # 给智能体看的项目说明
├── README.md          # 给人看的说明
├── CHANGELOG.md       # 功能迭代与 bug 修复记录
├── VALIDATION.md      # 验证清单(见 05)
├── data/
│   ├── raw/           # 原始数据,只读
│   └── processed/     # 脚本生成,可再生
├── src/               # 可复用代码
├── scripts/           # 入口脚本,保持精简
├── notebooks/         # 探索用,稳定后迁入 src/
├── tests/             # 小数据集上的测试
├── results/           # 结果与图,可再生
├── envs/              # 环境文件
├── docs/              # 方法说明、计划、决策记录
└── hand_off/          # 会话交接包(见 08)
```

完整模板:[`templates/project-layout.md`](../../templates/project-layout.md)。

## 三个习惯

1. **原始数据只读**。`data/raw/` 任何脚本和智能体都不能改,清洗结果写到 `data/processed/`。
2. **结果可再生**。`results/` 和 `data/processed/` 应能由代码重新生成;只能手工做的步骤,写进 `docs/`。
3. **脚本只做入口**。`scripts/` 里读参数、调用 `src/`、写输出,逻辑放进模块,改动范围小,也好测试。

## AGENTS.md

Codex 会读取项目里的 `AGENTS.md`。建议写:一句话简介、环境与测试命令、目录约定和**禁区**、代码风格、完成标准。
短而具体,比长而全有效。从 [`templates/AGENTS.md`](../../templates/AGENTS.md) 开始改。

命名也别花哨:`data/raw/2026-11-ligands_v1.csv` 比 `final_final_new.csv` 好一万倍,对你、同事和智能体都一样。
