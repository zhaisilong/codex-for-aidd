# VALIDATION

Validation checklist, maintained and re-verified by the agent so you can see progress at any time.
Status: `[ ]` not done · `[x]` passed · `[!]` problem (state the reason). Update the date at each check.

Last verified: YYYY-MM-DD

## Data

- [ ] SMILES standardized and deduplicated; invalid structures logged
- [ ] Missing values and outliers handled and recorded
- [ ] Data version or checksum recorded

## Splits and leakage

- [ ] No leakage between training and test sets (scaffold, sequence similarity, time)
- [ ] Split method and random seed recorded

## Computation and method

- [ ] Units, coordinate systems and protonation states consistent throughout
- [ ] Compared with known results or a baseline; deviation within expectation
- [ ] Output identical on a small sample before and after refactoring

## Statistics

- [ ] Sensible baselines, with confidence intervals or replicates
- [ ] Appropriate tests, with multiple-testing correction where applicable

## Reproducibility

- [ ] Random seeds fixed and written to output metadata
- [ ] Key software versions recorded
- [ ] Environment files committed; can be rebuilt from scratch

## References and interpretation

- [ ] Every citation and link opened and confirmed
- [ ] Biological interpretation backed by primary evidence

## Issue log

| Date | Item | Problem | Action |
|---|---|---|---|
| | | | |
