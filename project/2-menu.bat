@echo off
title By DiP1mb4
color a

:inicio
cls
echo.
echo    ==================================
echo               Menu Inicial
echo    ==================================
echo ----------------------------------------
echo.

echo    [P] Pacote Office
echo.
echo    [A] Aplicativos Windows
echo.
echo    [S] Servicos de Rede
echo.
echo    [M] Manipular Arquivos e Pastas
echo.
echo    [J] Jogos
echo.
echo    [G] Gerenciamento da Maquina
echo.
echo    [L] Encerrar Sessao Conta
echo.
echo    [E] Encerrar Programa
echo.

set /p op=Informe a opcao desejada: 

if /i %op%== p (call 3-office)

if /i %op%== a (call 4-aplicativos_win.bat)

if /i %op%== s (call 5-rede.bat)

if /i %op%== m (call 6-arquivos.bat)

if /i %op%== j (call 7-jogos.bat)

if /i %op%== g (call 8-gere.bat)



if /i %op%== l (goto:logout)
if /i %op%== e (exit) else (
	cls
	echo.
	echo    ==================================
	echo              Opcao Invalida
	echo    ==================================
	echo.
	pause
	goto inicio
)

:logout
cls
echo. 
echo    ==================================
echo           Usuario Desconectado
echo    ==================================
echo.
pause
call 1-login.bat