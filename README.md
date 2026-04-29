# ANnianAiClaw — 云端 AI 工作空间

> ANnianExplorer 的 GitHub Copilot 长期 AI 助手基地。每次新对话自动延续同一身份、记忆与工作方式。

---

## 这是什么？

本仓库是一个**持久化的个人 AI 工作空间**，让 GitHub Copilot（云端 Agent）在每次新对话中：

- 📖 读取 `AGENTS.md` 了解自己的身份、规则与工作方式
- 🧠 读取 `MEMORY.md` 恢复长期记忆与项目背景
- ✅ 读取 `tasks/` 继续上次未完成的工作
- 📝 写入 `logs/` 记录每次任务的产出与决策

---

## 核心文件

| 文件/目录              | 用途                                 |
|------------------------|--------------------------------------|
| `AGENTS.md`            | AI 行为核心规则（必读）              |
| `SOUL.md`              | 工作风格与价值观                     |
| `MEMORY.md`            | 长期记忆总览入口                     |
| `memory/`              | 分类记忆（偏好、背景、规则等）       |
| `tasks/`               | 任务管理（待办 / 进行中 / 已完成）   |
| `logs/`                | 时序工作日志（按月归档）             |
| `docs/`                | GitHub Pages 发布内容                |

---

## 关联项目

- **ai-ui-chatRoom** — 开源 AI 智能聊天室（Vue 3 + Spring Boot）  
  👉 https://github.com/ANnianExplorer/ai-ui-chatRoom

- **导航官网** — 通过 GitHub Pages 发布  
  👉 https://ANnianExplorer.github.io/ANnianAiClaw/

---

*由 ANnian AI 助手维护 | 核心规则见 [AGENTS.md](./AGENTS.md)*
