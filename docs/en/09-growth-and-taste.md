# 09 How Projects Grow, and Taste

This chapter is not about operations. It is about how we see a good project.

## Good things grow

A good project, skill, piece of code or document is not designed up front. It grows, little by little, as your understanding of the project deepens:

- On day one your understanding is shallow and what you write is rough
- As you work you find which steps repeat, where errors keep happening, which conventions deserve writing down
- You settle those findings: a function, a test, a rule in `AGENTS.md`, a skill

So do not build a huge framework at the start. Get going, and grow on real pain points.

## Two levels

| Level | Content |
|---|---|
| Within the project | Understanding that belongs to this project: data pitfalls, pipeline conventions, dedicated skills |
| Across projects | General experience, which is what we call "style": directories, naming, commits, how you work with agents |

Understanding within the project decides whether it is **right**; style across projects decides whether it is **beautiful**.
Cross-project experience can go in a user-level global `AGENTS.md` (see the official docs for its location), so every new project starts from your style.

## Simplicity is beauty

An elegant project, on one hand, delivers its functions with a lean implementation; on the other, it handles some basic concepts well:
multithreading and parallelism, caching, code classification and module layout, CLI and API interfaces, decoupling.

The point is not to use them all. It is **where to use them, when to use them, and when to skip them entirely**.
Premature parallelism, needless caching, a CLI used once, decoupling for its own sake: all of these make trouble for your future self. Ask yourself:

- Have I measured the gain from this optimization?
- Will it be reused?
- Does this layer of abstraction cost more than it gives?
- If I delete it, does the project get worse?

There is no standard answer; you refine it in the project, again and again.

## Build your own wheels

We **do not recommend** highly wrapped solutions such as GPT-Rosalind and Codex's Life Sciences plugin: too much is encapsulated, so you cannot see what happens inside, and you learn nothing.

We prefer building our own wheels. In the agent era that is far easier than before, and you learn a great deal along the way.
You know the boundaries of a tool you wrote, and you know where to look when it breaks. That is part of taste too.

## Build your own taste

An agent can write code that "runs". Whether it "looks good" depends on your taste.

- When something feels off, say so and have it changed
- Regularly have it **prune**: what can be deleted, what is duplicated, what is over-designed
- Record the styles you approve in `AGENTS.md`
- Read many good projects, their code and docs

Without taste, an agent produces the average. With taste, it amplifies your style.
