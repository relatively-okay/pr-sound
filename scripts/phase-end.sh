#!/bin/bash
# MessageDisplay hook: play a chime when a displayed line reads "ENDING WORKFLOW PHASE: <NAME>",
# except for CREATE-PR, whose sound play.sh already plays on gh pr create.
phases=$(grep -oE '("delta" *: *"|\\n)[*_`> #-]*ENDING WORKFLOW PHASE: *[*_`]*[A-Z][A-Z0-9-]*' | grep -oE '[A-Z0-9-]+$')
printf '%s\n' "$phases" | grep -qvxE 'CREATE-PR|' || exit 0
mpg123 -q "${CLAUDE_PLUGIN_ROOT}/sounds/onetone.mp3" </dev/null >/dev/null 2>&1 &
exit 0
