# agent-skills

Shared agent skills, used by both [pi](https://github.com/badlogic/pi-mono) and
[Claude Code](https://claude.com/claude-code). Both tools read the same
`<skill-name>/SKILL.md` format, so a single checkout serves both.

## Layout

Each skill is a directory containing a `SKILL.md` with YAML frontmatter:

```markdown
---
name: tdd
description: Test-driven development. Use when implementing logic, fixing bugs...
---

# Test-Driven Development

...
```

The `description` is what the agent uses to decide whether a skill is relevant,
so keep it specific about *when* to reach for the skill, not just what it does.

Skills may include supporting files (references, scripts, templates) alongside
`SKILL.md`; reference them by relative path from within the skill body.

## Installation on a new machine

Clone, then symlink both agent config directories at this checkout:

```sh
git clone <this-repo> ~/SearchPilot/code/agent-skills
ln -s ~/SearchPilot/code/agent-skills ~/.pi/agent/skills
ln -s ~/SearchPilot/code/agent-skills ~/.claude/skills
```

Because both paths are symlinks to the same directory, a `git pull` here updates
the skills available in both tools immediately — no copying or syncing step.

## Adding a skill

Create a new directory with a `SKILL.md` and commit it. It is picked up on the
next agent session in both tools.
