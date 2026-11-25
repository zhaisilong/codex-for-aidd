# 00 快速开始

## 安装与更新

```bash
npm install -g @openai/codex
```

在项目目录运行 `codex`,按提示登录(ChatGPT 账号或 API Key,区别见 [04](04-models-and-pricing.md))。
官方文档:https://github.com/openai/codex

**隔几天更新一次**,新交互和新模型都随版本出现:

```bash
npm install -g @openai/codex@latest
```

## 推荐工具:用量统计

用 [ccusage](https://github.com/ryoppippi/ccusage) 查看 Codex 的 token 与费用,不用安装:

```bash
npx -y ccusage@latest codex monthly
```

可以把 `monthly` 换成 `daily`、`weekly`、`session`。每月看一眼,知道额度花在哪,比任何省钱技巧都有效。

## 第一次使用

在一个**已用 Git 管理**的项目里启动,先让它读,不要改:

```text
请阅读这个仓库,告诉我项目做什么、主要目录和入口、怎么运行测试。
先不要修改任何文件。
```

再挑一个小任务,例如"给 `scripts/clean_ligands.py` 补 docstring 和类型标注",要求它先说明要改哪些文件、改完跑测试、不碰 `data/`。
然后用 `git diff` 自己看一遍。

下一步:[01 项目目录与脚本](01-project-structure.md)。

> 最后核对日期:2026-11-25
