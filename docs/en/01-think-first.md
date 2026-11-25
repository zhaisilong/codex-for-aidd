# 01 Think First

The agent is good at executing, but *what* to do and *why* must be settled before it starts. Our rhythm: **discuss, then plan, then execute**.

## Step 1: talk the idea through

Before writing any code, discuss it with Claude or ChatGPT (especially the Pro-level deep reasoning):

- What problem the idea solves
- The operational details and the inputs and outputs of each step
- Feasibility: data, compute, whether a simpler route exists
- Which papers to read, and what their conclusions and limits are

The goal is to turn the vague into the clear, not to produce code.

## Step 2: turn the discussion into documents

Put the result in `docs/`: goal and background, method and steps, data description, acceptance criteria, open questions.
Documents are more reliable than chat history: they go into version control and the agent can reread them.

## Step 3: open plan mode and align

**Whenever the task is not obvious, open plan mode first** (see the official docs for how) and let Codex propose a plan. Align it with your intent before it touches anything.

```text
Read docs/plan.md and docs/data.md first, then give me an implementation plan:
how many steps, which files each step changes, how to verify each one.
Do not modify any files until I confirm.
```

Why we insist: Codex is often short-sighted. Its long-range context and prior knowledge of your project are limited.
The planning stage is the best moment to hand it your direction, boundaries and judgment. A deviation caught in the plan is far cheaper than one caught in the code.

## Step 4: build together

Once the plan is confirmed, proceed with the practices in the chapters after this one: a configured `AGENTS.md` ([02](02-project-structure.md)), small changes with small tests ([03](03-code-and-env.md)), one branch per task ([04](04-git-github.md)), and a validation checklist kept up to date ([05](05-verify-and-safety.md)).

This is working *together*, not handing off. You own direction, judgment and acceptance; it owns fast progress.
Your understanding of the project grows through the conversation. Write that understanding back into docs and `AGENTS.md`. That is the "growing" described in [09](09-growth-and-taste.md).
