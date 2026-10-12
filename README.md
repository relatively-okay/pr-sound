# pr-sound

Claude Code plugin that plays a chime whenever Claude runs `gh pr create`, and another whenever Claude prints a line `ENDING WORKFLOW PHASE: <NAME>` (the `issue-workflow` skill's phase markers). The `CREATE-PR` phase gets no phase chime, since its PR chime already plays.

## Install

```sh
claude plugin marketplace add relatively-okay/pr-sound && claude plugin install pr-sound@pr-sound
```

## Dependency

```sh
sudo apt install mpg123
```
