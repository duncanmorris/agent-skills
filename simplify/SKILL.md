---
name: simplify
description: "Make prose, plans, docs, and code comments simpler to read without losing decisions or requirements. Suggest changes by default; edit only when asked."
---

# Simplify

Simple writing is better for everyone. It is easier to read, understand and reason about.

Simple is not the same as short. Twice as many plain words beat half as many dense ones. Never make writing harder to read in order to make it shorter.

Review the writing, not the code. In code files, change only comments and docstrings. Leave identifiers, structure and behaviour alone.

Work at the document level first, then at the sentence level.

Look for duplication and remove it. For each paragraph, identify its claim and ask what the reader loses if only that claim remains. Keep supporting detail only when it preserves a requirement, a non-obvious reason, necessary evidence, or an actionable caveat.

Look for the story of how we got to the final approach. Keep the outcome and the decision. Drop the story unless it explains a choice readers would otherwise question.

Look for new or invented terminology. Check the user is happy with each term. Keep established technical terms when a simpler word would change the meaning.

Look for dense sentences and unpack them. Replace abstract words with concrete ones. Replace a clever phrase with a plain one, even when the plain one is longer.

Cut filler, repeated qualifications, long lead-ins, and lists that make the same point.

Compare the rewrite with the original. Check readers can still understand what changes, why, and any uncertainty or action that matters. Restore anything lost, in plain words.

## Code comments

Describe the local code, not behaviour in another module, service, or repository that may change independently.

Make comments understandable from the diff alone. Replace unexplained terms with concrete facts, or drop them.

Write one idea per sentence. Avoid nested clauses and dashed asides.

## Response

Suggest changes unless asked to edit or rewrite.

Lead with the changes that most improve readability. Give concrete before and after examples.

When editing, apply the full pass and report any trade-offs.
