# CHANGELOG

按日期记录项目的变化,最新的在最上面。同一天的改动合并记录。

## 2026-11-25

### 新增

- 项目初始化:中文 `README.md`、英文占位 `README.en.md`
- 文档章节 `docs/zh/`:
  - 00 快速开始
  - 01 项目目录与脚本
  - 02 代码细节与复用
  - 03 Git 与 GitHub
  - 04 模型选择与价格
  - 05 安全与合规
  - 06 思考深度与模型选择(Low 到 Ultra 的使用建议、Max 的阻塞式用法、订阅档位与档位选择)
  - 07 从想法到执行(先与 Claude / ChatGPT 讨论,再整理文档交给智能体)
  - 08 项目的生长与审美
- 模板 `templates/`:`AGENTS.md`、项目目录、`gitignore`
- `CONTRIBUTING.md`、`LICENSE`(MIT,代码)、`LICENSE-docs.md`(CC BY 4.0,文档)
- 本 `CHANGELOG.md`

### 变更

- `README.md`:开头加入项目哲学(工程习惯与风格的重要性),目录补充第 06–08 章
- 04 章:补入 2026-11-25 核对的模型与价格(GPT-6.2 Astra / Sol、GPT-6.1 Terra、GPT-6 Luna)、速度与折扣、ChatGPT 订阅档位,并写明来源
- 00 章:加入 `npm install -g @openai/codex` 安装方式,建议每隔几天更新
