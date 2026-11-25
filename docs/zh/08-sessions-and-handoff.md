# 08 会话与交接

## 一个功能模块一个 session

不要把所有工作塞进同一个 session。不同 session 管不同的功能块,按你对项目的了解来划分边界。
同一仓库并行时,各自用独立分支(或 git worktree),避免互相覆盖。

一个简单例子:项目开发好了,要部署和更新 GitHub,就单独开一个 session,用更有性价比的模型(如 Terra)专门负责。
开局时用 Ultra 快速完成原始代码积累,之后改用 Extra high,再往后用 Terra 做部署,形成**梯度调用**(见 [06](06-reasoning-and-models.md))。

多开 session 也是比 Fast 更好的提速办法:同时推进几个功能块,让自己忙起来。

## 会话继承:用,但别用成长期

继承(resume)一个旧 session 很方便,值得用。但不建议所有工作都在一个 session 里长期继承:

- 上下文越滚越乱,智能体容易被无关内容带偏
- 每一轮都要传递大量无关上下文,消耗很多 token

做完一个功能块就收尾,新的块开新 session。

## hand_off:交接文档

换 session 时靠什么传递信息?**不推荐只维护一个 `PROGRESS.md`**。我们建议建立 `hand_off/` 目录,并**偶尔发布交接包** `hand_off/v2026-11-25/`,里面放:

- `README.md`:当前状态、关键决策、下一步、未决问题
- `meta.json`:版本、日期、git commit、环境版本等元信息
- 关键摘要和核心数据:结果的 summary、重要的小数据文件

交接包用**自己维护的 Python / shell 脚本**来收集整理,而不是手工拼凑。脚本跟着项目一起演进,越用越顺手。
模板脚本:[`templates/make_handoff.sh`](../../templates/make_handoff.sh)。

新 session 开场时,让它先读最新的交接包,再开始干活:

```text
请阅读 hand_off/ 下最新的交接包,总结当前状态和下一步,然后等我确认。
```
