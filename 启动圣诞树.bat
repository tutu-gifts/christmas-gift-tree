@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo Starting local server at http://localhost:8123 ...
start "" cmd /c "python -m http.server 8123"
timeout /t 2 >nul
start "" "http://localhost:8123/index.html"
echo Server is running. Close the server window to stop it.
