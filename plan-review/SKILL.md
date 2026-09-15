---
name: plan-review
description: Reviews implementation plans for any repository. Use when you want to check whether a plan is clear, appropriately scoped, testable, and ready for development before implementation begins.
---

# Plan Review

Judge one thing: could someone implement this plan with low ambiguity and low review risk? Review it for clarity, scope, and readiness rather than whether it matches your preferred implementation. Keep feedback specific and actionable.

Check that:

- the goal and scope are clear, and no simpler version would solve the same problem
- the implementer has the necessary context and all references are present and valid
- the approach is concrete enough to guide work without becoming a code dump, with assumptions named
- acceptance criteria describe specific, testable outcomes rather than implementation tasks
- relevant edge cases and failure modes are covered
- validation expectations match what the repository actually uses
- the plan is one coherent change; if not, identify exactly where to split it and what each resulting plan covers
- every section earns its place, without empty sections or resolved discussion
- prose paragraphs are not hard-wrapped

Push back specifically on unnecessary complexity and hidden scope expansion. Resolve what can be answered from repository code, documentation, and other available evidence; leave only questions that require user or product decisions. Propose exact edits that fold resolved answers into the background or approach, remove resolved questions, and retain decision history only when it helps the implementer. Do not modify the plan unless the user asks.

## Report

Give a verdict — ready, ready with nits, or not ready — with concise blockers, nits, and genuinely unresolved questions. If the plan is close, provide the smallest exact edits that would make it ready.
