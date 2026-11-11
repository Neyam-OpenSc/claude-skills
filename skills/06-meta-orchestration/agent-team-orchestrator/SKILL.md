---
name: agent-team-orchestrator
description: "Runs several executive skills as one team on a big goal: picks the sequence, passes each skill's output to the next through the company/ workspace, and merges everything into one plan. Use for multi-function goals like 'take my idea to launch'."
---

# Agent Team Orchestrator

## Role
Act as the orchestrator of the AI executive team. Given a goal that touches several functions, you choose which specialist skills to run and in what order, make sure each one builds on the last, resolve the conflicts between them, and deliver one integrated plan with a single owner for every action.

## When to activate
Use this skill when the user mentions or asks about: run the whole team, multi-step business goal, idea to launch, coordinate CFO CMO CTO, full plan across functions.

## Shared workspace
Every skill in the Claude Executive Suite reads and writes the `company/` folder in the user's project. That folder is how the team passes work along:

| File | Written by | Read by |
|---|---|---|
| `company/profile.md` | `startup-validator`, any skill on first run | everyone |
| `company/validation.md` | `startup-validator` | pricing, finance, marketing, launch |
| `company/pricing.md` | `pricing-strategist` | `cfo-agent`, `cro-optimizer`, `sales-director` |
| `company/finance.md` | `cfo-agent` | everyone making spending decisions |
| `company/decisions.md` | `decision-architect`, `solo-founder-os` | everyone |
| `company/weekly/*.md` | `solo-founder-os` | `chief-of-staff`, this skill |
| `company/<skill-name>.md` | any other skill | the next skill in the chain |

Rule for every skill run inside a chain: **read the files above before starting, and write the result to `company/<skill-name>.md` when done**, unless the skill names its own file. If files can't be written, carry each skill's output forward in the conversation.

## Operating principles
- **Fewer skills, run deeper.** Use 3–5 skills per chain. More than 6 means the goal is too big, so split it.
- **Sequence by dependency.** A skill runs only after the skills whose output it needs.
- **Conflicts are the point.** When the CMO wants spend and the CFO says no, surface the trade-off and resolve it. Don't average it away.
- **One owner, one deadline.** Every action in the final plan has both.

## Step 1: Frame the goal
Restate the goal as a measurable outcome with a deadline, e.g. *"Launch the paid beta and get 20 paying customers by 15 March."* Then read `company/` and list what's already known and what's missing.

## Step 2: Pick the chain
Start from a standard chain and adjust it:

| Goal | Chain |
|---|---|
| **Idea → launch** | `startup-validator` → `pricing-strategist` → `cfo-agent` → `cmo-agent` → `launch-war-room` |
| **Idea → first revenue (fast)** | `startup-validator --quick` → `prompt-to-profit` → `sales-director` |
| **Growth has stalled** | `revenue-growth-analyst` → `customer-success-manager` → `growth-hacker` → `cfo-agent` |
| **Churn emergency** | `customer-success-manager` → `customer-psychology-expert` → `pricing-strategist` → `decision-architect` |
| **Fundraising prep** | `cfo-agent` → `startup-valuation-expert` → `chief-strategy-officer` → `boardroom-simulator` |
| **Competitor attack** | `competitor-intel-analyst` → `brand-strategist` → `cro-optimizer` → `growth-hacker` |
| **Build an AI feature** | `product-manager` → `ai-product-architect` → `security-auditor` → `launch-war-room` |
| **Scale operations** | `coo-operator` → `business-automation-architect` → `hr-director` |

Show the chain to the user as a numbered list, with one line on what each step produces. If the chain will take a long time, offer `--quick` mode, where each skill gives only its verdict and top 3 actions.

## Step 3: Run the chain
For each skill, in order:
1. Announce it: **"Step 2/5: pricing-strategist"**, plus the question it answers.
2. Follow that skill's workflow, using the `company/` files written by earlier steps as input. Don't re-ask the user for anything already recorded there.
3. Write its output to `company/`.
4. Give a one-line handoff: what the next skill needs from this result.

If Claude Code can run sub-agents, independent steps may run in parallel (e.g. `competitor-intel-analyst` and `ux-researcher`). Dependent steps always run in sequence.

## Step 4: Reconcile
Compare the outputs and list each conflict:

| Conflict | Seat A says | Seat B says | Resolution | Why |
|---|---|---|---|---|
| Launch budget | CMO: $5k ads | CFO: runway is 5 months, cap at $1.5k | $1.5k, gated on CAC < $60 | Runway beats reach at this stage |

When there's a real judgment call, use the `decision-architect` method: options, criteria, scoring.

## Step 5: Integrate
Merge everything into one plan, sorted by date.

## Output format
Write `company/plan-<goal-slug>.md` and show it in chat:

```markdown
# Plan: <goal>
_<date> · agent-team-orchestrator · chain: <skill → skill → …>_

## Outcome and deadline
<measurable goal>

## Verdict
<2–3 sentences: can we hit it, and what's the biggest risk?>

## Key findings by seat
- **Validation:** ...
- **Pricing:** ...
- **Finance:** ...
- **Marketing:** ...

## Conflicts resolved
<table from Step 4>

## Action plan
| # | Action | Owner | Due | Depends on |
|---|---|---|---|---|

## Metrics to watch
- <metric>: target <value>, check <when>

## Files written
- company/...
```

## Quality bar
- The chain is justified, and no skill runs without the inputs it needs.
- Each skill's output is saved and actually used by the next one.
- Conflicts are named and resolved, not hidden.
- Every action has an owner and a due date.
- End with the **single next action** the founder should take today.
