@echo off
title By DiP1mb4
color a

:inicio
cls
echo.
echo ====================================================
echo                      JO-KEN-PO
echo ====================================================
echo.
echo           [1] Iniciar          [2] Regras
echo.
echo                      [3] Voltar
echo.

set /p op=Informe a opcao desejada: 

if %op%== 1 (goto:joken)
if %op%== 2 (goto:rules)
if %op%== 3 (call 7-jogos.bat) else (
	cls
	echo.
	echo ====================================================
	echo                 !!Opcao Invalida!!
	echo ====================================================
	echo.
	pause
	goto:inicio
)

:rules
cls
echo.
echo ====================================================
echo                     !! REGRAS !!
echo ====================================================
echo.

echo           Pedra                           Papel
echo =========================      ==========================
echo Perde          Ganha    =      = Perde          Ganha   =
echo =========================      ==========================
echo Papel          Tesoura  =      = Tesoura        Pedra   =
echo Spock          Lagarto  =      = Lagarto        Spock   =
echo =========================      ==========================
echo.

echo          Tesoura                        Lagarto
echo =========================     ==========================
echo Perde          Ganha    =     = Perde          Ganha   =
echo =========================     ==========================
echo Pedra          Lagarto  =     = Pedra          Papel   =
echo Spock          Papel    =     = Tesoura        Spock   =
echo =========================     ==========================
echo.

echo                          Spock
echo                ==========================
echo                = Perde          Ganha   =
echo                ==========================
echo                = Papel          Pedra   =
echo                = Lagarto        Tesoura =
echo                ==========================
echo.

echo                      Regra Universal
echo           ====================================
echo           Caso as jogadas sejam iguais, a rodada
echo           sera registrada como empate.
echo.

pause
goto inicio

:joken
cls
echo.
echo ==================================================
echo                 !! MODO DE JOGO !!
echo ==================================================
echo.
echo     [1] Player x IA            [2] IA x IA     
echo.
echo                     [3] Voltar
echo.
set /p mode=informe o modo de jogo desejado: 

if %mode%== 1 (goto:player)
if %mode%== 2 (goto:ia)
if %mode%== 3 (goto:inicio) else (
	cls
	echo.
	echo ====================================================
	echo                 !!Opcao Invalida!!
	echo ====================================================
	echo.
	pause
	goto:joken
)

:ia
cls
cls
echo.
echo ====================================================
echo                 Em desenvolvimento!
echo ====================================================
echo.
pause
goto joken



:player
cls
echo.
echo ==================================================
echo                  !! Jo-Ken-Po !!
echo ==================================================
echo.
echo Digite ".." para voltar
echo.
set /p play=Informe o nome de jogador: 
if %play%== .. (goto:inicio)
echo.
set /p tot=Informe a pontuacao maxima do jogo: 

set /a empate= 0
set /a win= 0
set /a lose= 0

:startp

if %win% == %tot% (
	cls
	echo.
	echo ==================================================
	echo                 !! Voce Venceu !!
	echo ==================================================
	echo.
	echo      Vitorias: %win%    Derrotas: %lose%  Empates: %empate%
	echo.
	pause
	goto:player
)

if %lose% == %tot% (
	cls
	echo.
	echo ==================================================
	echo                 !! Voce Perdeu !!
	echo ==================================================
	echo.
	echo      Vitorias: %win%    Derrotas: %lose%  Empates: %empate%
	echo.
	pause
	goto:player
)


cls
echo.
echo ==================================================
echo                    !! Placar !!
echo ==================================================
echo      Vitorias: %win%    Derrotas: %lose%  Empates: %empate%
echo.
echo       [1] Pedra    [3] Tesoura    [5] Spock
echo.
echo       [2] Papel    [4] Lagarto    [v] Voltar       
echo.
echo                 [i] Encerrar jogo
echo.

set /p jog=Faca sua jogada: 
set /a ia= (%random% %%5) + 1

if %jog%== 1 (goto:pedra)
if %jog%== 2 (goto:papel)
if %jog%== 3 (goto:tesoura)
if %jog%== 4 (goto:lagarto)
if %jog%== 5 (goto:spock)
if /i %jog%== v (call 7-jogos.bat)
if /i %jog%== i (goto:inicio)
else (
	cls
	echo.
	echo ====================================================
	echo                 !!Opcao Invalida!!
	echo ====================================================
	echo.
	pause
	goto:startp
)



:pedra
if %ia%== 1 (
	cls
	echo.
	echo ==================================================
	echo                   !! Empate !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Pedra            X            Pedra
	set /a empate += 1
	echo.
 	pause
	goto:startp
)

if %ia%== 2 (
	cls
	echo.
	echo ==================================================
	echo                   !! Derrota !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Pedra            X            Papel
	set /a lose += 1
	echo.
 	pause
	goto:startp
)

if %ia%== 3 (
	cls
	echo.
	echo ==================================================
	echo                   !! Vitoria !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Pedra            X          Tesoura
	set /a win += 1
	echo.
 	pause
	goto:startp
)

if %ia%== 4 (
	cls
	echo.
	echo ==================================================
	echo                   !! Vitoria !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Pedra            X          Lagarto
	set /a win += 1
	echo.
 	pause
	goto:startp
)


if %ia%== 5 (
	cls
	echo.
	echo ==================================================
	echo                   !! Derrota !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Pedra            X            Spock
	set /a lose += 1
	echo.
 	pause
	goto:startp
)


:papel
if %ia%== 1 (
	cls
	echo.
	echo ==================================================
	echo                   !! Vitoria !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Papel            X            Pedra
	set /a win += 1
	echo.
 	pause
	goto:startp
)

if %ia%== 2 (
	cls
	echo.
	echo ==================================================
	echo                   !! Empate !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Papel            X            Papel
	set /a empate += 1
	echo.
 	pause
	goto:startp
)

if %ia%== 3 (
	cls
	echo.
	echo ==================================================
	echo                   !! Derrota !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Papel            X          Tesoura
	set /a lose += 1
	echo.
 	pause
	goto:startp
)

if %ia%== 4 (
	cls
	echo.
	echo ==================================================
	echo                   !! Derrota !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Papel            X          Lagarto
	set /a lose += 1
	echo.
 	pause
	goto:startp
)


if %ia%== 5 (
	cls
	echo.
	echo ==================================================
	echo                   !! Vitoria !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Papel            X            Spock
	set /a win += 1
	echo.
 	pause
	goto:startp
)

:tesoura
if %ia%== 1 (
	cls
	echo.
	echo ==================================================
	echo                   !! Derrota !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Tesoura            X          Pedra
	set /a lose += 1
	echo.
 	pause
	goto:startp
)

if %ia%== 2 (
	cls
	echo.
	echo ==================================================
	echo                   !! Vitoria !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Tesoura            X          Papel
	set /a win += 1
	echo.
 	pause
	goto:startp
)

if %ia%== 3 (
	cls
	echo.
	echo ==================================================
	echo                   !! Empate !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Tesoura            X        Tesoura
	set /a empate += 1
	echo.
 	pause
	goto:startp
)

if %ia%== 4 (
	cls
	echo.
	echo ==================================================
	echo                   !! Vitoria !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Tesoura            X        Lagarto
	set /a win += 1
	echo.
 	pause
	goto:startp
)


if %ia%== 5 (
	cls
	echo.
	echo ==================================================
	echo                   !! Derrota !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Tesoura            X          Spock
	set /a lose += 1
	echo.
 	pause
	goto:startp
)

:lagarto
if %ia%== 1 (
	cls
	echo.
	echo ==================================================
	echo                   !! Derrota !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Lagarto            X          Pedra
	set /a lose += 1
	echo.
 	pause
	goto:startp
)

if %ia%== 2 (
	cls
	echo.
	echo ==================================================
	echo                   !! Vitoria !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Lagarto            X          Papel
	set /a win += 1
	echo.
 	pause
	goto:startp
)

if %ia%== 3 (
	cls
	echo.
	echo ==================================================
	echo                   !! Derrota !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Lagarto            X        Tesoura
	set /a lose += 1
	echo.
 	pause
	goto:startp
)

if %ia%== 4 (
	cls
	echo.
	echo ==================================================
	echo                   !! Empate !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Lagarto            X        Lagarto
	set /a empate += 1
	echo.
 	pause
	goto:startp
)


if %ia%== 5 (
	cls
	echo.
	echo ==================================================
	echo                   !! Vitoria !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Lagarto            X          Spock
	set /a win += 1
	echo.
 	pause
	goto:startp
)

:spock
if %ia%== 1 (
	cls
	echo.
	echo ==================================================
	echo                   !! Vitoria !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Spock            X          Pedra
	set /a win += 1
	echo.
 	pause
	goto:startp
)

if %ia%== 2 (
	cls
	echo.
	echo ==================================================
	echo                   !! Derrota !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Spock            X          Papel
	set /a lose += 1
	echo.
 	pause
	goto:startp
)

if %ia%== 3 (
	cls
	echo.
	echo ==================================================
	echo                   !! Vitoria !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Spock            X        Tesoura
	set /a win += 1
	echo.
 	pause
	goto:startp
)

if %ia%== 4 (
	cls
	echo.
	echo ==================================================
	echo                   !! Derrota !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Spock            X        Lagarto
	set /a lose += 1
	echo.
 	pause
	goto:startp
)


if %ia%== 5 (
	cls
	echo.
	echo ==================================================
	echo                   !! Empate !!
	echo ==================================================
	echo.
	echo       %play%                              IA
 	echo       ===========             ===========
	echo.
	echo       Spock            X          Spock
	set /a empate += 1
	echo.
 	pause
	goto:startp
)