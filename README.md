# py-requirements.txt-refreshing-windows
Refreshing python requirements:
- Installing libraries from requirements.txt to a target conda environment
- Refreshing the requirements.txt considering a conda environment


  


# Prerequisites for usage #
1) Copy the two batch scripts to the root directory of your python project:
- ROOT_DIR
  - ...
  - requirements.txt
  - requirements_install_windows.bat
  - requirements_update_file_windows.bat
  
2) Open Anaconda prompt and run "conda init powershell"

3) Then activate the desired environment in PowerShell using "conda activate <env>"

4) Run "conda install pipreqsnb"
