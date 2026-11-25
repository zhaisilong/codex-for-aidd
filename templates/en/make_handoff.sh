#!/usr/bin/env bash
# Build a hand-off package hand_off/vYYYY-MM-DD/: README.md, meta.json, key files.
# Copy into your project's scripts/ and edit FILES. Run from the project root.
set -euo pipefail

TAG="v$(date +%Y-%m-%d)"
OUT="hand_off/${TAG}"
mkdir -p "${OUT}"

# 1. Key files to include (edit for your project)
FILES=(
  "CHANGELOG.md"
  "VALIDATION.md"
  "docs/plan.md"
)
for f in "${FILES[@]}"; do
  if [ -f "$f" ]; then
    cp "$f" "${OUT}/"
  else
    echo "skip (not found): $f"
  fi
done

# 2. Metadata ("unknown" when there is no commit or this is not a git repo)
COMMIT=$(git rev-parse --short HEAD 2>/dev/null) || COMMIT=unknown
BRANCH=$(git rev-parse --abbrev-ref HEAD 2>/dev/null) || BRANCH=unknown
cat > "${OUT}/meta.json" <<EOF
{
  "tag": "${TAG}",
  "created": "$(date -Iseconds)",
  "git_commit": "${COMMIT}",
  "git_branch": "${BRANCH}"
}
EOF

# 3. README skeleton (not overwritten if present); fill in by hand or with the agent
if [ ! -f "${OUT}/README.md" ]; then
  cat > "${OUT}/README.md" <<EOF
# Hand-off ${TAG}

## Current state

## Key decisions

## Next steps

## Open questions
EOF
fi

echo "created ${OUT}"
