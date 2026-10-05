---
name: simplify
description: "Aggressively simplify prose, plans, docs, and code comments: remove redundant sections and stale detail, use plain words, and cut length without losing decisions or requirements. Use when asked to simplify, tighten, shorten, or make writing clearer. Suggest changes by default; edit files only when asked."
---

# Simplify

Make prose easier to read without losing its meaning. Review only writing, not executable code. When given a code file, focus on comments; leave code, identifiers, and behavior to other tools. Do not treat code structure as a writing problem.

Edit at the document level before polishing sentences. A long document often has room to lose a quarter or more of its words; treat that as a prompt to look harder, not a quota to meet by cutting useful content.

**Work paragraph by paragraph, and state the claim before deciding what to keep.** Write the paragraph's claim as one sentence. Try cutting its support entirely; if that would hide a requirement, a non-obvious reason, evidence for a disputed claim, or a condition someone must act on, keep the shortest version that preserves it. A shorter document is a better document unless readers can no longer trust its conclusions or carry out its decisions.

- **Delete whole sections when they repeat a table, decision, test, or earlier explanation.** Keep each fact where the reader needs it most. Text explaining why something is already fine is the most compressible in any document — the reader needs the verdict, not the mechanism behind it. Cut a paragraph that reports no work is needed to a single sentence: the verdict, plus a condition only if someone must act on it.
- **Keep outcomes, not the story of getting there.** Preserve requirements, reasons for non-obvious decisions, risks, exact contracts, and evidence needed to act. Drop abandoned approaches, implementation trivia, and duplicated measurements unless they explain a decision that would otherwise be questioned. Combine overlapping background, approach, acceptance criteria, and decision history rather than repeating them.
- **Use plain, direct language.** Replace abstract phrases such as "adopt that same derivation with no new shared fixtures" with "use the same test cases" when accurate. Choose familiar words for prose, headings, and labels; use "set" rather than "closure" when the writer just means a group. Keep precise technical terms and code names when changing them would change the meaning.
- **Shorten what remains.** Cut filler, repeated qualifications, throat-clearing, long lead-ins, and roundabout phrasing. Prefer a short statement over a list of reasons that all make the same point.
- **Make wording last.** Remove incidental version numbers, transient status, and details that will go stale; keep exact versions, dates, and caveats when they matter to compatibility, accuracy, or a historical record.

Check both directions afterwards. Against the original: can someone still understand what changes, why, how to verify it, and what remains uncertain? If a cut loses a distinct requirement or a meaningful caveat, restore it in a shorter form. Then re-read every paragraph you kept that runs over about 40 words and ask what the reader loses if it becomes one sentence — if the answer is "the explanation of how it works" and nobody has to act on that, cut it. Do not pad or invent changes just to reach a word-count target.

## Code comments

When reviewing comments and docstrings in a code file, also apply these rules:

- **A comment describes only the code it sits in.** Cut any sentence about what another module, service, or repo does, even when it explains the local choice. Behaviour elsewhere can change without anyone updating this comment.
- **A comment must be readable from the diff alone.** Flag any term the reader would have to look up elsewhere to follow the sentence, such as "locks" in a file that never takes one. Replace it with the concrete fact or drop it.
- **Plain sentences, one idea each.** Rewrite dashed asides, nested clauses, and words like "thereby" as short direct sentences.
- **When asked to make comments clear, edit them.** The suggest-only default below applies to unrequested review, not to a request to fix the comments.

## Response

By default, **suggest** improvements without changing files. For a long document, lead with the largest cuts (including entire sections), then give concrete before → after examples, and estimate the overall reduction rather than offering only a handful of cosmetic nits. Size that estimate by drafting the rewrite, not by adding up the cuts you happened to find. If asked to produce a rewritten version, apply the full pass, not only the examples previously listed; report the before/after word counts and any trade-offs. For code files, edit comments only when explicitly asked; never alter executable code as part of this skill.
