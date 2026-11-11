# Install all Claude Executive Suite skills into ~/.claude/skills (Windows)
$dest = if ($env:CLAUDE_SKILLS_DIR) { $env:CLAUDE_SKILLS_DIR } else { "$HOME\.claude\skills" }
New-Item -ItemType Directory -Force -Path $dest | Out-Null
$count = 0
Get-ChildItem -Path "$PSScriptRoot\..\skills" -Directory | ForEach-Object {
  Get-ChildItem -Path $_.FullName -Directory | ForEach-Object {
    Copy-Item -Recurse -Force $_.FullName "$dest\$($_.Name)"
    $count++
  }
}
Write-Host "Installed $count skills to $dest"
