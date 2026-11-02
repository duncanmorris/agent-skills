---
name: simplify
description: "Shorten and clarify prose, plans, docs, and code comments without losing decisions or requirements. Suggest changes by default; edit only when asked."
---

# Simplify

Review writing, not executable code. In code files, change only comments and docstrings when asked; leave identifiers, structure, and behaviour alone.

Cut at the document level before polishing sentences. For each paragraph, identify its claim and ask what the reader loses if only that claim remains. Keep supporting detail only when it preserves a requirement, a non-obvious reason, necessary evidence, or an actionable caveat.

- Delete repeated sections and explanations of why nothing needs to change. Keep each fact where the reader needs it.
- Keep outcomes and decisions, not the story of getting there. Drop abandoned approaches and implementation trivia unless they explain a choice readers would otherwise question.
- Combine overlapping background, approach, and acceptance criteria rather than repeating them.
- Use plain, concrete words. Preserve technical terms when a simpler substitute would change the meaning.
- Cut filler, repeated qualifications, long lead-ins, and lists that make the same point.
- Remove transient details unless they matter to compatibility, accuracy, or the historical record.

Compare the rewrite with the original: can readers still understand what changes, why, and any uncertainty or action that matters? Restore distinct requirements or caveats in shorter form. Recheck long paragraphs for explanations nobody needs to act on. Do not cut useful content to meet a word-count target.

## Code comments

- Describe the local code, not behaviour in another module, service, or repository that may change independently.
- Make comments understandable from the diff; replace unexplained terms with concrete facts or drop them.
- Use plain sentences with one idea each; avoid nested clauses and dashed asides.

## Response

Suggest changes unless asked to edit or rewrite. Lead with the largest cuts, give concrete before → after examples, and estimate the reduction from a drafted rewrite, not just isolated nits. When editing, apply the full pass and report before/after word counts and meaningful trade-offs. Keep Markdown prose unwrapped.
