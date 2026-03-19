#!/bin/bash
set -e

# Font Sommelier — Claude Code 스킬 설치 스크립트
# https://github.com/gykim80/gulim

REPO_URL="https://raw.githubusercontent.com/gykim80/gulim/main"
COMMANDS_DIR="$HOME/.claude/commands"

echo ""
echo "  Font Sommelier - AI Font Recommendation Skill"
echo "  =============================================="
echo ""
echo "  Installing to $COMMANDS_DIR ..."
echo ""

# commands 디렉토리 생성
mkdir -p "$COMMANDS_DIR"

# font.md 다운로드
curl -sL "$REPO_URL/font.md" -o "$COMMANDS_DIR/font.md"

# 설치 확인
if [ -f "$COMMANDS_DIR/font.md" ]; then
  echo "  Done! Font Sommelier has been installed."
  echo ""
  echo "  Usage in Claude Code:"
  echo ""
  echo "    /font warm cafe branding"
  echo "    /font modern minimal tech startup"
  echo "    /font luxury premium beauty brand"
  echo "    /font cute playful children's font"
  echo "    /font formal business report Korean font"
  echo ""
  echo "  More info: https://gulim.vercel.app"
  echo ""
else
  echo "  Installation failed. Please install manually:"
  echo ""
  echo "    1. Download: $REPO_URL/font.md"
  echo "    2. Save to:  $COMMANDS_DIR/font.md"
  echo ""
  exit 1
fi
