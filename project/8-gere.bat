@echo off
title By DiP1mb4
color a

:inicio
cls
echo.
echo    ====================================
echo          Gerenciamento da Máquina
echo    ====================================
echo ------------------------------------------
echo.

echo    [1] Reiniciar           [2] Desligar
echo.
echo                 [3] Voltar
echo.

set /p op=Informe a opcao desejada: 

if %op% == 1 (shutdown -s -t 0)
if %op% == 2 (shutdown -s -t 0)
if %op% == 3 (call menu.bat) else (
	cls
	echo.
	echo    ====================================
	echo                Opcao Invalida
	echo    ====================================
	echo.
	pause
	goto:inicio
)