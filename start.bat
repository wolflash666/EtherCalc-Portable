@echo off
set PORT=8000

echo.
echo ----------------------------------------------------
echo   正在启动 EtherCalc 服务器 (V16)...
echo   访问地址: http://localhost:%PORT%
echo   按 Ctrl+C 停止服务器。
echo ----------------------------------------------------
echo.

REM 尝试添加 --backend vm.CreateContext 参数，强制使用另一个后端 (如果它还在使用 webworker-threads)
node .\node_modules\ethercalc\app.js --port %PORT% --backend vm.CreateContext

pause