# EtherCalc-Portable v1.0.0 发布说明

这是 EtherCalc 的 Windows 便携版发布包，下载解压后双击 `start.bat` 即可运行，访问地址 `http://localhost:8000`。

## 文件信息
- 包名：`EtherCalc-Portable.zip`
- Size：`44374456` 字节（约 42.3 MB）
- SHA256：`05669A112ABD4F34405C51E6B64341FAF4876EA3692119CD92C3C22E0902E096`

## 包含内容
- `node_modules/`（依赖已安装）
- `start.bat`（一键启动脚本，优先使用同目录 `node.exe`，否则使用系统 Node）
- `package.json`、`package-lock.json`
- `README.md`、`LICENSE`、`安装.txt`
- 如存在：`node.exe`、`npm/`、`npx/`、`node_etw_provider.man`、`corepack/`

## 使用说明
1. 下载并解压 `EtherCalc-Portable.zip`
2. 双击 `start.bat`
3. 浏览器访问：`http://localhost:8000`
- 若目录包含 `node.exe`，无需预装 Node；若无，需先安装 Node

## 导出路径示例
- 单表：
  - `/:room.xlsx`
  - `/_/:room/xlsx`
- 多表（`=` 前缀）：
  - `/=:room.xlsx`
  - `/_/=:room/xlsx`

## 发布到 GitHub 的步骤（维护者）
1. 在 GitHub 创建仓库并推送源码与文档（不含 zip）：
   ```
   git init
   git add .
   git commit -m "初始提交 EtherCalc-Portable（源码与说明）"
   git remote add origin https://github.com/你的用户名/EtherCalc-Portable.git
   git push -u origin master
   ```
2. 打开仓库页面 → Releases → Draft a new release：
   - 版本号：`v1.0.0`
   - 上传附件：`EtherCalc-Portable.zip`
   - 在描述中粘贴本发布说明中的“文件信息”和“使用说明”

## 变更要点
- 修复多表导出 `room` 解析（去除前导 `=`），避免 `404`
- 为导出功能新增别名路由：`/=:room.xlsx` 与 `/_/=:room/xlsx`
- 重写 `README.md` 为 EtherCalc-Portable 项目说明
- 新增 `.gitignore`，忽略依赖与临时数据

## 兼容性与依赖
- Windows 环境优先（便携包）
- Redis 未启用时自动回落至本地 `dump/` 文件存储

## 校验
- 下载后可使用 SHA256 校验：
  - `05669A112ABD4F34405C51E6B64341FAF4876EA3692119CD92C3C22E0902E096`