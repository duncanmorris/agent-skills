#!/usr/bin/env sh
# Ensure Claude Code and pi both point at this checkout for skills and AGENTS.md.
#
# Idempotent: correct links are left alone, missing links are created, and links
# pointing elsewhere are repointed. A real file or directory in the way is never
# deleted; the script reports it and exits non-zero so you can resolve it by hand.
#
# Usage: ./setup-links.sh [--check]
#   --check   report only, make no changes (exit 1 if anything is wrong)

set -eu

REPO=$(cd "$(dirname "$0")" && pwd -P)
CHECK=0
[ "${1:-}" = "--check" ] && CHECK=1
STATUS=0

# ensure_link TARGET LINK
ensure_link() {
  target=$1
  link=$2

  if [ -L "$link" ]; then
    current=$(readlink "$link")
    if [ "$current" = "$target" ]; then
      echo "ok       $link -> $target"
      return
    fi
    if [ "$CHECK" = 1 ]; then
      echo "WRONG    $link -> $current (want $target)"
      STATUS=1
      return
    fi
    rm "$link"
    ln -s "$target" "$link"
    echo "fixed    $link -> $target (was $current)"
    return
  fi

  if [ -e "$link" ]; then
    echo "BLOCKED  $link exists and is not a symlink; move it aside and re-run"
    STATUS=1
    return
  fi

  if [ "$CHECK" = 1 ]; then
    echo "MISSING  $link -> $target"
    STATUS=1
    return
  fi

  mkdir -p "$(dirname "$link")"
  ln -s "$target" "$link"
  echo "created  $link -> $target"
}

echo "Repo: $REPO"
echo
echo "Claude Code"
ensure_link "$REPO"           "$HOME/.claude/skills"
ensure_link "$REPO/AGENTS.md" "$HOME/.claude/CLAUDE.md"
echo
echo "pi"
ensure_link "$REPO"           "$HOME/.pi/agent/skills"
ensure_link "$REPO/AGENTS.md" "$HOME/.pi/agent/AGENTS.md"

exit $STATUS
