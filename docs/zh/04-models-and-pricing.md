# 04 模型选择与价格

模型和价格变得很快。这一章给出**2026-11-25 核对的数字**,更重要的是怎么判断、去哪里查。

> **最后核对日期:2026-11-25**。以官方页面为准:
> [API 价格](https://developers.openai.com/api/docs/pricing) · [Codex 套餐](https://chatgpt.com/codex/pricing/)

## 当前主要模型(API 标准档,每百万 token)

| 模型 | 输入 | 缓存输入 | 输出 | 我们的定位 |
|---|---|---|---|---|
| GPT-6.2 Astra | $8 | $0.40 | $40 | 最强也最贵,**不到万不得已不推荐** |
| GPT-6.2 Sol | $2 | $0.10 | $10 | **主力** |
| GPT-6.1 Terra | $1 \* | — | $5 \* | **主力**(更轻快、更省) |
| GPT-6 Luna | $0.10 \* | — | $0.50 \* | 轻量活、批量活 |
| GPT-6 Astra(上一代) | $10 | $1 | $50 | 已被 6.2 Astra 取代 |

\* Terra 与 Luna 在官方价格页的标准档表格中没有直接列出,这两行来自 2026 年 11 月第三方汇总(其引用的是官方价格页),请以官方页面为准。
6.2 Astra 与 6.2 Sol 的价格来自 OpenAI 官方发布(2026-11-17)。

几点观察:

- Astra 的价格是 Sol 的 **4 倍**左右。日常开发用 Sol 或 Terra 就够了。
- 模型迭代很快,价格档位相对稳定,所以**一般直接用最新的**即可。
- Codex 里不同模型消耗订阅额度的速度不同,越贵的模型越快用完额度。

## 速度与折扣

- **Fast** 模式:标准价的 2 倍
- **Ultrafast** 模式:API 上 GPT-6.2 Astra / Sol 在 2027-02-28 前为标准价 3 倍,之后为 6 倍
- **Batch**:约为标准价的 50%,适合不着急的批量任务
- 长上下文(超过一定长度)可能有加价,请看官方页面

## ChatGPT 订阅与 Codex

Codex 包含在 ChatGPT 套餐里,也可以用 API Key 按量计费。

| 套餐 | 价格(月) | 备注 |
|---|---|---|
| Free | $0 | 有限体验 |
| Go | $8 | 轻量使用 |
| Plus | $20 | 有 5 小时窗口和每周限额 |
| Pro | $100 / $200 / $500 | 目前没有 5 小时限制,但仍有每周额度;越高档额度越大 |
| Business | 约 $20/席位(年付) | 团队使用 |

要点:

- Pro 三档的价格和"无 5 小时限制"来自官方页面及多家第三方汇总;官方 Codex 价格页的文字只直接提到 $100 与 $200 的 Pro,以及 $20 与 $100 的 Business。
- Ultrafast 在 Pro $500 上可用于 Astra 和 Sol;Pro $200 目前仅包含 GPT-6.2 Sol 的 Ultrafast(见 [OpenAI 帮助中心](https://help.openai.com/en/articles/20001275-chatgpt-work-and-codex))。
- 用 `/status` 或 Codex 用量面板可以查看剩余额度。额度紧张时,换低一档模型处理日常活。

## 怎么选档位

| 你的情况 | 建议 |
|---|---|
| 偶尔用、主要写小脚本 | Plus 就够,模型用 Sol 或 Terra |
| 每天长时间用 Codex | **Pro $100 起**,基本不用担心 5 小时窗口 |
| 多项目并行、大量使用 Ultra 或 Max | 更高档 Pro,或购买额外 credits |
| 批量自动化、接入自己的流水线 | API Key 按量计费,设置预算上限 |

先从低档开始,**真的撞到限额再升级**,通常比一开始买满更划算。

## 怎么用得更省

- **日常用 Sol / Terra,难题再考虑 Astra**。
- **思考深度也是成本**:见 [06 思考深度与模型选择](06-reasoning-and-models.md)。
- **控制上下文**:告诉它只看哪些文件,别让它把整个数据目录读进对话。
- **任务拆小**:长对话会不断累积上下文,拆成多个短任务更省也更准。
- **先计划后动手**:避免走错方向后整段推倒。
- **大文件让它写脚本处理**,不要把内容读进对话。

## 每隔几天更新 Codex

新模型和新交互经常随版本更新出现。安装与更新方式见 [00 快速开始](00-getting-started.md)。

## 来源

- OpenAI:[Introducing GPT-6.2 Astra and Sol](https://openai.com/index/introducing-gpt-6-2-astra-sol/)
- OpenAI:[API Pricing](https://developers.openai.com/api/docs/pricing)
- OpenAI:[Codex Pricing](https://chatgpt.com/codex/pricing/)
- OpenAI 帮助中心:[ChatGPT Work and Codex](https://help.openai.com/en/articles/20001275-chatgpt-work-and-codex)
- 第三方汇总(用于交叉核对 Terra/Luna 与 Pro 档位):reflektlab.ai、favtray.com、leanopstech.com、faros.ai
