# 08 会话与交接

## 初始化在一个 session 里完成

项目的 init / create 阶段,尽量在**同一个 session** 里一气呵成:骨架、目录、`AGENTS.md`、第一批约定,上下文连贯,方向不会走偏。
之后有两种方式展开:

- **fork**:在 Codex 里用 `/fork`(或终端 `codex fork`),把当前对话复制成新线程,带着已有的上下文去做某个功能块,原 session 不受影响。
- **新开 session**:让 agent 先读 `AGENTS.md`、`docs/` 和最新的 `hand_off/`,自己去了解项目。

## 一个功能模块一个 session

之后不要把所有工作塞进同一个 session。不同 session 管不同的功能块,按你对项目的了解来划分边界。
同一仓库并行时,各自用独立分支(或 git worktree),避免互相覆盖。

例如项目开发好了,要部署和更新 GitHub,就单独开一个 session,交给更有性价比的 Terra 专门负责。
多开 session 也是比 Fast 更好的提速办法:同时推进几个功能块,让自己忙起来。

## 模型:一个 session 内不切换

**不推荐在一个 session 里跨模型切换**,这会影响操作和性能。Sol 就 Sol,Terra 就 Terra。
需要换模型,就换 session。

所谓**梯度调用**,是跨 session 的:

| 阶段 | Session | 模型 |
|---|---|---|
| 开局,快速积累原始代码 | 初始化 session | Sol,Ultra |
| 后续功能开发、重构 | fork 或新开 | Sol,Extra high |
| 部署、GitHub 更新等杂活 | 单独新开 | Terra |

## 会话继承:用,但别用成长期

继承(`/resume`)和 fork 很方便,值得用。但别让所有工作长期留在一个 session 里:

- 上下文越滚越乱,智能体容易被无关内容带偏
- 每一轮都要传递大量无关上下文,消耗很多 token

做完一个功能块就收尾,新的块 fork 或新开。

## hand_off:交接文档

换 session 时靠什么传递信息?**不推荐只维护一个 `PROGRESS.md`**。我们建议建立 `hand_off/` 目录,并**偶尔发布交接包** `hand_off/v2026-11-25/`,里面放:

- `README.md`:当前状态、关键决策、下一步、未决问题
- `meta.json`:版本、日期、git commit、环境版本等元信息
- 关键摘要和核心数据:结果的 summary、重要的小数据文件

交接包用**自己维护的 Python / shell 脚本**来收集整理,而不是手工拼凑。脚本跟着项目一起演进,越用越顺手。
模板脚本:[`templates/make_handoff.sh`](../../templates/make_handoff.sh)。

新 session 开场时,让它先读最新的交接包:

```text
请阅读 hand_off/ 下最新的交接包,总结当前状态和下一步,然后等我确认。
```
