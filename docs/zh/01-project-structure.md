# 01 项目目录与脚本

智能体不会读你的心,但会读你的目录。结构清楚,它犯错的机会就少。

## 推荐目录

```text
my-project/
├── AGENTS.md          # 给智能体看的项目说明
├── README.md          # 给人看的项目说明
├── data/
│   ├── raw/           # 原始数据,只读,不改
│   └── processed/     # 由脚本生成,可再生
├── src/               # 可复用的代码(函数、模块)
├── scripts/           # 入口脚本,调用 src/ 里的东西
├── notebooks/         # 探索用,稳定后迁移到 src/
├── tests/             # 小数据集上的测试
├── results/           # 结果与图,可再生
├── envs/              # 环境文件(environment.yml 等)
└── docs/              # 方法说明、决策记录
```

完整模板见 [`templates/project-layout.md`](../../templates/project-layout.md)。

## 三条最重要的习惯

### 1. 原始数据只读

`data/raw/` 里的东西,任何脚本、任何智能体都不应该修改。清洗的结果写到 `data/processed/`。
在 `AGENTS.md` 里明确写出来,Codex 会遵守得比你想象的好。

### 2. 结果可再生

`results/` 和 `data/processed/` 里的内容,应该能由代码重新生成。
如果某个结果"只能手工做出来",请把手工步骤写进 `docs/`。

### 3. 脚本只做入口,逻辑放进模块

`scripts/` 里的文件越薄越好:读参数、调用 `src/` 里的函数、写输出。
这样智能体改逻辑时,影响范围小,也更容易写测试。

## AGENTS.md:给智能体的说明书

Codex 会读取项目里的 `AGENTS.md`。建议写这些内容:

- 项目一句话介绍
- 环境怎么装、测试怎么跑
- 目录约定和**禁区**(哪些目录不能动)
- 代码风格(格式化工具、命名习惯)
- 完成任务的标准(例如"改完必须跑通测试")

写得短而具体比写得长而全更有效。可直接从 [`templates/AGENTS.md`](../../templates/AGENTS.md) 开始改。

## 一个小建议

目录和命名别太花哨。`data/raw/2026-11-ligands_v1.csv` 比 `final_final_new.csv` 好一万倍,
对你、对同事、对智能体都一样。
