@echo off
set PORT=8000

echo.
echo ----------------------------------------------------
echo   �������� EtherCalc ������ (V16)...
echo   ���ʵ�ַ: http://localhost:%PORT%
echo   �� Ctrl+C ֹͣ��������
echo ----------------------------------------------------
echo.

REM ������� --backend vm.CreateContext ������ǿ��ʹ����һ����� (���������ʹ�� webworker-threads)
node .\node_modules\ethercalc\app.js --port %PORT% --backend vm.CreateContext

pause