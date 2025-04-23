chcp 65001 >nul
@echo off
net session >nul 2>&1
if %errorLevel% == 0 (
    echo Modo Administrador detectado. Executando limpeza...
) else (
    echo Solicitando permissões de Administrador...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

del /q /s "%temp%\*.*"
del /q /s "C:\Windows\Temp\*.*"
del /q /s "C:\Windows\Prefetch\*.*"
echo Limpeza concluida.
pause
