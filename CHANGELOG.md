# CHANGELOG

按日期记录项目的变化,最新在最上面。同一天的改动合并记录。

## 2026-11-25

### 新增

- 项目初始化:中文 `README.md`、英文占位 `README.en.md`、`CONTRIBUTING.md`、双许可证(代码 MIT,文档 CC BY 4.0)
- 文档 `docs/zh/` 00–09:快速开始、项目目录、代码与环境、Git 与 GitHub、模型与价格、安全与结果核对、思考深度、从想法到执行、会话与交接、项目的生长与审美
- 模板 `templates/`:`AGENTS.md`、项目目录、`gitignore`、`CHANGELOG.md`、`VALIDATION.md`、`make_handoff.sh`
- 本 `CHANGELOG.md`

### 内容要点

- README 开头:"Agent 不能替代你思考"与项目哲学;联系方式
- 价格:按 2026-11-25 的官方价目表更新(GPT-6.2 Astra / Sol 等);Pro $100/$200 充值建议;不推荐 Fast,改为多 session 并行
- 环境:mamba/conda 管整体环境,uv 管 Python 依赖;`ccusage` 用量统计
- 工作方式:plan 模式先对齐;一个功能模块一个 session;`hand_off` 交接包;梯度调用(Ultra、Extra high、Terra)
- 验证清单由 agent 维护;每个项目维护 `CHANGELOG.md`
- 自己造轮子,不推荐 GPT-Rosalind 与 Life Sciences 插件
