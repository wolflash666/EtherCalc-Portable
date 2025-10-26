# 变更日志

## v1.0.0 (2025-10-26)
- 初始发布 Windows 便携包（`EtherCalc-Portable.zip`）
- 修复多表导出：正确处理 `room` 前导 `=`（避免 404）
- 新增导出别名路由：`/=:room.xlsx`、`/_/=:room/xlsx`
- 更新 README 为 EtherCalc-Portable 使用说明
- 添加 `.gitignore`，忽略依赖与临时数据
- 说明 Redis 未运行时回落到文件存储（`dump/`）
