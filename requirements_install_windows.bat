:: This script parses ./requirements.txt.
:: All libraries from this file are then installed to the target conda environment.

:: Prerequisites
:: 1) Open Anaconda prompt and run "conda init powershell"
:: 2) Then activate the desired environment in PowerShell using "conda activate <env>"
:: 3) Copy this .bat file to the target directory of requirements.txt

@echo off
set currpath=%cd%
set /p ENV=Enter the conda environment name, where the libraries should be installed:
echo Activating conda environment '%ENV%' and installing requirements. This may take several minutes...
powershell.exe -Command "& {conda activate %ENV%;pip install -r requirements.txt}"
echo Libraries from requirements.txt successfully installed
echo =========
for /f "delims=" %%a in (requirements.txt) do (
  echo %%a
)
echo =========
pause
exit