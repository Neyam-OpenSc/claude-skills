# Contributing to Claude Executive Suite

Thanks for helping build the AI executive team. 🙌

## Adding a new skill

1. Copy `docs/skill-authoring-guide.md` as your template.
2. Create `skills/<category>/<your-skill>/SKILL.md`.
3. Follow the naming: lowercase, hyphenated, max 3 segments.
4. Include the YAML frontmatter (`name`, `description`) — the description must say **what it does** and **when to activate**.
5. Keep skills focused: one seat, one job. If it does everything, it belongs in `06-meta-orchestration/`.

## Improving an existing skill

- Make prompts more concrete, not longer.
- Add workflows, templates, and quality bars — not fluff.
- Test the skill in Claude before submitting.

## Rules

- No AI-hype filler ("revolutionary", "game-changing"). Operators only.
- Every skill must end with a concrete output format.
- Legal/tax/medical-adjacent skills must include a "consult a professional" disclaimer.
