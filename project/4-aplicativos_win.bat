@echo off
title By DiP1mb4
color a

:inicio
cls
echo.
echo 	============================================
echo           	   Ferramentas do Windows
echo 	============================================
echo.

echo 	[1] Bloco de Notas    [2] Paint
echo.
echo 	[3] Teclado Virtual   [4] Painel de Controle
echo.
echo          	[5] Retornar ao Menu
echo. 
echo.

set /p op=Informe o opcao desejada: 

if %op%== 1 (start notepad.exe
goto:inicio)

if %op%== 2 (start mspaint.exe
goto:inicio)

if %op%== 3 (start osk.exe
goto:inicio)

if %op%== 4 (start control.exe
goto:inicio)

if %op%== 5 (call 2-menu.bat
goto:inicio) else (
	cls
	echo.
	echo    ==================================
	echo              Opcao Invalida
	echo    ==================================
	echo.
	pause
	goto inicio
)