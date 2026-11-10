#!/usr/bin/env bash
cd "$HOME/ansible-lab" || exit 1
source "$HOME/ansible-venv/bin/activate"

PASS=0
FAIL=0

check() {
  local desc="$1"; shift
  if "$@" >/dev/null 2>&1; then
    printf 'PASS  %s\n' "$desc"
    PASS=$((PASS+1))
  else
    printf 'FAIL  %s\n' "$desc"
    FAIL=$((FAIL+1))
  fi
}
