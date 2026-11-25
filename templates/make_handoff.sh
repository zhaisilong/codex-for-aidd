#!/usr/bin/env bash
# 生成交接包 hand_off/vYYYY-MM-DD/:README.md、meta.json、关键文件。
# 复制到项目的 scripts/ 下,按项目修改 FILES 列表。在项目根目录运行。
set -euo pipefail

TAG="v$(date +%Y-%m-%d)"
OUT="hand_off/${TAG}"
mkdir -p "${OUT}"

# 1. 需要打包的关键文件(按项目修改)
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

# 2. 元信息(没有提交或不是 git 仓库时记为 unknown)
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

# 3. README 骨架(已存在则不覆盖),之后由你或 agent 补全
if [ ! -f "${OUT}/README.md" ]; then
  cat > "${OUT}/README.md" <<EOF
# Hand-off ${TAG}

## 当前状态

## 关键决策

## 下一步

## 未决问题
EOF
fi

echo "created ${OUT}"
