#!/usr/bin/env bash
# hello-world/run.sh
# 技能系统验证脚本：输出问候消息，验证技能执行链路正常。

set -euo pipefail

# 读取输入参数（优先环境变量，其次默认值）
MESSAGE="${SKILL_INPUT_MESSAGE:-Hello from ANnian AI Skill System!}"

echo "========================================"
echo " ANnian AI 技能系统 — hello-world v1.0.0"
echo "========================================"
echo ""
echo "✅ 技能发现：成功"
echo "✅ 技能加载：成功"
echo "✅ 技能执行：成功"
echo ""
echo "📢 消息：${MESSAGE}"
echo ""
echo "========================================" 
echo " 技能执行完毕"
echo "========================================"
