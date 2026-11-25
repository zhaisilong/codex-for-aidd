# 07 Pricing and Plans

> **Last checked: 2026-11-25.** Official sources win: [Codex plans](https://chatgpt.com/codex/pricing/) · [API pricing](https://developers.openai.com/api/docs/pricing) · [Rate card](https://help.openai.com/en/articles/20001415-chatgpt-rate-card-enterprise-token-based-pricing)

## Price table

ChatGPT Work / Codex standard usage rates, USD per 1M tokens.

| Model | Input | Cached input | Output | Our take |
|---|---|---|---|---|
| GPT-6.2 Astra | $8.00 | $0.40 | $40.00 | Strongest and priciest; **only as a last resort** |
| GPT-6.2 Sol | $2.00 | $0.10 | $10.00 | **Workhorse** |
| GPT-6.1 Sol | $2.00 | $0.10 | $10.00 | Workhorse (previous) |
| GPT-6.1 Terra | $1.00 | $0.05 | $5.00 | **Workhorse**, cheaper; good for deployment and chores |
| GPT-6 Astra | $10.00 | $1.00 | $50.00 | Superseded by 6.2 Astra |
| GPT-6 Sol | $2.00 | $0.20 | $10.00 | Previous generation |
| GPT-6 Luna | $0.10 | $0.01 | $0.50 | Light and batch work |
| GPT-5.6 Sol | $4.00 | $0.40 | $20.00 | Older |
| GPT-5.6 Terra | $2.00 | $0.20 | $12.00 | Older |
| GPT-5.6 Luna | $0.20 | $0.02 | $1.20 | Older |

- 6.2 Astra cuts input and output prices by 20% against GPT-6 Astra, but is still about 4x Sol.
- Price tiers are fairly stable, so **just use the newest model**. The official price page currently lists no GPT-6.2 Terra.

## Plans and top-ups

Codex is included in ChatGPT plans, and can also be billed per token with an API key.

| Plan | Per month | Notes |
|---|---|---|
| Free / Go | $0 / $8 | Light trial |
| Plus | $20 | 5-hour window and weekly limit |
| **Pro** | **$100 / $200** | No 5-hour limit at present; many features, ample quota |
| Pro | $500 | Highest quota |
| Business | about $20 per seat (annual) | Teams |

**Top-up advice: Pro $100 or $200 is good value.** It is full-featured with generous quota, so heavy daily use rarely hits limits.
Plus suits light use; for batch automation use the API with a budget cap. Start low and upgrade only when you actually hit limits.

## Speed and discounts

- **We strongly advise against Fast.** It costs 2x the standard rate for only about 1.5x the speed. To go faster, **run several sessions in parallel and keep yourself busy**; see [08](08-sessions-and-handoff.md).
- Batch is about 50% of standard, good for non-urgent bulk jobs.

## Spending less

- Use Sol / Terra day to day; keep Astra for the hardest problems.
- Reasoning depth is also cost; see [06](06-reasoning-and-models.md).
- Tell it which files to look at; have it write a script for big files rather than reading them into the conversation.
- Split tasks, one feature block per session, so context does not keep growing.
- Review with `ccusage` monthly; see [00](00-getting-started.md).

## Sources

[OpenAI: GPT-6.2 Astra and Sol launch](https://openai.com/index/introducing-gpt-6-2-astra-sol/) ·
[OpenAI API Pricing](https://developers.openai.com/api/docs/pricing) ·
[ChatGPT Rate Card](https://help.openai.com/en/articles/20001415-chatgpt-rate-card-enterprise-token-based-pricing)
