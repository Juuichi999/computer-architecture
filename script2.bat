@echo off
setlocal
set filePath=%1

if "%filePath%"=="-h" (
    echo Usage: script2.bat [file path]
    echo This script opens the file at the specified path.
    exit /b 0
)

if not defined filePath (
    echo No file path specified.
    exit /b 1
)

if not exist %filePath% (
    echo File %filePath% does not exist.
    exit /b 2
)

start/wait "" "%filePath%"

if errorlevel 1 (
    echo Failed to open file %filePath%.
    exit /b 3
)

endlocal
exit /b 0