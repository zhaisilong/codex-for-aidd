# AGENTS.md

> 复制到项目根目录,按实际情况修改。保持简短、具体。

## 项目简介

一句话说明项目做什么。例如:用于筛选 BRD4 配体的对接与打分流程。

## 环境

- 整体环境:`mamba env create -f envs/environment.yml`,`mamba activate <env-name>`
- Python 依赖用 uv:`uv add <pkg>`、`uv run <cmd>`
- 测试:`pytest -q`

## 目录约定

- `data/raw/`:**只读**,不要修改、移动或删除
- `data/processed/`、`results/`:可再生输出
- `src/`:可复用代码;`scripts/`:精简的入口脚本,逻辑放 `src/`
- `tests/`:使用 `tests/data/` 下的小样例

## 禁区

- 不改 `data/raw/`
- 不提交密钥、`.env`、大数据或模型权重
- 未说明不要新增依赖

## 代码风格

- Python 3.x,类型标注;格式化与检查用 `ruff format` / `ruff check`
- 函数写 docstring,说明输入输出和单位

## 工作方式

- 较大或不显而易见的改动,先给计划,等我确认
- 一次只做一件事,改动尽量小
- 改完跑测试,不通过不要说"已完成"
- 完成后在 `CHANGELOG.md` 当天条目下记录改动,并简述改了什么、为什么、如何验证
- 阶段性结果更新 `VALIDATION.md`

## 完成标准

- 测试通过,没动禁区
- 新增或改动的函数有 docstring
- `CHANGELOG.md` 已更新
