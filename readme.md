# setup

0. clone this repo to %USERPROFILE%/.config
1. install windows terminal from the windows store
2. install up to date powershell from the windows store
3. in turn windows features on or off, enable windows subsystem for linux and virtual machine platform
4. install ubuntu (no version, thats the latest) from windows store. Follow https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-11-with-gui-support. Follow https://ubuntu.com/tutorials/enabling-gpu-acceleration-on-ubuntu-on-wsl2-with-the-nvidia-cuda-platform#1-overview. Install some extra packages: `sudo apt-get install g++ gdb make ninja-build rsync zip libxcb-xinerama0 libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-render-util0 mesa-utils giggle wslu libopengl0 freeglut3 freeglut3-dev libxdamage1`. Run `code .` to set up visual studio code from within WSL support.
5. on windows install nerd font https://www.nerdfonts.com/font-downloads, Caskaydia Cove. Install the non-mono (no ligatures) Windows compatible one: Caskaydia Cove Nerd Font Complete Windows Compatible Regular.otf
6. on Linux/WSL, install oh my posh: `sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh` and `sudo chmod +x /usr/local/bin/oh-my-posh`
7. https://github.com/Peltoche/lsd/releases/ get latest lsd_0.23.1_amd64.deb, install `cd /mnt/c/users/huml-dkn/Downloads` `sudo dpkg -i lsd_0.23.1_amd64.deb`
8. to ~/.bashrc, add `configPath=$(wslpath -u $(wslvar USERPROFILE))/".config"/"oh-my-posh"/"thewickedd.omp.json"` and `eval "$(oh-my-posh init bash --config $configPath)"`. Also add `alias ls=lsd`. Save and close. Install https://github.com/akinomyoga/ble.sh/ using the quick install instructions. copy /copies/bash/.blerc to ~. ble.sh provides syntax highlighting and autocompletion, amongst other things.
9. edit windows terminal settings, replace file with file in /copies/WindowsTerminal
10. on windows, install oh my posh with winget: `winget install JanDeDobbeleer.OhMyPosh -s winget`
11. make powershell $PROFILE, creating it if needed (`New-Item -ItemType File -Path $PROFILE -Force`). Put only one line in it: `. "$HOME\.config\powershell\profile.ps1"`. Also make a file `Microsoft.VSCode_profile.ps1` next to it, and put in it the line `. "$(Split-Path $profile -Parent)\Microsoft.PowerShell_profile.ps1"`. Missing modules will be installed upon execution of the profile.
12. install cling, have it autostart, add the file in /copies/cling to its scripts directory (See `cling info` for where that is)
13. after vscode install: install the extensions listed in /copies/VSCode/extension_list.txt, and use settings.json as our settings
14. put /copies/bash/.inputrc into ~ on linux


# Why no zsh
Its a bridge to far for me. Nicer prompt possibilities than with bash and the internet tells me there are lots of cool plugins, but immediately i have trouble. E.g. the integration to start windows exes doesn't work: `explorer.exe .` tells me command not found. No need to explore how to make this work, lets stick with the default before i shoot myself in the foot again.