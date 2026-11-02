---
name: plan-review
description: Review an implementation plan for clarity, scope, and readiness before development starts.
---

# Plan Review

Could someone implement this plan without guessing? Review the plan on its merits, not against your preferred implementation. Check the relevant code and references before raising questions.

Look for:

- a clear goal and the smallest coherent scope
- enough context and concrete direction, without a code dump
- observable acceptance outcomes, including relevant edge cases and failure modes
- implementation steps and acceptance criteria completable before opening the PR, with rollout kept as context
- unresolved assumptions or decisions that could block implementation
- unnecessary complexity, repetition, empty sections, or stale discussion

Assume normal developer checks and CI. Do not request routine validation commands, pass criteria, confirmation, run records, or a validation section. Suggest a special check only for a concrete uncertainty normal checks cannot cover; prefer describing the required outcome over prescribing a command.

Resolve questions from available evidence where possible. Suggest folding resolved answers into the approach and splitting unrelated work into separate plans. Do not modify the plan unless asked. Keep prose unwrapped.

## Report

Give a verdict: **ready**, **ready with nits**, or **not ready**. List only actionable blockers, nits, and genuinely unresolved questions, with the smallest exact edits that would resolve them.
