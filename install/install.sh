#!/usr/bin/env bash
# Install all Claude Executive Suite skills into ~/.claude/skills
# Safe to re-run: existing skills are updated in place (no nested copies).
set -e
DEST="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
mkdir -p "$DEST"
count=0
for skill_dir in "$(dirname "$0")/../skills"/*/*/; do
  name=$(basename "$skill_dir")
  mkdir -p "$DEST/$name"
  cp -R "${skill_dir%/}/." "$DEST/$name/"
  count=$((count+1))
done
echo "Installed $count skills to $DEST"
