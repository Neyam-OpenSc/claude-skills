#!/usr/bin/env bash
# Install all Claude Executive Suite skills into ~/.claude/skills
set -e
DEST="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
mkdir -p "$DEST"
count=0
for skill_dir in "$(dirname "$0")/../skills"/*/*/; do
  name=$(basename "$skill_dir")
  cp -r "$skill_dir" "$DEST/$name"
  count=$((count+1))
done
echo "Installed $count skills to $DEST"
