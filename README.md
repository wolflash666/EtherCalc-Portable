# EtherCalc-Portable

EtherCalc-Portable 是一个便携式的 EtherCalc 在线电子表格应用程序，可以在 Windows 环境下快速部署和使用，无需复杂安装。

## 功能特点

- 基于 node-v16.20.2-win-x64 的便携式部署，无需安装
- 支持多种格式导出：CSV, HTML, ODS, FODS, XLSX
- 支持多表格导出功能
- 支持本地文件系统存储，无需数据库
- 简单易用的界面，类似 Excel/Google Sheets

## 快速开始

1. 下载并解压 EtherCalc-Portable 压缩包
2. 双击 `start.bat` 启动服务
3. 在浏览器中访问 `http://localhost:8000`

## 导出功能

支持多种格式导出：
- CSV: `http://localhost:8000/[表格名].csv` 或 `http://localhost:8000/_/[表格名]/csv`
- HTML: `http://localhost:8000/[表格名].html` 或 `http://localhost:8000/_/[表格名]/html`
- ODS: `http://localhost:8000/[表格名].ods` 或 `http://localhost:8000/_/[表格名]/ods`
- FODS: `http://localhost:8000/[表格名].fods` 或 `http://localhost:8000/_/[表格名]/fods`
- XLSX: `http://localhost:8000/[表格名].xlsx` 或 `http://localhost:8000/_/[表格名]/xlsx`

多表格导出：
- `http://localhost:8000/=[表格名].xlsx` 或 `http://localhost:8000/_/=[表格名]/xlsx`

## 技术栈

- Node.js
- Express
- Socket.IO
- SocialCalc

## 许可证

本项目基于 MIT 许可证发布，详见 [LICENSE](LICENSE) 文件。

## 致谢

本项目基于 [EtherCalc](https://github.com/audreyt/ethercalc) 开发，感谢原作者的贡献。

