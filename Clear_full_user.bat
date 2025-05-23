REM impede que os comandos sejam exibidos na tela quando o script é executado
	@echo off

REM ******************** REMOVE USUARIOS E ARQUIVOS LOGADOS NO CHROME ********************
REM exclui todos os arquivos na pasta sem pedir confirmação

	for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Google\Chrome /s /q

REM ********************MOVE Arquivos e pastas da Area de trabalho, Documentos e Downloads para pasta C:\useless_trash depois EXCLUI tudo********************

	mkdir C:\useless_trash

	for /d %%U in ("C:\Users\*") do (
    	 for /d %%G in ("%%U\desktop\*") do move "%%G" C:\useless_trash 
    	 for %%G in ("%%U\desktop\*") do move "%%G" C:\useless_trash
	)

	for /d %%U in ("C:\Users\*") do (
    	 for /d %%G in ("%%U\documents\*") do move "%%G" C:\useless_trash
    	 for %%G in ("%%U\documents\*") do move "%%G" C:\useless_trash
	)

	for /d %%U in ("C:\Users\*") do (
   	 for /d %%G in ("%%U\downloads\*") do move "%%G" C:\useless_trash
   	 for %%G in ("%%U\downloads\*") do move "%%G" C:\useless_trash
	)

	rd C:\useless_trash /s /q

REM ******************** USUARIOS TEMP ********************
REM Apaga todos arquivos da pasta Temp de todos os usuários, mantendo das pastas
	
	for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Temp\* /s /q

REM cria arquivo vazio.txt dentro da pasta Temp de todos usuários
	
	for /d %%F in (C:\Users\*) do type nul >"%%F\Appdata\Local\Temp\vazio.txt"

REM apaga todas as pastas vazias dentro da pasta Temp de todos usuários mas não apaga a própria pasta Temp
	
	for /d %%F in (C:\Users\*) do robocopy %%F\AppData\Local\Temp\ %%F\AppData\Local\Temp\ /s /move /NFL /NDL /NJH /NJS /nc /ns /np

REM Apaga arquivo vazio.txt dentro da pasta Temp de todos usuários
	
	for /d %%F in (C:\Users\*) do del %%F\AppData\Local\Temp\vazio.txt

REM ******************** WINDOWS TEMP ********************
REM cria arquivo vazio.txt dentro da pasta \Windows\Temp

type nul > c:\Windows\Temp\vazio.txt

REM Apaga todos arquivos da pasta \Windows\Temp, mantendo das pastas
	
	for /R "C:\Windows\Temp\" %%G in (*) do (del /F /Q "%%G" 2>nul)

REM del c:\Windows\Temp\* /s /q

REM Apaga arquivo vazio.txt dentro da pasta \Windows\Temp

	del c:\Windows\Temp\vazio.txt

REM ******************** LIXEIRA ********************

	rd /s /q C:\$Recycle.Bin
