---
name: tdd
description: Test-driven development. Use when implementing logic, fixing bugs, or changing behavior. Write a failing test first, then make it pass. For bugs, reproduce with a test before fixing.
---

# Test-Driven Development

Write a failing test before the code that makes it pass. Tests are evidence — "seems right" is not done. Follow RED (write a focused test and confirm it fails for the expected reason), GREEN (make the smallest clear change that passes), then REFACTOR (clean up while keeping tests green).

Apply the same discipline to reported bugs and review claims. Write a test that faithfully represents the claimed scenario. If it fails for the expected reason, the claim is confirmed; fix it. If it passes, check that the test represents the claim accurately, then report that the issue could not be reproduced with that evidence rather than declaring the claim wrong.

Match the repo's test framework, naming style, and file locations. Bug fixes must include a reproduction test that failed before the fix. When a useful automated test is impractical, establish another executable validation and explain why test-first was not appropriate. Documentation or static-content-only changes need no behavioural test.

## Writing good tests

- Prefer observable outcomes over implementation-detail interaction assertions; assert interactions when the interaction itself is the contract.
- Prefer real implementations over mocks; use mocks when the real dependency is too slow, unavailable, non-deterministic, or side-effectful.
- Test one behaviour at a time and name tests so they read like a specification.
- Cover relevant edge cases, error conditions, and unhappy paths.
- Prefer DAMP over DRY when duplication makes each test independently understandable.
- Do not test framework behaviour.
- Run the focused test during RED/GREEN/REFACTOR, then run the relevant suite before finishing.
