@echo off
title By DiP1mb4
color a

:inicio
cls
echo.
echo ====================================================
echo                         JOGOS
echo ====================================================
echo.
echo  [1] Advinhe o numero     [2] Jo-Ken-Po
echo.
echo  [3] Vamos calcular       [4] Voltar

echo.
set /p op= Escolha o jogo desejado: 

if %op%== 1 (goto:randon-numbers)

if %op%== 2 (call 7-jogos-joken.bat)

if %op%== 3 (goto:calc)

if %op%== 4 (call 2-menu.bat)



:randon-numbers
cls
echo.
echo ================================================
echo           Escolha um numero de 1 a 50
echo ================================================
echo.
set /a miss=6

set /a aleatorio=(%random% %%50)



:decision
echo.
set /a miss= %miss% - 1
echo Numero de tentativas: %miss%
echo ================================================
echo.
set /p dec=De um chute: 

:game

if %aleatorio%== %dec% (goto:vitoria)

if %miss% == 0 (goto:erro)

if %dec% GTR 50 (
	echo.
	echo ================================================
	echo          Escolha um numero de 1 a 50!!
	echo ================================================
	echo.
	color b
	goto decision
)

if %dec% LSS 1 (
	echo.
	echo ================================================
	echo          Escolha um numero de 1 a 50!!
	echo ================================================
	echo.
	color b
	goto decision
)

if %aleatorio% LSS %dec% (
	echo.
	echo ================================================
	echo              Tente um numero menor
	echo ================================================
	echo.
	color b
	goto decision
)

if %aleatorio% GTR %dec% (
	echo.
	echo ================================================
	echo              Tente um numero maior
	echo ================================================
	echo.
	color b
	goto decision
)


:vitoria
	cls
	echo.
	echo ================================================
	echo              Parabens voce acertou
	echo ================================================
	echo.
	color a
	set /p repeat=Deseja iniciar outra partida (S/N) ? 

if /i %repeat% == s (goto:randon-numbers)
if /i %repeat% neq s (goto:inicio)

:erro
	echo.
	echo ================================================
	echo              Tentativas esgotadas!!
	echo ================================================
	echo.
	color b
	set /p repeat2=Deseja iniciar outra partida (S/N) ? 

if /i %repeat2% == s (goto:randon-numbers)
if /i %repeat2% neq s (goto:inicio)


//Calculadora// 
:calc	
cls
set /a correct = 0
set /a miss = 0
:calc-inicio
cls
echo ================================================
echo                 Resolva o calculo
echo ================================================
echo ================================================
echo     ACERTOS: %correct%
echo     ERROS: %miss%
echo ================================================


set /a num1= (%random% %%9)
set /a num2= (%random% %%9)
set /a roperador= (%random% %%4) + 1

if %roperador%== 1 (
	set /a resu = num1 + num2
	echo.
	echo %num1% + %num2% = ???
)

if %roperador%== 2 (
	set /a resu = num1 - num2
	echo.
	echo %num1% - %num2% = ???
)

if %roperador%== 3 (
	set /a resu = num1 * num2
	echo.
	echo %num1% * %num2% = ???
)

if %roperador%== 4 (
	if %num1% == 0 (
		set /a num1 = 1
	)
	if %num2% == 0 (
		set /a num2 = 1
	)
	set /a resu = num1 / num2
	echo.
	echo %num1% / %num2% = ???
	
)

set /p resposta=Informe a resposta:  

if %resposta% == .. (
	goto 
)

if %resposta%==%resu% (
	cls
	echo ================================================
	echo                 !!! ACERTOU !!!
	echo ================================================
	echo.
	set /a correct += 1
) else (
	cls
	echo ================================================
	echo                   !!! ERROU !!!
	echo ================================================
	echo.
	echo A resposta correta era: %resu%
	echo.
	set /a miss += 1
)

echo.
set /p des= Deseja iniciar uma nova operacao (s/n)? 

if %des% == s (
	goto:calc-inicio
) else (
	goto:inicio
) 