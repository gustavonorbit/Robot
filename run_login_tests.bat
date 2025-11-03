@echo off
:: ======================================================
:: Script para executar testes Robot Framework
:: Salvando resultados com data e hora
:: ======================================================

:: Captura a data e hora atual (formato: YYYY-MM-DD_HH-MM-SS)
for /f "tokens=1-5 delims=/: " %%d in ("%date% %time%") do (
    set year=%%f
    set month=%%e
    set day=%%d
    set hour=%%g
    set minute=%%h
)
set timestamp=%date:~6,4%-%date:~3,2%-%date:~0,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%
set timestamp=%timestamp: =0%

:: Cria a pasta de resultados
set results_dir=tests\results\%timestamp%
mkdir "%results_dir%"

:: Executa os testes e salva os resultados na pasta criada
echo Executando testes... Resultados em: %results_dir%
robot -d "%results_dir%" tests\login_test.robot

:: Pausa para visualizar o resultado no terminal
pause