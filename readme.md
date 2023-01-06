# setup

## first steps
0. clone this repo to %USERPROFILE%/.config
1. install windows terminal from the windows store
2. install up to date powershell from the windows store
3. in turn windows features on or off, enable windows subsystem for linux and virtual machine platform

## windows
1. on windows install nerd font https://www.nerdfonts.com/font-downloads, Caskaydia Cove. Install the non-mono (no ligatures) Windows compatible one: `Caskaydia Cove Nerd Font Complete Windows Compatible Regular.otf`
2. on windows, install oh my posh with winget: `winget install JanDeDobbeleer.OhMyPosh -s winget`
3. make powershell $PROFILE, creating it if needed (`New-Item -ItemType File -Path $PROFILE -Force`). Put only one line in it: `. "$HOME\.config\powershell\profile.ps1"`. Also make a file `Microsoft.VSCode_profile.ps1` next to it, and put in it the line `. "$(Split-Path $profile -Parent)\Microsoft.PowerShell_profile.ps1"`. Missing modules will be installed upon execution of the profile.
4. install cling, during setup select to have it autostart
5. add the file in /copies/cling to its scripts directory (See `cling info` for where that is)
6. after vscode install: install the extensions listed in /copies/VSCode/extension_list.txt, and use settings.json as our settings

## Ubuntu (WSL)
1. install ubuntu (no version, thats the latest) from windows store. Follow https://ubuntu.com/tutorials/install-ubuntu-on-wsl2-on-windows-11-with-gui-support.
2. Follow https://ubuntu.com/tutorials/enabling-gpu-acceleration-on-ubuntu-on-wsl2-with-the-nvidia-cuda-platform#1-overview.
3. Install some extra packages: `sudo apt-get install g++ gdb make ninja-build rsync zip libxcb-xinerama0 libxcb-icccm4 libxcb-image0 libxcb-keysyms1 libxcb-render-util0 mesa-utils giggle wslu libopengl0 freeglut3 freeglut3-dev libxdamage1`.
4. Run `code .` to set up visual studio code from within WSL support.
5. Install oh my posh: `sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh` and `sudo chmod +x /usr/local/bin/oh-my-posh`
6. execute `sudo apt install exa`
7. `sudo apt-get install zsh` and `sudo chsh -s $(which zsh)`. If that doesn't work, do `sudo usermod -s /bin/zsh hunl-dkn`.
8. `cp $(wslpath -u $(wslvar USERPROFILE))/.config/copies/zsh/.zshrc ~/.zshrc` and `cp $(wslpath -u $(wslvar USERPROFILE))/.config/copies/zsh/dircolors ~/.zsh/dircolors`

## once done
1. edit windows terminal settings, merge file with file in /copies/WindowsTerminal (in case some edit registrations changed)


# TODO:
This repo has an immense amount of config that i can still learn a lot from. Such as the gitconfig alone.
https://github.com/benallred/configs


# not used
## bash
1. to ~/.bashrc, add `configPath=$(wslpath -u $(wslvar USERPROFILE))/".config"/"oh-my-posh"/"thewickedd.omp.json"` and `eval "$(oh-my-posh init bash --config $configPath)"`. Also add `alias ls='exa --icons --group-directories-first'`.
2. Install https://github.com/akinomyoga/ble.sh/ using the quick install instructions. copy /copies/bash/.blerc to ~. ble.sh provides syntax highlighting and autocompletion, amongst other things. Note: i did not like ble.sh, it got in the way of just typing too much as i think under the hood it is rewriting what you type all the time and that wasn't smooth for me.
3. put /copies/bash/.inputrc into ~ on linux