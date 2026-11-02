---
name: plan-write
description: Write a short implementation plan for a task, feature, bug, or refactor before development starts.
---

# Plan Write

Write the shortest plan someone else can implement without guessing. Read relevant repository guidance, code, tests, and tickets first. Choose the smallest change that solves the problem.

Cover the goal, necessary context, approach, and observable acceptance outcomes, including relevant edge cases. Explain decisions that affect scope or architecture; omit incidental implementation details and code dumps. State deliberate exclusions in the approach.

Assume normal developer checks and CI. Do not add routine test, lint, format, type-check, build, or CI commands, pass criteria, or run records. Include a special check only when it resolves a concrete uncertainty normal checks cannot cover, such as production-data compatibility or performance.

Keep implementation steps and acceptance criteria completable before opening the PR. Describe any later rollout as context, not a completion gate. Split independently deliverable changes when needed.

Omit empty sections and repetition. Keep only unresolved risks and questions; fold resolved answers into the approach. Retain decision history only when it helps the implementer.

Follow repository naming and location conventions; otherwise write to `docs/plans/<kebab-case-title>.md`. Do not hard-wrap prose. Always save the plan in the repository and report its path and any unresolved decisions.

## Suggested structure

```md
# <Title>

## Goal

What changes and why.

## Background

Necessary context and references.

## Approach

Strategy, key decisions, and exclusions.

## Acceptance Criteria

- [ ] <observable outcome>
- [ ] <relevant edge-case outcome>

## Risks / Open Questions

Include only if unresolved.
```
