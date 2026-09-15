---
name: pr-prepare
description: Pre-PR self-review for any repository. Use before pushing or opening a pull request to validate scope, check plans or tickets and acceptance criteria, review code and tests like a picky reviewer, run the repo's validation commands, and summarize blockers and nits.
---

# PR Prepare

Review the change as a picky senior reviewer would before it is pushed. Be honest: working is not the same as ready. Read `AGENTS.md`, `CONTRIBUTING.md`, and similar repository guidance first, and never perform git write actions unless the user explicitly asks.

Determine the review set before inspecting the change. If there are unpublished commits, review those commits only. Otherwise, review the branch from its merge base with the intended base branch; if there is no branch diff, review tracked working-tree changes. Treat pre-existing untracked files as out of scope: do not inspect their contents or report issues in them. At most, list their paths once as assumed excluded. Mention a file only when the tracked diff clearly indicates that a required part of the change may have been omitted.

Find the relevant plan or ticket if one exists and walk through every acceptance criterion individually. Confirm each criterion is actually satisfied. Flag scope creep early; feature work mixed with unrelated refactoring should usually be split.

Review the code for:

- unhappy paths, incomplete error handling, and incorrect edge-case behaviour
- missing, misleading, or insufficient tests for changed behaviour
- unnecessary complexity and abstractions that do not earn their cost
- dead code, unused imports, unreachable branches, and commented-out blocks
- broken references to files, documentation, or configuration
- input-validation gaps and unintended backward-compatibility breaks
- relevant security or privacy regressions

Run the repository's documented validation commands, preferring exact commands from local guidance or CI. If validation is undocumented, say so and run the most relevant available checks.

## Report

Give one verdict — ready, ready with nits, or not ready — and separate blockers from nits with exact file references and why each matters. Include scope and acceptance-criteria gaps, validation commands and results, and any untracked paths assumed to be excluded.
