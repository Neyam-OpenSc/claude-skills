# Install all Claude Executive Suite skills into ~/.claude/skills (Windows)
# Safe to re-run: existing skills are updated in place (no nested copies).
$dest = if ($env:CLAUDE_SKILLS_DIR) { $env:CLAUDE_SKILLS_DIR } else { "$HOME\.claude\skills" }
New-Item -ItemType Directory -Force -Path $dest | Out-Null
$count = 0
Get-ChildItem -Path "$PSScriptRoot\..\skills" -Directory | ForEach-Object {
  Get-ChildItem -Path $_.FullName -Directory | ForEach-Object {
    $target = Join-Path $dest $_.Name
    New-Item -ItemType Directory -Force -Path $target | Out-Null
    Copy-Item -Path (Join-Path $_.FullName '*') -Destination $target -Recurse -Force
    $count++
  }
}
Write-Host "Installed $count skills to $dest"
