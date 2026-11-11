# claude-skills

A collection of prompts and skills for Claude.

## Contents

| File | What it does |
|------|--------------|
| [`ceo.txt`](ceo.txt) | **CEO Deep Research Mode**: makes Claude act as a CEO and strategic research lead. It evaluates any software, tool, or strategy through a 4-pillar framework (Business & Financial, Technical, User Adoption, Competitive Positioning) and answers in an executive-ready BLUF format. |

## How to use `ceo.txt`

### Option 1: Claude.ai (chat)

1. Open [claude.ai](https://claude.ai) and start a new chat.
2. Paste the full contents of `ceo.txt` as your first message.
3. Then ask your question, for example:
   > Should we migrate our analytics stack from Mixpanel to PostHog?

To keep it on for every chat, create a **Project** and paste `ceo.txt` into the project's **custom instructions**. Every conversation in that project will then use CEO mode automatically.

### Option 2: Claude Code (as a skill)

Turn the prompt into a reusable skill that Claude Code loads when it's relevant:

```bash
# Personal skill (available in every project)
mkdir -p ~/.claude/skills/ceo-research
```

Create `~/.claude/skills/ceo-research/SKILL.md` with a short frontmatter header followed by the contents of `ceo.txt`:

```markdown
---
name: ceo-research
description: CEO-level deep research and strategic evaluation of software, tools, vendors, or technology strategy using a 4-pillar framework with a BLUF executive summary.
---

<paste the contents of ceo.txt here>
```

Then in Claude Code, either ask a strategy question naturally ("Evaluate Supabase vs Firebase for our startup") or invoke it directly with `/ceo-research`.

> To share it with a team, put the skill in the repo at `.claude/skills/ceo-research/SKILL.md` instead and commit it.

### Option 3: Claude API (system prompt)

Pass the file contents as the `system` prompt:

```python
import anthropic
from pathlib import Path

client = anthropic.Anthropic()
system_prompt = Path("ceo.txt").read_text(encoding="utf-8")

response = client.messages.create(
    model="claude-opus-5-5",
    max_tokens=4096,
    system=system_prompt,
    messages=[{"role": "user", "content": "Evaluate Snowflake vs Databricks for a mid-size fintech."}],
)
print(response.content[0].text)
```

## What you get back

Every answer in CEO mode follows this structure:

1. **Executive Summary (BLUF)**: the recommendation in 1–2 sentences
2. **Strategic Context**: why it matters now
3. **Deep Dive Analysis**: business impact, technical viability, user reality, competitive landscape
4. **Actionable Next Steps**: 2–3 actions with suggested owners
5. **Risk & Mitigation**: the biggest threat and how to get ahead of it

## Tips

- Give context such as company size, budget, current stack, and goals. The prompt tells Claude to ask 1–2 clarifying questions when key data is missing.
- Results are best with web search enabled (Claude.ai research or tools), because the prompt asks Claude to cross-check vendor claims against reviews and market data.
