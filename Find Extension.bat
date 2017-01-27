@echo off
cls

Title Find Extension- King of Hearts (2015)     v 4.01

set "extension=dir"
set "path=dir"
set "Target=dir"
set "report=dir"

:Path1
set/p "path=Enter Path to search (C:\Users): "
goto :Extension1

:Extension1
echo.
set/p "extension=Enter Extension (*.jpg): "
goto :report

:report
echo.
set/p "report=Enter Report name (jpgExtension.txt): "
goto :Target

:Target
echo.
set/p "Target=Enter target of generated report: "
goto :Print1

:Print1
cd %path%
dir/s /a %extension% > "%Target%\%report%"
echo.
echo.
echo A report of all files of the specified extension and location can be found 
echo in the specified target.
echo.
start %Target%\%report%

pause