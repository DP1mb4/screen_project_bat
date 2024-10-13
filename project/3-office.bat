@echo off
title By DiP1mb4
color a

:inicio
cls
echo      ==============================
echo              Pacote Office
echo      ==============================
echo.

echo      [W] Word             [E] Excel 
echo.
echo      [P] Power Point      [A] Acces
echo.
echo.
echo           [R] Retornar ao menu
echo.
echo.

set /p op=Informe a opcao desejada: 

if /i %op%== w (start winword.exe 
goto:inicio)

if /i %op%== e (start excel.exe 
goto:inicio)

if /i %op%== p (start powerpnt.exe 
goto:inicio)

if /i %op%== a (start msaccess.exe 
goto:inicio)

if /i %op%== r (call 2-menu.bat) else (
	cls
	echo.
	echo    ==================================
	echo              Opcao Invalida
	echo    ==================================
	echo.
	pause
	goto inicio
)