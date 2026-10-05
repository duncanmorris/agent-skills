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

Clone, then run the setup script. It symlinks both agents' skills directories and their instructions file (`~/.claude/CLAUDE.md` and `~/.pi/agent/AGENTS.md`) at this checkout:

```sh
git clone <this-repo> ~/SearchPilot/code/agent-skills
~/SearchPilot/code/agent-skills/setup-links.sh
```

The script is idempotent: re-run it any time to verify or repair the links, or use `--check` to report without changing anything. It never deletes a real file or directory that is in the way; it tells you and exits non-zero.

Because both tools' paths are symlinks to the same directory, a `git pull` here updates the skills available in both tools immediately, with no copying or syncing step.

## Adding a skill

Create a new directory with a `SKILL.md` and commit it. It is picked up on the
next agent session in both tools.
