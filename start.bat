@echo off
REM ============================================================
REM  Noten-Scanner starten
REM  Startet einen lokalen Server (noetig fuer die Live-Kamera)
REM  und oeffnet die App im Standard-Browser.
REM  Zum Beenden: das Server-Fenster schliessen.
REM ============================================================

cd /d "%~dp0"

REM Server in eigenem Fenster starten (py-Launcher, sonst python)
start "Noten-Scanner Server (zum Beenden schliessen)" cmd /k "py -m http.server 5577 2>nul || python -m http.server 5577"

REM Kurz warten, damit der Server bereit ist, dann Browser oeffnen
timeout /t 2 >nul
start "" "http://localhost:5577/"

exit
