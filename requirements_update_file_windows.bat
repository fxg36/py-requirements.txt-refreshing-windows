:: This file scans all python imports recursively from the current directory
:: and for a specific conda environment.
:: The results are stored into ./requirements.txt

:: Prerequisites
:: 1) Open Anaconda prompt and run "conda init powershell"
:: 2) Then activate the desired environment in PowerShell using "conda activate <env>"
:: 3) Run "conda install pipreqsnb"
:: 4) Copy this .bat file to the target directory of requirements.txt

@echo off
set currpath=%cd%
set /p ENV=Enter the conda environment name, where the libraries are installed:
echo Activating conda environment '%ENV%' and scanning all imports incl. Jupyter Notebooks. This may take several seconds...
powershell.exe -Command "& {conda activate %ENV%; pipreqsnb --encoding utf-8 %currpath% --force}"
echo requirements.txt refreshed successfully
echo =========
for /f "delims=" %%a in (requirements.txt) do (
  echo %%a
)
echo =========
pause
exit