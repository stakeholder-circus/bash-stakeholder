# bash-stakeholder

Bash deterministic-first stakeholder rewrite.

Current phase: full local deterministic `classic-six + modern-core` implementation with grouped fallback for later families.

## CLI

```sh
bin/stakeholder --list-values
bin/stakeholder --output-format json --focus-family platform_engineering --seed 123
```

Live provider flags fail fast in this tranche.
