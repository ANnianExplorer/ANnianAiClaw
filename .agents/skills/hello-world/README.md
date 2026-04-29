# hello-world — 技能系统验证模板

> **版本**：1.0.0 | **语言**：Shell | **作者**：ANnianExplorer

## 用途

验证 ANnian AI 技能系统的发现、加载与执行全流程是否正常。新增技能时，可以此为模板。

## 使用方法

### 直接执行

```bash
bash .agents/skills/hello-world/run.sh
```

### 自定义消息

```bash
SKILL_INPUT_MESSAGE="你好，技能系统！" bash .agents/skills/hello-world/run.sh
```

### AI 调用示例

AI 调用此技能时，读取 `skill.yml` 中的 `entry` 字段，构造命令：

```
language: shell → bash run.sh
input参数通过环境变量 SKILL_INPUT_<KEY> 传入
```

## 预期输出

```
========================================
 ANnian AI 技能系统 — hello-world v1.0.0
========================================

✅ 技能发现：成功
✅ 技能加载：成功
✅ 技能执行：成功

📢 消息：Hello from ANnian AI Skill System!

========================================
 技能执行完毕
========================================
```

## 作为新技能的模板

复制此目录并修改以下文件：

1. `skill.yml` — 更新 `name`、`description`、`entry`、`dependencies`、`inputs`/`outputs`
2. `run.sh` — 替换为你的实际逻辑
3. `README.md` — 更新使用说明

---

*最后更新：2026-04-29*
