---
name: tdd
description: Use test-driven development when implementing logic, fixing bugs, or changing behaviour. Reproduce bugs before fixing them.
---

# Test-Driven Development

Follow RED, GREEN, REFACTOR:

1. Write a focused test and run it to confirm it fails for the expected reason.
2. Make the smallest clear change that passes.
3. Clean up while keeping tests green.

For bugs and behavioural review claims, make sure the test represents the reported scenario. If it passes before the fix, check the reproduction rather than declaring the report wrong.

Match the repository's test framework and conventions. When an automated test is impractical, use another suitable executable check and explain the limitation. Documentation-only changes need no behavioural test.

## Good tests

- Test observable behaviour, not implementation details, unless an interaction is itself the contract.
- Prefer real dependencies; use mocks for slow, unavailable, non-deterministic, or side-effectful dependencies.
- Test one behaviour at a time, with a descriptive name.
- Cover relevant edge cases and failure paths; do not test framework behaviour.
- Allow duplication when it makes tests independently understandable.

Run focused tests during development and the relevant suite after changes. This is development practice, not a requirement to ask for confirmation or record passing runs in plans, reviews, or reports. Report failures or checks you could not perform.
