# codex-for-aidd

**How to Use Codex Better for AIDD** · 写给 AI 药物研发(AIDD)、生物信息学及相关方向研究者的 Codex 使用建议

[English](README.en.md) | 中文

> 这不是一份严格的规范,而是一份随和的经验手册。能帮你少踩几个坑就够了。

## 这是什么

做 AIDD 和生信的人,通常懂数据、懂生物学、也会写代码,但很少系统地学过"怎么和智能体一起干活"。
结果常常是:智能体改了一堆文件却不知道改了什么,脚本散落各处,三个月后自己也复现不了。

这份手册想回答一个问题:**怎样让 Codex 成为一个可靠、可复现、可审计的研究搭档**。

重点放在工程习惯上(目录、脚本、版本控制、成本、安全),而不是提示词技巧。

## 范围

- 以 **Codex** 为核心讲解。
- 其他智能体(如 Claude Code、Gemini CLI 等)只在文末提及,大部分习惯是通用的,可自行迁移。
- 价格和模型变化很快,正文只讲**怎么选**,具体数字请以官方页面为准。

## 目录

| 章节 | 内容 |
|---|---|
| [00 快速开始](docs/zh/00-getting-started.md) | 安装、登录、第一次让 Codex 读懂你的仓库 |
| [01 项目目录与脚本](docs/zh/01-project-structure.md) | 目录怎么摆、原始数据怎么保护、`AGENTS.md` 怎么写 |
| [02 代码细节与复用](docs/zh/02-reusable-code.md) | 把一次性脚本变成可复用模块,配上小测试 |
| [03 Git 与 GitHub](docs/zh/03-git-github.md) | 小步提交、分支、PR、什么不该进仓库 |
| [04 模型选择与价格](docs/zh/04-models-and-pricing.md) | 怎么挑档位、怎么省钱、去哪里查最新价格 |
| [05 安全与合规](docs/zh/05-safety.md) | 数据能不能发给云端、权限与沙箱、结果核对 |

## 可以直接拿走的模板

- [`templates/AGENTS.md`](templates/AGENTS.md):项目说明模板,告诉 Codex 你的约定和禁区
- [`templates/project-layout.md`](templates/project-layout.md):推荐目录结构
- [`templates/gitignore`](templates/gitignore):适合生信/AIDD 项目的 `.gitignore`

## 一页纸版本

1. 原始数据只读,结果可再生。
2. 每个项目放一份 `AGENTS.md`。
3. 让 Codex 先出计划,你确认后再动手。
4. 一个任务一个分支,小步提交,自己看 diff。
5. 重复用到的逻辑写成函数或小工具,并配一个小测试。
6. 记录环境和软件版本,固定随机种子。
7. 敏感数据先问规定,再决定能不能发。
8. 智能体说的"结果",你来核对。

## 参与贡献

欢迎提 Issue 或 PR:补充经验、纠正错误、翻译成英文。详见 [CONTRIBUTING.md](CONTRIBUTING.md)。

## 许可证

- 文档内容:[CC BY 4.0](LICENSE-docs.md)
- 代码与模板:[MIT](LICENSE)
