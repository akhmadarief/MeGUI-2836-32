regsvr32.exe /u /s "%~dp0splitter.ax"
REG DELETE "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\MeGUIHaali" /f
EXIT /B 0