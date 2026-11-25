# 04 模型选择与价格

> **最后核对日期:2026-11-25**。以官方为准:[Codex 套餐](https://chatgpt.com/codex/pricing/) · [API 价格](https://developers.openai.com/api/docs/pricing) · [费率表](https://help.openai.com/en/articles/20001415-chatgpt-rate-card-enterprise-token-based-pricing)

## 价目表

ChatGPT Work / Codex 标准用量费率,单位:美元 / 100 万 token。

| 模型 | 输入 | 缓存输入 | 输出 | 我们的定位 |
|---|---|---|---|---|
| GPT-6.2 Astra | $8.00 | $0.40 | $40.00 | 最强也最贵,**不到万不得已不用** |
| GPT-6.2 Sol | $2.00 | $0.10 | $10.00 | **主力** |
| GPT-6.1 Sol | $2.00 | $0.10 | $10.00 | 主力(上一代) |
| GPT-6.1 Terra | $1.00 | $0.05 | $5.00 | **主力**,更省,适合部署等杂活 |
| GPT-6 Astra | $10.00 | $1.00 | $50.00 | 已被 6.2 Astra 取代 |
| GPT-6 Sol | $2.00 | $0.20 | $10.00 | 上一代 |
| GPT-6 Luna | $0.10 | $0.01 | $0.50 | 轻量、批量 |
| GPT-5.6 Sol | $4.00 | $0.40 | $20.00 | 旧版 |
| GPT-5.6 Terra | $2.00 | $0.20 | $12.00 | 旧版 |
| GPT-5.6 Luna | $0.20 | $0.02 | $1.20 | 旧版 |

- 6.2 Astra 比上一代 6 Astra 的输入、输出价格各降 20%;但仍是 Sol 的约 4 倍。
- 价格档位相对稳定,**一般直接用最新模型**。目前官方价格页没有 GPT-6.2 Terra。

## 套餐与充值

Codex 包含在 ChatGPT 套餐中,也可以用 API Key 按量计费。

| 套餐 | 月费 | 备注 |
|---|---|---|
| Free / Go | $0 / $8 | 轻量体验 |
| Plus | $20 | 有 5 小时窗口和每周限额 |
| **Pro** | **$100 / $200** | 目前无 5 小时限制,功能多,额度够 |
| Pro | $500 | 最高额度 |
| Business | 约 $20/席位(年付) | 团队 |

**充值建议:Pro $100 或 $200,比较实惠**,功能齐全、额度宽裕,日常重度使用基本不用担心限额。
Plus 适合轻度使用;批量自动化走 API 并设预算上限。先从低档开始,真撞限额再升级。

## 速度与折扣

- **Fast 很不推荐**:价格是标准价的 2 倍,速度只有约 1.5 倍,并不划算。想更快,**多开几个 session 并行,让自己忙起来**,见 [08](08-sessions-and-handoff.md)。
- Batch 约为标准价的 50%,适合不着急的批量任务。

## 用得更省

- 日常用 Sol / Terra,Astra 只留给最难的问题。
- 思考深度也是成本,见 [06](06-reasoning-and-models.md)。
- 告诉它只看哪些文件;大文件让它写脚本处理,别读进对话。
- 任务拆小、一个功能一个 session,避免上下文越滚越大。
- 用 `ccusage` 每月复盘,见 [00](00-getting-started.md)。

## 来源

[OpenAI:GPT-6.2 Astra 与 Sol 发布](https://openai.com/index/introducing-gpt-6-2-astra-sol/) ·
[OpenAI API Pricing](https://developers.openai.com/api/docs/pricing) ·
[ChatGPT Rate Card](https://help.openai.com/en/articles/20001415-chatgpt-rate-card-enterprise-token-based-pricing)
