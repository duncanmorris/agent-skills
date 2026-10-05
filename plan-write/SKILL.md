---
name: plan-write
description: Writes implementation plans for any repository. Use when you need to turn a task, feature request, bug, or refactor into a short clear plan with goals, context, approach, acceptance criteria, risks, and validation steps before development starts.
---

# Plan Write

Write the shortest plan that lets someone else implement the change with low ambiguity. Inspect the relevant repository guidance, code, tests, tickets, documentation, and prior plans before drafting. Restate the problem simply and choose the smallest approach that solves it; if the approach feels complex, first ask whether a smaller change solves the real problem.

Describe decisions that affect scope, architecture, or implementation strategy, but omit incidental implementation detail and code unless needed for clarity. Make acceptance criteria observable outcomes rather than implementation tasks or statements such as "works correctly." Do not include routine post-push CI success as an acceptance criterion: CI is a PR merge gate, and ticking the criterion afterward would require another commit and CI run. Mention change-specific validation commands only when useful, outside the acceptance checklist, and cover relevant edge cases or failure modes.

Omit empty sections. Put deliberate exclusions in the approach. Include risks and open questions only for unresolved uncertainty, and fold resolved answers into the background or approach. Preserve a short Decision History only when an earlier decision or rejected idea teaches something useful.

Do not hard-wrap prose paragraphs. Follow the repository's plan naming and location conventions. Always write the completed plan into the repository rather than only returning it in chat; when no convention exists, use `docs/plans/<kebab-case-title>.md`.

## Suggested structure

```md
# <Title>

## Goal

One or two sentences on what is changing and why.

## Background

Context, references, and relevant assumptions.

## Approach

The implementation strategy and anything explicitly out of scope.

## Acceptance Criteria

- [ ] <observable outcome>
- [ ] <observable edge-case outcome>

## Risks / Open Questions *(omit if none)*

- <unresolved uncertainty or hidden assumption>

## Decision History *(omit if none)*

- <instructive resolved decision or rejected idea>
```

Report the written plan's path and mention only assumptions or confirmations that still require attention.
