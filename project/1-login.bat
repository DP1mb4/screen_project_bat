@echo off
title By DiP1mb4

set cor= 
set /a cora=(%random% %%4)
if %cora%== 1 (set cor=a)
if %cora%== 2 (set cor=b)
if %cora%== 3 (set cor=c)
if %cora%== 4 (set cor=d)

color %cor%

mode 60:40

:inicio
cls
echo.
echo            ======================================================
echo            ======================================================
echo            =============         ===============        =========
echo            =============         ===============        =========
echo            ======================================================
echo            ======================================================
echo            ========    ========     =======    ======   =========
echo.
echo                       =============================
echo                                 Big System
echo                       =============================
echo.
echo            ========    ========     =======    ======   =========
echo            ========    ========     =======    ======   =========
echo.
echo   ----------------------------------------------------------------------
echo.
echo.
echo                         [1] Registrar   [2] Login
echo.
echo                                   [3] Sair 
echo.
echo.
set /p op= Informe a opcao que deseja: 

if %op% == 1 (goto:registro)
if %op% == 2 (goto:login)
if %op%== 3 (exit) else (
	cls
echo.
echo ==============================
echo         Opcao Invalida
echo ==============================
echo.
pause
goto inicio
)


:registro
cls
echo.
echo ==============================
echo            Registro
echo ==============================
echo.
echo Digite ".." para voltar ao menu
echo.
echo    !!Digite sem espacos!!
echo.

set /p "user=Usuario: "


if %user%== .. (goto:inicio)

if exist reg\"%user%.txt" (
    cls
	echo.
	echo ==============================
	echo     Usuario ja registrado!
	echo ==============================
	echo.
	pause
	goto registro
) else (
    echo user > %user%.txt
	move %user%.txt reg
	cls
	goto senhareg
)


:senhareg
echo.
	echo ==============================
	echo        Defina uma Senha
	echo ==============================
	echo.
echo Usuario: %user%
echo.
set /p pass=Senha: 
echo userpass > %user%%pass%.txt
move %user%%pass%.txt reg
cls
echo.
echo =======================================
echo     Usuario Registrado com Sucesso!
echo =======================================
echo.
pause
goto inicio


:login
cls
echo.
echo =============================
echo             Login
echo =============================
echo.
echo Digite ".." para voltar ao menu
echo.
set /p userlog=Usuario: 
 
if %userlog%== .. (goto:inicio)

if exist reg\%userlog%.txt (goto:senha) else (
	cls
	echo.
	echo =============================
	echo    Usuario nao Registrado!
	echo =============================
	echo.
	pause
	goto inicio
)

:senha
echo.
set /p pass=Senha: 

if exist reg\%userlog%%pass%.txt (call 2-menu.bat) else (
cls
echo =============================
echo        Senha invalida!
echo =============================
echo.
pause
goto login
)