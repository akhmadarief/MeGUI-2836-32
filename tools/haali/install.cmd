SET ERRORLEVEL=
regsvr32.exe /s "%~dp0splitter.ax"
SET ERRLEVEL=%ERRORLEVEL%
IF %ERRLEVEL%==0 (
	REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\MeGUIHaali" /v "DisplayName" /d "MeGUI Haali Media Splitter" /f
    REG ADD "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\MeGUIHaali" /v "UninstallString" /d "%~dp0uninstall.cmd" /f
    EXIT /B 0
)
EXIT /B %ERRLEVEL%