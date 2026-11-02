---
name: pr-prepare
description: Review a change before pushing or opening a PR, checking scope, acceptance outcomes, code, and test coverage for substantive issues.
---

# PR Prepare

Read repository guidance first. Review the intended PR, including relevant commits, working-tree changes, and new files. Use the plan, ticket, and surrounding changes to establish scope, not Git status alone. If an untracked file's relevance is unclear, ask before reading it.

Check each acceptance outcome against the implementation. Flag missing behaviour and unrelated work; suggest splitting changes when appropriate.

Review for:

- bugs, unhappy paths, and incorrect edge-case behaviour
- missing or misleading tests for changed behaviour
- unnecessary complexity, dead code, and broken references
- security, privacy, input-validation, and compatibility regressions

Assume normal developer checks and CI. Do not ask for confirmation or records of routine test, lint, format, type-check, build, or CI success. Missing records and pending CI are not review findings. Assess test coverage and correctness, not proof that checks ran.

Investigate known failures, but do not rerun checks merely to confirm reported success. Run a targeted check only to investigate a specific suspected defect; request extra evidence only for a concrete risk normal checks cannot cover.

Never perform Git or GitHub write actions without explicit permission.

## Report

Give a verdict: **ready**, **ready with nits**, or **not ready**. Separate blockers from nits, with file references, why each matters, and the smallest useful fix. Include scope or acceptance gaps and any unresolved file-scope questions. Omit routine validation status.
