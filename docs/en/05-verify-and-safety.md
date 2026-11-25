# 05 Verification and Safety

## Can the data go to a cloud model?

With a cloud agent, the contents of the files it reads are sent to the server. Before you start, ask:

- Is it **unpublished** compounds, sequences or experimental results?
- Does it involve **human subjects** or patient data?
- Do your institution, partners, contracts or ethics approvals restrict it?

If unsure, ask your institution's information-security or ethics office first, and read the service's data handling and retention policy.
A safe approach: let the agent write code on **de-identified samples or synthetic data**, and run the real data locally.

## Permissions and keys

- Start with a conservative permission mode (read-only, or write only in the working directory) and loosen it when needed; be careful with network access and deletion.
- Never grant broad permissions in a repository you do not trust.
- Keep keys in environment variables, not in code or `AGENTS.md`, and never commit `.env`.

## Verifying results

Agents often sound confident when they are wrong. Common risks:

- Invented references, database names or field meanings
- Inappropriate statistics (choice of test, multiple-testing correction, data leakage)
- Over-reaching biological interpretation
- Behavior that silently changed after a refactor

### The validation checklist: let the agent maintain it

Keep a `VALIDATION.md` in the project root: "what counts as correct", written as a checklist with status. **Have the agent maintain and re-verify it often.**
You then see progress at a glance: what passed, what is not done, what has problems.

How to use it:

1. At the start, have the agent draft the list from the task, and you approve it
2. After each stage, have it run each check and update status and date
3. Write the reason for failures; do not delete them

Common AIDD / bioinformatics checks:

- SMILES standardized and deduplicated, invalid structures logged
- No leakage between training and test sets (scaffold, sequence similarity, time)
- Random seeds, software versions and data checksums recorded
- Sensible baselines and statistical tests, with confidence intervals
- Units, coordinate systems and protonation states consistent for docking and scoring
- Every citation and link actually opened and confirmed

Template: [`templates/en/VALIDATION.md`](../../templates/en/VALIDATION.md).

## Keep a record

For important analyses, keep the key decisions and the software and data versions. It is a reproducibility requirement and a basis for self-review later.
