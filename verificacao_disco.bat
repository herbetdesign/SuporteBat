@echo off
chcp 65001 >nul

net session >nul 2>&1
if %errorLevel% neq 0 (
    echo Solicitando privilégios de administrador...
    powershell -Command "Start-Process '%~f0' -Verb runAs"
    exit /b
)

echo Digite a letra da unidade a ser verificada (ex: C, D):
echo Caso a unidade estiver em uso, só fará a verificação ao reiniciar a máquina.
set /p drive=Unidade: 
if not defined drive (
    echo Nenhuma unidade selecionada. Saindo...
    timeout /t 3 >nul
    exit /b
)

echo Verificando erros na unidade %drive%:...
chkdsk %drive%: /f /r /x
if %errorLevel% neq 0 (
    echo Erro ao executar CHKDSK. Verifique os parâmetros e tente novamente.
    pause >nul
    exit /b
)

echo.
echo A verificacao sera concluida na proxima inicializacao se o disco estiver em uso.
echo Pressione qualquer tecla para sair...
pause >nul
