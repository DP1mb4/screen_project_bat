@echo off
title By DiP1mb4
color a

:web
cls
echo.
echo    ==================================
echo              Navegador Web
echo    ==================================
echo.
echo    [1] Brave               [2] Chrome  
echo.        
echo    [3] Opera               [4] Edge
echo.               
echo               [5] Voltar
echo.

set /p nav=Informe o Navegador Desejado: 
set defnav=Nenhum

:navegador
if %nav%== 1 (
	set nav=brave.exe
	set defnav=Brave
)
if %nav%== 2 (
	set nav=chrome.exe
	set defnav=Chrome
)
if %nav%== 3 (
	set nav=opera.exe
	set defnav=Opera
)
if %nav%== 4 (
	set nav=msedge.exe
	set defnav=Microsoft Edge
)
if %nav%== 5 (
	call 2-menu.bat
)

:inicio
cls
echo.
echo  ==================================================
echo                   Servicos de Rede
echo  ==================================================
echo  Navegador:  %defnav%
echo  ==================================================
echo.

echo  [1] Obter o IP da Maquina       [2] Testar Conexao de Rede
echo.
echo  [3] Navegar na Web              [4] Youtube
echo.
echo  [5] Dispositivos na Rede        [6] Retornar ao Menu
echo.
echo                [7] Alterar Navegador
echo.

set /p op=Informe a opcao desejada: 

if %op%== 1 (cls
ipconfig
pause
goto:inicio)

if %op%== 2 (goto:teste)

if %op%== 3 (goto:navegador)

if %op%== 4 (goto:youtube)

if %op%== 5 (cls
arp -a
pause
goto:inicio)

if %op%== 6 (call 2-menu)

if %op%== 7 (goto:web) else (
	cls
	echo.
	echo    ==================================
	echo              Opcao Invalida
	echo    ==================================
	echo.
	pause
	goto inicio
)


:teste
cls
echo.
echo    ==================================
echo             Teste de Conexao
echo    ==================================
echo.

set /p ende=Informe o endereco da pagina: 
ping %ende% -n 13
echo.
pause
goto:inicio




:navegador
echo.
echo    ==================================
echo              Navegador Web
echo    ==================================
echo.
echo [1] Pesquisa Normal   [2] Pesquisa via URL
echo.
echo                [3] Voltar
echo.
set /p tipo=Informe o tipo de pesquisa: 
if %tipo%== 1 (goto:normal)
if %tipo%== 2 (goto:url)
if %tipo%== 3 (goto:inicio) else (
	cls
	echo.
	echo    ==================================
	echo              Opcao Invalida
	echo    ==================================
	echo.
	pause
	goto web
) 

:normal
cls
echo.
echo    ==================================
echo          Navegador Web - Normal
echo    ==================================
echo.
set /p busca=Informe o titulo da busca: 
start %nav% https://www.google.com/search?q="%busca%"
goto navegador


:url
cls
echo.
echo    ==================================
echo           Navegador Web - URL
echo    ==================================
echo.
set /p busca=Informe o titulo da busca: 
start %nav% %busca%
goto navegador

:youtube
cls
echo.
echo    ==================================
echo                  Youtube
echo    ==================================
echo.
set /p busca=Informe o titulo da pesquisa: 
start %nav% https://www.youtube.com/results?search_query="%busca%"
goto inicio