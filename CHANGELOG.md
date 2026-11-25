# CHANGELOG

按日期记录项目的变化,最新在最上面。同一天的改动合并记录。

## 2026-11-25

### 新增

- 项目初始化:中文 `README.md`、英文占位 `README.en.md`、`CONTRIBUTING.md`、`LICENSE`(MIT)
- 文档 `docs/zh/` 00–09,按"起步、工程基础、与智能体协作、理念"组织:
  快速开始、先想清楚、项目目录、代码与环境、Git 与 GitHub、安全与结果核对、思考深度与模型选择、价格与套餐、会话与交接、项目的生长与审美
- 模板 `templates/`:`AGENTS.md`、项目目录、`gitignore`、`CHANGELOG.md`、`VALIDATION.md`、`make_handoff.sh`
- README 开头"Agent 不能替代你思考"、联系方式、Star History
- `TODO.md`:后续计划与待核实项
- 英文版:`README.en.md`、`docs/en/` 00–09、`templates/en/`,与中文章节一一对应;`CONTRIBUTING.md` 改为中英双语

### 变更

- 许可证统一为 MIT
- 章节按阅读逻辑重排,README 目录分组
- 价格按 2026-11-25 的官方价目表更新(GPT-6.2 Astra / Sol 等);Pro $100/$200 充值建议;不推荐 Fast,改为多 session 并行
- 环境:mamba/conda 管整体环境,uv 管 Python 依赖;`ccusage` 用量统计
- 工作方式:plan 模式先对齐;初始化在一个 session 内完成,之后 `/fork` 或新开;一个功能模块一个 session;`hand_off` 交接包
- 模型:一个 session 内不跨模型切换(Sol 就 Sol,Terra 就 Terra),梯度调用改为跨 session
- 验证清单由 agent 维护;每个项目维护 `CHANGELOG.md`
- 自己造轮子,不推荐 GPT-Rosalind 与 Life Sciences 插件
