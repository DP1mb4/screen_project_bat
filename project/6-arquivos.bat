@echo off
title By DiP1mb4
color a

:inicio
cls
echo.
echo    =======================================================
echo               Manipulacao de Arquivos e Pastas
echo    =======================================================
echo.

echo    [1] Gerar Arquivos     [2] Organizar Arquivos em pastas
echo.
echo    [3] Ocultar Arquivos   [4] Exibir Arquivos e Pastas
echo.
echo               [5] Retornar ao Menu
echo.
echo.
set /p op=Informe a opcao desejada: 

if %op%== 1 (goto:gerar)
if %op%== 2 (goto:organizer)
if %op%== 5 (call 2-menu.bat)



:gerar
cls
echo.
echo    =======================================================
echo                     Gerador de Arquivos
echo    =======================================================
echo.
set /p quant=Informe a quantidade de aquivos a serem criados: 
echo.
set /p name=Informe o nome do arquivo(os): 
echo.
set /p ext=Informe o tipo de extensao do arquivo: 
echo.
for /l %%n in (1,1,%quant%) do echo kb > %name%%%n.%ext%
cls
echo    =======================================================
echo                   Os Arquivos Foram Gerados
echo    =======================================================
echo.
move *.%ext% "%USERPROFILE%\Desktop"
echo.
echo     Os arquivos estao localizados na area de trabalho!!
echo.
set /p dec=Deseja criar novos arquivos(s/n)? 
if /i %dec%== s (goto:gerar) else (goto:inicio)


:organizer
cls
echo    =======================================================
echo                   Organizador de Arquivos
echo    =======================================================
echo.
set /p pasta=Informe o nome da pasta a ser criada: 
set /p ext=Informe o formato dos arquivos que serao armazenados: 
md %pasta% 
move *.%ext% "%USERPROFILE%\Desktop\%pasta%"
echo    =======================================================
echo                Arquivos Organizados com Sucesso
echo    =======================================================
echo.
echo    Os arquivos estao localizados na area de trabalho!
pause
goto inicio