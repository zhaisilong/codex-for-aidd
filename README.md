# codex-for-aidd

**How to Use Codex Better for AIDD** · 写给 AI 药物研发(AIDD)、生物信息学及相关方向研究者的 Codex 使用建议

[English](README.en.md) | 中文 · [更新记录](CHANGELOG.md)

---

## Agent 不能替代你思考

> "Would you tell me, please, which way I ought to go from here?"
> "That depends a good deal on where you want to get to."
> "I don't much care where—"
> "Then it doesn't matter which way you go."
> ——Lewis Carroll,《爱丽丝梦游仙境》

不知道去哪,往哪走都无所谓。Codex 有很多"短见":它受限于超长期上下文和对项目的先验知识。
所以你必须非常了解自己的项目,并且**认真对待每一次和 agent 的对话**:那是你认知进步的机会。
随便让它做,换来的往往是一坨💩。

---

模型会迭代,工具每月都在变,留下来的是你对项目的理解和处理它的方式,也就是**工程习惯与风格**。
智能体会放大这一点:结构清晰的项目让它如虎添翼,混乱的项目只会被它更快地搞乱。

好的项目、skill、代码和文档,都是随着理解**一点点长出来**的。项目内的理解决定它对不对,跨项目的风格决定它美不美,而美往往来自简洁。
这份审美没人能替你建立,这是整本手册的出发点。

> 这不是严格的规范,而是一份随和的经验手册,能少踩几个坑就够了。以 Codex 为核心,其他智能体的习惯大多可以迁移。

## 目录

**起步**

| | |
|---|---|
| [00 快速开始](docs/zh/00-getting-started.md) | 安装、更新、用量统计、第一次使用 |
| [01 先想清楚,再动手](docs/zh/01-think-first.md) | 先讨论、写文档、plan 对齐 |

**工程基础**

| | |
|---|---|
| [02 项目目录与脚本](docs/zh/02-project-structure.md) | 目录、原始数据保护、`AGENTS.md` |
| [03 代码与环境](docs/zh/03-code-and-env.md) | 复用、测试、mamba 与 uv |
| [04 Git 与 GitHub](docs/zh/04-git-github.md) | 提交、分支、CHANGELOG |
| [05 安全与结果核对](docs/zh/05-verify-and-safety.md) | 数据安全、权限、验证清单 |

**与智能体协作**

| | |
|---|---|
| [06 思考深度与模型选择](docs/zh/06-reasoning-and-models.md) | Extra high、Max、Ultra,梯度调用 |
| [07 价格与套餐](docs/zh/07-pricing.md) | 价目表、充值建议、省钱 |
| [08 会话与交接](docs/zh/08-sessions-and-handoff.md) | 一个功能一个 session,hand_off |

**理念**

| | |
|---|---|
| [09 项目的生长与审美](docs/zh/09-growth-and-taste.md) | 长出来的项目,简洁与造轮子 |

## 模板

[`AGENTS.md`](templates/AGENTS.md) · [项目目录](templates/project-layout.md) · [`gitignore`](templates/gitignore) · [`CHANGELOG.md`](templates/CHANGELOG.md) · [`VALIDATION.md`](templates/VALIDATION.md) · [`make_handoff.sh`](templates/make_handoff.sh)

## 一页纸

1. 想清楚再动手:先聊透想法,不显而易见的任务先开 plan 对齐。
2. 原始数据只读,结果可再生;每个项目有 `AGENTS.md` 和 `CHANGELOG.md`。
3. 环境用 mamba/conda,Python 依赖用 uv。
4. 一个任务一个分支,小步提交,自己看 diff。
5. 初始化在一个 session 里完成,之后 fork 或新开;一个功能模块一个 session,用 `hand_off` 交接;session 内不换模型。
6. Pro $100 以上 Extra high 开到底;Ultra 开局,Max 深想;主力 Sol/Terra,少用 Astra。
7. 敏感数据先问规定,结果自己核对,验证清单让 agent 维护。

## 联系

关于 AIDD、计算机科学,或未来与科技相关的问题,欢迎发邮件到 **zhaisilong@outlook.com**,或直接在 GitHub 提交 Issue。
也欢迎 PR 补充经验、纠错、翻译,详见 [CONTRIBUTING.md](CONTRIBUTING.md);后续计划见 [TODO.md](TODO.md)。

## Star History

<picture>
  <source
    media="(prefers-color-scheme: dark)"
    srcset="
      https://api.star-history.com/svg?repos=zhaisilong/codex-for-aidd&type=Date&theme=dark
    "
  />
  <source
    media="(prefers-color-scheme: light)"
    srcset="
      https://api.star-history.com/svg?repos=zhaisilong/codex-for-aidd&type=Date
    "
  />
  <img
    alt="Star History Chart"
    src="https://api.star-history.com/svg?repos=zhaisilong/codex-for-aidd&type=Date"
  />
</picture>

## 许可证

[MIT](LICENSE)
