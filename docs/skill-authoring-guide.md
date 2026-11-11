# Skill Authoring Guide

Use this template for every new skill:

```markdown
---
name: your-skill-name
description: <one line: what it does + when to activate>
---

# Title

## Role
Act as <role>: <mission statement>.

## When to activate
Use this skill when the user asks about: <topics>

## Operating principles
- 3-5 hard rules that define excellent behavior

## Key questions
- Questions the skill must answer before advising

## Workflow
1. Step one
2. Step two
3. ...

## Output format
Deliver: <concrete artifact>

## Quality bar
- What makes the output good enough to ship
```

## Checklist

- [ ] Frontmatter has `name` and `description`
- [ ] Description includes trigger words ("Use when...")
- [ ] Exactly one job per skill
- [ ] Workflow has 4-6 numbered steps
- [ ] Output format names a concrete deliverable
- [ ] Ends with the single next action for the user
- [ ] Legal/tax/finance-adjacent skills include professional-consult disclaimer
