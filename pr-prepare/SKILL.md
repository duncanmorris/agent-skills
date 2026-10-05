---
name: pr-prepare
description: Pre-PR self-review for any repository. Use before pushing or opening a pull request to validate scope, check plans or tickets and acceptance criteria, review code and test coverage like a picky reviewer, assess existing validation evidence, and summarize blockers and nits.
---

# PR Prepare

Review the change as a picky senior reviewer would before it is pushed. Be honest: working is not the same as ready. Read `AGENTS.md`, `CONTRIBUTING.md`, and similar repository guidance first, and never perform git write actions unless the user explicitly asks.

Determine the review set before inspecting the change. Review relevant unpublished commits (or the branch from its merge base with the intended base branch) and relevant working-tree changes, including new files. Use the plan, ticket, and surrounding changes to decide what belongs to the PR; Git status alone does not decide scope. Do not exclude a new file just because a tracked file is also modified. If an untracked file's relationship to the change is unclear, list its path and ask before inspecting its contents; do not silently exclude a potentially required change.

Find the relevant plan or ticket if one exists and walk through every acceptance criterion individually. Confirm each outcome criterion is actually satisfied in the code. Trust the plan's record of completed test runs rather than rerunning them to verify that record; still assess whether the tests cover the changed behaviour sufficiently. Treat routine post-push CI as a merge gate, not an acceptance criterion or a pre-PR blocker; report it as pending if it has not run. Flag scope creep early; feature work mixed with unrelated refactoring should usually be split.

Review the code for:

- unhappy paths, incomplete error handling, and incorrect edge-case behaviour
- missing, misleading, or insufficient tests for changed behaviour
- unnecessary complexity and abstractions that do not earn their cost
- dead code, unused imports, unreachable branches, and commented-out blocks
- broken references to files, documentation, or configuration
- input-validation gaps and unintended backward-compatibility breaks
- relevant security or privacy regressions

Review validation results recorded in the plan or provided by the user. If the plan says tests ran, accept that record without rerunning them; CI will run the checks again. Focus on whether the changed behaviour has appropriate tests and whether the code has substantive defects. Run a targeted check only when needed to investigate a specific suspected issue, not as a routine pre-PR checklist.

## Report

Give one verdict — ready, ready with nits, or not ready — and separate blockers from nits with exact file references and why each matters. Include scope and acceptance-criteria gaps, existing validation evidence and any targeted checks performed, and any untracked paths whose relationship to the change remains unclear.
