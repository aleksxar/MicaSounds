@echo off
echo taking ownership of C:\Windows\Media
takeown /f C:\Windows\Media /r /d y
echo granting full control permissions to current user
icacls C:\Windows\Media /grant "%USERNAME%:(F)" /t
echo copying sound files...
xcopy /s /y "sounds" "C:\Windows\Media\"
echo sound files copied successfully!
pause
