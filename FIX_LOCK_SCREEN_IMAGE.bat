@echo off
:: Script para definir uma imagem personalizada como tela de bloqueio no Windows
:: Compatível com versões do Windows que suportam PersonalizationCSP (ex: Windows 10 Pro/Edu/Enterprise)

:: ===============================
:: CONFIGURAÇÕES PERSONALIZÁVEIS
:: ===============================

:: Caminho da imagem (pode ser um caminho local ou de rede)
set "LOCK_SCREEN_IMAGE=\\SEU_CAMINHO\Bloqueio.jpg"

:: ===============================
:: APLICA AS CONFIGURAÇÕES
:: ===============================

echo Definindo imagem da tela de bloqueio...

REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP /v LockScreenImagePath /t REG_SZ /d "%LOCK_SCREEN_IMAGE%" /f

REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP /v LockScreenImageUrl /t REG_SZ /d "%LOCK_SCREEN_IMAGE%" /f

REG ADD HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\PersonalizationCSP /v LockScreenImageStatus /t REG_DWORD /d 0 /f

echo Tela de bloqueio configurada com sucesso.

pause
