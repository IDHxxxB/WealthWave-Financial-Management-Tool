# Wealthwave 财务管理工具 - 分支策略

为了确保 Wealthwave 财务管理工具开发过程的有序性和代码质量，我们制定了以下分支策略。

## 1. 主分支（`main`）
- `main` 分支是用于发布的稳定版本，始终保持可部署状态。
- 任何时候，`main` 分支都不应直接进行开发工作，所有变更必须通过 Pull Request (PR) 进行审核和合并。
- 每次合并到 `main` 分支后，应创建一个新的版本标签（`tag`），用于版本管理。

## 2. 特性分支（`feature`）
- 特性分支用于开发新功能，命名规则为 `feature/功能名称`。
- 从 `develop` 分支创建特性分支，并在完成功能开发后提交 PR 合并回 `develop` 分支。
- 命名示例：`feature/user-authentication`、`feature/investment-analysis`

### 创建特性分支
```bash
git checkout -b feature/功能名称 develop
