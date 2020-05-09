@echo off
rem Put your settings in place of the dots
rem Remember! set assignment is space-sensitive!
 
set unicaldown_folder_path=...
set fiscal_code=...
set urls_file_path="..."
set output_folder_path="..."
set quality_number=...

cd /D %unicaldown_folder_path%

@echo.
@echo.
node unicaldown.js -u %fiscal_code% -f %urls_file_path% -o %output_folder_path% -q %quality_number%
@echo.
@echo.
@echo Press a key to terminate . . .
@pause >nul

