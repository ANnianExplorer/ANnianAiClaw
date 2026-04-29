# .agents/skills/ — 项目级技能库

> 本目录是 ANnian AI 助手的**技能注册中心**。每个子目录代表一个独立技能，AI 通过扫描本目录自动发现可用技能。

---

## 目录结构规范

```
.agents/skills/
├── README.md              # 本文件，技能库说明
├── INDEX.md               # 技能索引（自动/手动维护）
└── <skill-name>/          # 每个技能一个独立目录
    ├── skill.yml          # 技能元数据（必须）
    ├── run.sh             # 入口脚本（或其他语言的入口文件）
    └── README.md          # 技能说明（可选，推荐）
```

---

## skill.yml 字段说明

| 字段          | 必填 | 说明                                             |
|---------------|------|--------------------------------------------------|
| `name`        | ✅   | 技能唯一标识符（与目录名一致，小写连字符命名）    |
| `version`     | ✅   | 语义版本号，如 `1.0.0`                            |
| `description` | ✅   | 技能简短描述（中英文均可）                        |
| `author`      | ✅   | 技能作者                                          |
| `entry`       | ✅   | 入口文件名（相对于技能目录）                      |
| `language`    | ✅   | 入口文件语言：`shell` / `python` / `node` / `go` |
| `tags`        | ❌   | 标签数组，便于分类检索                            |
| `dependencies`| ❌   | 依赖列表，格式见下方示例                          |
| `inputs`      | ❌   | 技能接受的输入参数说明（键值对）                  |
| `outputs`     | ❌   | 技能产出说明                                      |

---

## 技能发现机制

AI 在每次会话中按以下步骤自动发现可用技能：

1. **扫描目录**：列出 `.agents/skills/` 下所有子目录
2. **验证存在**：检查每个子目录是否含有 `skill.yml`
3. **读取元数据**：解析 `skill.yml` 获取技能名称、描述、入口、依赖
4. **更新索引**：将发现的技能写入 `INDEX.md`（若有变更）

---

## 技能安装机制

AI 在调用技能前按以下步骤安装依赖：

1. 读取 `skill.yml` 中的 `dependencies` 字段
2. 根据每个依赖的 `type` 执行对应安装命令：
   - `pip`：`pip install <package>`
   - `npm`：`npm install <package>`
   - `apt`：`apt-get install -y <package>`
   - `shell`：直接执行指定命令
3. 安装失败时终止执行并报告错误

---

## 技能使用机制

调用技能时，AI 按以下步骤执行：

1. 在 `INDEX.md` 或目录中定位目标技能
2. 读取 `skill.yml` 确认 `entry` 和 `language`
3. 构造执行命令（如 `bash run.sh`、`python main.py`）
4. 传入 `inputs` 参数（环境变量或命令行参数）
5. 捕获输出并记录执行结果

---

## 新增技能步骤

1. 在 `.agents/skills/` 下创建新目录：`mkdir .agents/skills/<skill-name>`
2. 创建 `skill.yml`（参考模板：`hello-world/skill.yml`）
3. 创建入口文件（如 `run.sh`）
4. （可选）创建 `README.md` 说明技能用途
5. 在 `INDEX.md` 中手动添加一行，或等待 AI 自动扫描更新

---

*最后更新：2026-04-29*
