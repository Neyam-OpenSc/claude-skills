# 🏢 Claude Executive Suite: 55 Claude Skills for an AI Executive Team (CEO, CFO, CTO, CMO)

> **55 ready-to-use Claude Skills (`SKILL.md`) for [Claude Code](https://claude.com/claude-code) and [Claude AI](https://claude.ai) that turn Claude into a virtual C-suite**: an AI CEO, CFO, CTO, CMO, COO, CPO, CSO and Chief of Staff, plus a meta-orchestration layer built for **solo founders**, **startups** and **small teams**.

![Claude Skills](https://img.shields.io/badge/Claude-Skills-orange)
![Claude Code](https://img.shields.io/badge/Claude%20Code-compatible-blue)
![Skills](https://img.shields.io/badge/skills-55-brightgreen)
![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)

![Claude Executive Suite banner](assets/banner.svg)

---

## Table of Contents

- [What is Claude Executive Suite?](#what-is-claude-executive-suite)
- [The AI executive team](#the-ai-executive-team)
- [Install Claude skills](#install-claude-skills)
- [Quick start](#quick-start)
- [Skill catalog (all 55 Claude skills)](#skill-catalog-all-55-claude-skills)
- [Use cases](#use-cases)
- [Repository layout](#repository-layout)
- [Documentation](#documentation)
- [FAQ](#faq)
- [Contributing](#contributing)
- [License](#license)

---

## What is Claude Executive Suite?

You don't need 50 disconnected prompts. You need a **team**: specialist **AI agents** that each do one job well, coordinated by an **orchestration layer**. This repository gives you both.

Each skill is a self-contained `SKILL.md` file with YAML frontmatter (`name`, `description`). **Claude Code** loads a skill automatically when your request matches it, or you can call it by name. It works as:

- an **AI business advisor** for strategy, finance, marketing, product and sales,
- a **virtual executive team** for solo founders with no employees,
- a **prompt engineering library** you can reuse in Claude.ai Projects or the Claude API.

---

## The AI executive team

| Seat | Skill(s) | Function |
|---|---|---|
| 👔 **AI CEO** | `ceo-advisor`, `decision-architect`, `chief-strategy-officer` | Direction, strategy and hard calls |
| 📋 **AI Chief of Staff** | `chief-of-staff`, `solo-founder-os`, `agent-team-orchestrator` | Coordination and execution |
| 💰 **AI CFO** | `cfo-agent`, `unit-economics-expert`, `cash-flow-manager`, ... | Finance, runway and survival |
| 💻 **AI CTO** | `cto-agent`, `ai-product-architect`, `security-auditor`, ... | Technology and architecture |
| 📣 **AI CMO** | `cmo-agent`, `growth-hacker`, `cro-optimizer`, ... | Marketing and growth |
| ⚙️ **AI COO** | `coo-operator`, `business-automation-architect`, `crisis-management-officer` | Operations |
| 📦 **AI CPO** | `product-manager`, `ux-researcher`, `startup-validator` | Product |
| 🤝 **AI CSO** | `sales-director`, `customer-success-manager`, `negotiation-expert` | Revenue and customers |

---

## Install Claude skills

### Option 1: Claude Code plugin marketplace (recommended, one command)

In Claude Code, run:

```
/plugin install executive-suite --marketplace Neyam-OpenSc/claude-skills
```

On older versions of Claude Code, use two steps instead:

```
/plugin marketplace add Neyam-OpenSc/claude-skills
/plugin install executive-suite@claude-skills
```

You get all 55 skills, and `/plugin update` keeps them current. Plugin skills are namespaced, so they appear as `/executive-suite:cfo-agent`, `/executive-suite:startup-validator` and so on. You can also just describe what you need, and Claude loads the right skill automatically.

### Option 2: Ask Claude to install it

Paste this into Claude Code:

```
https://github.com/Neyam-OpenSc/claude-skills

install skill
```

### Option 3: Install script (plain `/cfo-agent` names, no namespace)

The installers copy every skill into `~/.claude/skills/` (set `CLAUDE_SKILLS_DIR` to change the location). They're safe to re-run to update.

**macOS / Linux:**
```bash
git clone https://github.com/Neyam-OpenSc/claude-skills.git
cd claude-skills
bash install/install.sh
```

**Windows (PowerShell):**
```powershell
git clone https://github.com/Neyam-OpenSc/claude-skills.git
cd claude-skills
powershell -ExecutionPolicy Bypass -File install/install.ps1
```

**Manual install:** copy any skill folder from `skills/<category>/` into `~/.claude/skills/`.

**Team install:** copy skills into `.claude/skills/` inside your project repo and commit them, so everyone on the team gets the same skills.

**Claude.ai / Claude API:** open any `SKILL.md`, then paste its contents into a **Claude Project's custom instructions** or pass it as the **system prompt**.

---

## Quick start

After installing, try these in Claude Code:

```
"Use startup-validator on my idea: an AI meal planner for gym beginners"
"Run launch-war-room for my SaaS launching next Monday"
"As solo-founder-os, plan my week: fix churn, ship v2, close 2 deals"
```

---

## Skill catalog (all 55 Claude skills)

| Category | Count | Skills |
|---|---|---|
| **Executive Leadership** ([`skills/01-executive-leadership/`](skills/01-executive-leadership/)) | 10 | `boardroom-simulator`, `business-architect`, `ceo-advisor`, `chief-innovation-officer`, `chief-of-staff`, `chief-strategy-officer`, `coo-operator`, `crisis-management-officer`, `decision-architect`, `founder-mode` |
| **Finance & Business Intelligence** ([`skills/02-finance/`](skills/02-finance/)) | 10 | `cash-flow-manager`, `cfo-agent`, `financial-controller`, `financial-risk-auditor`, `investment-analyst`, `pricing-strategist`, `revenue-growth-analyst`, `startup-valuation-expert`, `tax-strategy-advisor`, `unit-economics-expert` |
| **Marketing & Growth** ([`skills/03-marketing-growth/`](skills/03-marketing-growth/)) | 10 | `aso-specialist`, `brand-strategist`, `cmo-agent`, `content-director`, `cro-optimizer`, `growth-hacker`, `performance-marketing-analyst`, `seo-director`, `social-media-manager`, `viral-marketing-expert` |
| **Product & Technology** ([`skills/04-product-technology/`](skills/04-product-technology/)) | 10 | `ai-product-architect`, `cto-agent`, `devops-engineer`, `product-manager`, `qa-director`, `security-auditor`, `senior-code-reviewer`, `technical-architect`, `technical-debt-manager`, `ux-researcher` |
| **Sales & Operations** ([`skills/05-sales-operations/`](skills/05-sales-operations/)) | 10 | `business-automation-architect`, `competitor-intel-analyst`, `customer-psychology-expert`, `customer-success-manager`, `exit-strategy-advisor`, `hr-director`, `legal-ops-advisor`, `market-research-director`, `negotiation-expert`, `sales-director` |
| **Meta-Orchestration** ⭐ ([`skills/06-meta-orchestration/`](skills/06-meta-orchestration/)) | 5 | `agent-team-orchestrator`, `launch-war-room`, `prompt-to-profit`, `solo-founder-os`, `startup-validator` |

**Start with:** `solo-founder-os`, `startup-validator`, `agent-team-orchestrator`, `ai-product-architect`, `pricing-strategist`.

---

## Use cases

- **Startup idea validation:** test demand, competition and willingness to pay before you build.
- **Fundraising and valuation:** model valuation, unit economics and investor readiness.
- **Pricing strategy:** design SaaS pricing tiers and packaging.
- **Go-to-market and product launch:** run a launch war room across marketing, sales and product.
- **SEO, content and growth marketing:** plan SEO, content and paid acquisition.
- **Software architecture and code review:** get CTO-level architecture, security audits and tech-debt plans.
- **Sales and negotiation:** build pipelines, scripts and negotiation strategy.
- **Solo founder productivity:** plan your week with a virtual management team.

---

## Repository layout

```
skills/<category>/<skill-name>/SKILL.md   # one folder per Claude skill
docs/                                      # guides and playbooks
install/                                   # one-command installers (bash + PowerShell)
assets/                                    # banner and demos
```

---

## Documentation

- [Getting Started](docs/getting-started.md)
- [Team Playbook: chaining Claude skills together](docs/team-playbook.md)
- [Skill Authoring Guide: write your own Claude skill](docs/skill-authoring-guide.md)
- [Changelog](CHANGELOG.md)

---

## FAQ

### What are Claude Skills?
Claude Skills are folders with a `SKILL.md` file that give Claude specialized instructions. **Claude Code** reads each skill's `description` and loads the skill when your request matches it.

### Do these skills work in Claude.ai or only in Claude Code?
They are built for **Claude Code**, but every `SKILL.md` is plain Markdown. You can paste one into a **Claude.ai Project** or use it as a **system prompt** with the **Anthropic API**.

### Can I chain multiple skills together?
Yes. The meta-orchestration skills (`agent-team-orchestrator`, `solo-founder-os`, `launch-war-room`) coordinate several executive skills at once. See the [Team Playbook](docs/team-playbook.md).

### Are the finance, tax and legal skills professional advice?
No. Skills that touch legal, tax or financial matters include a "consult a professional" disclaimer. Use them for analysis and preparation, not as a replacement for licensed advice.

### How do I add my own skill?
Follow the [Skill Authoring Guide](docs/skill-authoring-guide.md) and [CONTRIBUTING.md](CONTRIBUTING.md).

---

## Contributing

PRs are welcome. See [CONTRIBUTING.md](CONTRIBUTING.md). Add your skill under the right `skills/` category, following the [authoring guide](docs/skill-authoring-guide.md).

---

## License

MIT. See [LICENSE](LICENSE).

---

**Keywords:** Claude skills, Claude Code skills, SKILL.md, Anthropic Claude, AI executive team, AI CEO, AI CFO, AI CTO, AI CMO, virtual C-suite, AI business advisor, AI agents for startups, solo founder tools, startup validation, prompt engineering, Claude prompts, multi-agent orchestration, AI co-founder
