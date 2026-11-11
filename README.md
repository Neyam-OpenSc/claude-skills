# 🏢 Claude Executive Suite

**55 production-ready Claude Skills that turn Claude into your entire virtual executive team** — CEO, CFO, CTO, CMO, COO, CPO, CSO, Chief of Staff, plus a meta-orchestration layer for solo founders.

![banner](assets/banner.svg)

## Why

You don't need 50 disconnected prompts. You need a **team**: specialists who each do one job excellently, coordinated by an orchestration layer. This repo gives you both.

## The AI Executive Team

| Seat | Skill(s) | Function |
|---|---|---|
| 👔 CEO | `ceo-advisor`, `decision-architect`, `chief-strategy-officer` | Direction & hard calls |
| 📋 Chief of Staff | `chief-of-staff`, `solo-founder-os`, `agent-team-orchestrator` | Coordination & execution |
| 💰 CFO | `cfo-agent`, `unit-economics-expert`, `cash-flow-manager`, ... | Money & survival |
| 💻 CTO | `cto-agent`, `ai-product-architect`, `security-auditor`, ... | Technology |
| 📣 CMO | `cmo-agent`, `growth-hacker`, `cro-optimizer`, ... | Growth |
| ⚙️ COO | `coo-operator`, `business-automation-architect`, `crisis-management-officer` | Operations |
| 📦 CPO | `product-manager`, `ux-researcher`, `startup-validator` | Product |
| 🤝 CSO | `sales-director`, `customer-success-manager`, `negotiation-expert` | Revenue & customers |

## Install

**macOS / Linux:**
```bash
git clone https://github.com/YOUR_USERNAME/claude-executive-suite.git
cd claude-executive-suite
bash install/install.sh
```

**Windows (PowerShell):**
```powershell
git clone https://github.com/YOUR_USERNAME/claude-executive-suite.git
cd claude-executive-suite
powershell -ExecutionPolicy Bypass -File install/install.ps1
```

Or manually: copy any folder from `skills/` into `~/.claude/skills/`.

## Quick start

Try these one-liners after install:

```
"Use startup-validator on my idea: an AI meal planner for gym beginners"
"Run launch-war-room for my SaaS launching next Monday"
"As solo-founder-os, plan my week: fix churn, ship v2, close 2 deals"
```

## Skill catalog

| Category | Count | Folder |
|---|---|---|
| Executive Leadership | 10 | `skills/01-executive-leadership/` |
| Finance & BI | 10 | `skills/02-finance/` |
| Marketing & Growth | 10 | `skills/03-marketing-growth/` |
| Product & Technology | 10 | `skills/04-product-technology/` |
| Sales & Operations | 10 | `skills/05-sales-operations/` |
| Meta-Orchestration ⭐ | 5 | `skills/06-meta-orchestration/` |

**Build first:** `solo-founder-os`, `startup-validator`, `agent-team-orchestrator`, `ai-product-architect`, `pricing-strategist`.

## Repo layout

```
skills/<category>/<skill-name>/SKILL.md   # one folder per skill
docs/                                      # guides & playbooks
install/                                   # one-command installers
assets/                                    # banner & demos
```

## Docs

- [Getting Started](docs/getting-started.md)
- [Team Playbook — chaining skills](docs/team-playbook.md)
- [Authoring Guide — add your own skill](docs/skill-authoring-guide.md)

## Contributing

PRs welcome! See [CONTRIBUTING.md](CONTRIBUTING.md). Add your skill under the right `skills/` category following the [authoring guide](docs/skill-authoring-guide.md).

## License

MIT — see [LICENSE](LICENSE).
