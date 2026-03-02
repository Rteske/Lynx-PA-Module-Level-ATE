@echo off
REM Activate the venv and run lynx_simple_top_level.py
SET VENV_DIR=%~dp0venv
IF EXIST "%VENV_DIR%\Scripts\activate.bat" (
    CALL "%VENV_DIR%\Scripts\activate.bat"
    python lynx_simple_top_level.py
) ELSE (
    echo Virtual environment not found in %VENV_DIR%
    pause
)
