#!/bin/bash
# PostToolUse hook: play a chime when the Bash command contains "gh pr create".
grep -q '"command" *: *"\([^"\\]\|\\.\)*gh pr create' || exit 0
mpg123 -q "${CLAUDE_PLUGIN_ROOT}/sounds/pr-create.mp3" </dev/null >/dev/null 2>&1 &
exit 0
