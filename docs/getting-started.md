# Getting Started

## What is a skill?

A skill is a `SKILL.md` file in `~/.claude/skills/<name>/`. Claude reads it when your request matches its `description`, then adopts its role, workflow, and output format.

## Install everything as a plugin (recommended)

In Claude Code:

```
/plugin install executive-suite --marketplace Neyam-OpenSc/claude-skills-executive-suite
```

On older Claude Code versions: `/plugin marketplace add Neyam-OpenSc/claude-skills-executive-suite`, then `/plugin install executive-suite@claude-skills-executive-suite`.

Skills then run as `/executive-suite:<skill-name>`, or load automatically when your request matches them.

## Install one skill

```bash
mkdir -p ~/.claude/skills
cp -r skills/02-finance/unit-economics-expert ~/.claude/skills/
```

Restart Claude (or start a new session), then say:

> "Compute my unit economics: $400 CAC, $29/mo plan, 4% monthly churn, 80% gross margin."

Claude activates the skill and runs its workflow.

## Install everything without the plugin

Copy all skill folders (plain `/cfo-agent` names). Run the same commands again later to update.

```bash
# macOS / Linux, from the cloned repo
mkdir -p ~/.claude/skills
cp -R skills/*/* ~/.claude/skills/
```

```powershell
# Windows PowerShell, from the cloned repo
New-Item -ItemType Directory -Force "$HOME\.claude\skills" | Out-Null
Copy-Item -Path skills\*\* -Destination "$HOME\.claude\skills" -Recurse -Force
```

## Tips

- **Be specific about the seat:** "As CFO, review my runway" beats "help with money".
- **Feed real numbers:** these skills are only as good as the data you give them.
- **Chain them:** see the [Team Playbook](team-playbook.md).
