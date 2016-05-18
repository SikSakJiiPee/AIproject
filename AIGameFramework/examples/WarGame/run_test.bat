@echo off
REM You can use following command line args as an example:
REM
REM * Start using level "level0.tmx", both player uses CharacterController-controller (no movement):
REM     call WarGame.exe -l level0.tmx -p1 CharacterController -p2 CharacterController
REM
REM * Start using level "level0.tmx", Player 1 has AutoAttackFlagCarryingBot-behaviour and player 2 has DirectMoverAI-behaviour:
REM     call WarGame.exe -l level0.tmx -p1 AutoAttackFlagCarryingBot -p2 DirectMoverAI
REM
REM
REM * Start using level "level0.tmx", Player 1 is joystick human player player 2 has AutoAttackFlagCarryingBot-behaviour:
REM     call WarGame.exe -l level0.tmx -p1 JoystickController -p2 AutoAttackFlagCarryingBot
REM

del winners.txt

call WarGame.exe -l level0.tmx -p1 AutoAttackFlagCarryingBot -p2 DirectMoverAI
call WarGame.exe -l level0.tmx -p1 DirectMoverAI -p2 AutoAttackFlagCarryingBot
call WarGame.exe -l level0.tmx -p1 DirectMoverAI -p2 DirectMoverAI

call WarGame.exe -l level1.tmx -p1 AutoAttackFlagCarryingBot -p2 DirectMoverAI
call WarGame.exe -l level1.tmx -p1 DirectMoverAI -p2 AutoAttackFlagCarryingBot
call WarGame.exe -l level1.tmx -p1 DirectMoverAI -p2 DirectMoverAI

call WarGame.exe -l level2.tmx -p1 DirectMoverAI -p2 DirectMoverAI

echo Winners
echo winners.txt

pause