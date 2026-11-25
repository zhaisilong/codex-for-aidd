# 02 代码与环境

智能体写代码很快,重复代码也会成倍增加。这一章讲怎么让代码留得住、跑得通。

## 从一次性脚本到可复用模块

1. 在 notebook 或临时脚本里探索
2. 结果可靠后,把核心逻辑提取成函数,放进 `src/`
3. 脚本只负责参数和输入输出
4. 给函数配一个小测试

```text
把 notebooks/dock_analysis.ipynb 里处理对接结果的部分提取为 src/docking/parse.py 的函数,
行为保持不变,在 tests/ 下用小样例写测试。先给计划,不要直接改。
```

## 让代码容易被正确修改

- 函数小而单一,一个函数一件事
- 写类型标注和 docstring,尤其是输入输出的含义、单位、SMILES 是否已标准化
- 阈值放进配置并注明来源,不要写魔法数字
- 路径用参数或配置,不要写死

## 测试:小而够用

不需要大数据。准备 3~10 条有代表性的样例放进 `tests/data/`,覆盖正常和边界情况(空输入、非法 SMILES、缺失列),
并要求智能体"改完必须跑通测试"。测试是你和智能体之间最便宜的契约。

## 环境:mamba/conda + uv

**mamba/conda 管整体环境**。AIDD 和生信常依赖 RDKit、OpenBabel 这类带二进制的包,以及各种非 Python 软件,conda 生态最省心。
非常推荐用 mamba,安装指南(推荐 Miniforge):
https://mamba.readthedocs.io/en/latest/installation/mamba-installation.html

**uv 管 Python 依赖**。Codex agent 操作 Python 项目时更顺手用 uv,我们也力推:快,锁文件清楚,命令简单。
安装:https://docs.astral.sh/uv/getting-started/installation/

```bash
curl -LsSf https://astral.sh/uv/install.sh | sh   # macOS / Linux
```

搭配方式:

- 纯 Python 项目:`uv init`、`uv add`、`uv run`,`pyproject.toml` 与锁文件一起提交
- 需要非 Python 依赖:先用 mamba 建环境,再在其中用 `uv pip install` 装 Python 包

环境说明写进 `AGENTS.md`,Codex 就知道该用哪一个。

## 可复现的细节

固定随机种子并写进输出元数据;记录关键软件版本(RDKit、PyTorch、Scanpy 等)和数据版本或校验和;环境文件随代码提交。

## 定期修剪

重构完问一句:"有没有因此变成无用的文件或函数?"删代码和写代码一样重要。
