# codex-for-aidd

**How to Use Codex Better for AIDD** · Practical advice on using Codex for AI-driven drug discovery (AIDD), bioinformatics, and related research

English | [中文](README.md) · [Changelog](CHANGELOG.md)

---

## An agent cannot think for you

> "Would you tell me, please, which way I ought to go from here?"
> "That depends a good deal on where you want to get to."
> "I don't much care where—"
> "Then it doesn't matter which way you go."
> — Lewis Carroll, *Alice's Adventures in Wonderland*

If you do not know where you are going, any direction will do. Codex is often short-sighted: it is limited by its long-range context and by its prior knowledge of your project.
So you must know your own project very well, and **take every conversation with the agent seriously**. Each one is a chance for your own understanding to advance.
Just let it do whatever, and what you often get back is a pile of 💩.

---

Models iterate and tools change every month. What lasts is your understanding of the project and how you handle it: your **engineering habits and style**.
An agent amplifies this. A well-structured project makes it formidable; a messy one just gets messier, faster.

Good projects, skills, code and documents all **grow**, bit by bit, as your understanding grows. Understanding within a project decides whether it is right; style across projects decides whether it is beautiful, and beauty often comes from simplicity.
No one can build that taste for you. It is the starting point of this handbook.

> This is not a strict specification but a relaxed handbook of experience; if it saves you a few pitfalls, it has done its job. It centers on Codex, and most habits carry over to other agents.

## Contents

**Getting started**

| | |
|---|---|
| [00 Getting started](docs/en/00-getting-started.md) | Install, update, usage tracking, first run |
| [01 Think first](docs/en/01-think-first.md) | Discuss, write it down, align in plan mode |

**Engineering basics**

| | |
|---|---|
| [02 Project structure](docs/en/02-project-structure.md) | Directories, protecting raw data, `AGENTS.md` |
| [03 Code and environment](docs/en/03-code-and-env.md) | Reuse, tests, mamba and uv |
| [04 Git and GitHub](docs/en/04-git-github.md) | Commits, branches, CHANGELOG |
| [05 Verification and safety](docs/en/05-verify-and-safety.md) | Data safety, permissions, validation checklist |

**Working with the agent**

| | |
|---|---|
| [06 Reasoning effort and models](docs/en/06-reasoning-and-models.md) | Extra high, Max, Ultra; gradient use |
| [07 Pricing and plans](docs/en/07-pricing.md) | Price table, top-up advice, saving cost |
| [08 Sessions and hand-off](docs/en/08-sessions-and-handoff.md) | One session per feature block; hand_off |

**Philosophy**

| | |
|---|---|
| [09 How projects grow, and taste](docs/en/09-growth-and-taste.md) | Projects that grow; simplicity and building your own wheels |

## Templates

[`AGENTS.md`](templates/en/AGENTS.md) · [Project layout](templates/en/project-layout.md) · [`gitignore`](templates/en/gitignore) · [`CHANGELOG.md`](templates/en/CHANGELOG.md) · [`VALIDATION.md`](templates/en/VALIDATION.md) · [`make_handoff.sh`](templates/en/make_handoff.sh)

## One page

1. Think before you build: talk the idea through, and align in plan mode for anything non-obvious.
2. Raw data is read-only and results are reproducible; every project has an `AGENTS.md` and a `CHANGELOG.md`.
3. mamba/conda for the environment, uv for Python dependencies.
4. One branch per task, small commits, read the diff yourself.
5. Initialize in one session, then fork or start new; one session per feature block, hand over with `hand_off`; no model switching inside a session.
6. With Pro $100+, run Extra high all the way; Ultra to start, Max for deep thought; Sol/Terra as workhorses, Astra rarely.
7. Ask before sending sensitive data, verify results yourself, and have the agent maintain the validation checklist.

## Contact

Questions about AIDD, computer science, or the future of technology are welcome at **zhaisilong@outlook.com**, or open an issue on GitHub.
PRs are welcome too, whether to add experience, fix errors or translate; see [CONTRIBUTING.md](CONTRIBUTING.md). Plans are in [TODO.md](TODO.md).

## License

[MIT](LICENSE)

## Star History

<picture>
  <source
    media="(prefers-color-scheme: dark)"
    srcset="
      https://api.star-history.com/svg?repos=zhaisilong/codex-for-aidd&type=Date&theme=dark
    "
  />
  <source
    media="(prefers-color-scheme: light)"
    srcset="
      https://api.star-history.com/svg?repos=zhaisilong/codex-for-aidd&type=Date
    "
  />
  <img
    alt="Star History Chart"
    src="https://api.star-history.com/svg?repos=zhaisilong/codex-for-aidd&type=Date"
  />
</picture>
