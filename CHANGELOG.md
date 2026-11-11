# Changelog

## [1.1.0] - 2026-11-11
### Added
- Claude Code plugin marketplace: install with `/plugin install executive-suite --marketplace Neyam-OpenSc/claude-skills`
- Shared `company/` workspace so skills read and build on each other's output
- Detailed rewrites of 5 flagship skills: `startup-validator`, `pricing-strategist`, `cfo-agent`, `solo-founder-os`, `agent-team-orchestrator`

### Changed
- Rewrote all 55 skill descriptions and trigger phrases so skills load when they should

### Fixed
- Installers no longer create nested skill folders when re-run

## [1.0.0] - 2026-11-11
### Added
- 50 core executive skills across 5 departments (Leadership, Finance, Marketing, Product/Tech, Sales/Ops)
- Meta-orchestration layer: `solo-founder-os`, `agent-team-orchestrator`, `startup-validator`, `prompt-to-profit`, `launch-war-room`
- Install scripts for macOS/Linux (`install.sh`) and Windows (`install.ps1`)
- Docs: Getting Started, Team Playbook, Skill Authoring Guide
