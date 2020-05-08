@echo off
rem set assignment is space-sensitive
 
set unicaldown_folder_path=...
set fiscal_code=...
set urls_file_path="..."
set output_folder_path="..."
set quality_number=...

cd /D %unicaldown_folder_path%

rem Coffee is already running?
tasklist /FI "IMAGENAME eq Coffee.exe" 2>NUL | find /I /N "Coffee.exe">NUL
if "%ERRORLEVEL%"=="0" (
	@echo Coffee is already running.
) else (
	@echo Taking a Coffee . . .
	start /min Coffee.exe
)

@echo.
@echo.
node unicaldown.js -u %fiscal_code% -f %urls_file_path% -o %output_folder_path% -q %quality_number%
@echo.
@echo.
@echo Closing Coffee . . .
taskkill /im Coffee.exe /t /f >nul
@echo Press a key to terminate . . .
@pause >nul

