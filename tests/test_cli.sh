#!/usr/bin/env bash
set -euo pipefail
bin=${1:-bin/stakeholder}
"$bin" --list-values | grep -q 'code-analyzer'
"$bin" --output-format json --focus-family code_analyzer --seed 123 | grep -q '"family":"code-analyzer"'
"$bin" --output-format json --focus-family platform_engineering --seed 987 >/tmp/bash-platform-a.json
"$bin" --output-format json --focus-family platform_engineering --seed 987 >/tmp/bash-platform-b.json
diff -u /tmp/bash-platform-a.json /tmp/bash-platform-b.json
"$bin" --output-format json --focus-family fhir_profile_generator --seed 7 | grep -q 'grouped-fallback'
if "$bin" --experimental-provider local-demo >/tmp/bash-provider.out 2>&1; then
	cat /tmp/bash-provider.out
	exit 1
fi
grep -Eiq 'experimental|provider|fail-fast' /tmp/bash-provider.out
