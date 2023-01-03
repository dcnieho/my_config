# setup

0. clone this repo to %USERPROFILE%/.config
1. install windows terminal from the windows store
2. install up to date powershell from the windows store
3. in turn windows features on or off, enable virtual machine platform
4. install ubuntu (no version, thats the latest) from windows store
5. on windows install nerd font https://www.nerdfonts.com/font-downloads, Caskaydia Cove. Install the non-mono (no ligatures) Windows compatible one: Caskaydia Cove Nerd Font Complete Windows Compatible Regular.otf
6. on Linux/WSL, install zsh and oh my posh: `sudo wget https://github.com/JanDeDobbeleer/oh-my-posh/releases/latest/download/posh-linux-amd64 -O /usr/local/bin/oh-my-posh` and `sudo chmod +x /usr/local/bin/oh-my-posh`
7. to install font on wsl, just use `oh-my-posh font install`
8. edit windows terminal settings, replace file with file in /copies/WindowsTerminal
9. on windows, install oh my posh with winget: `winget install JanDeDobbeleer.OhMyPosh -s winget`
10. make powershell $PROFILE, creating it if needed (`New-Item -ItemType File -Path $PROFILE -Force`). Put only one line in it: `. "$HOME\.config\powershell\profile.ps1"`. Also make a file `Microsoft.VSCode_profile.ps1` next to it, and put in it the line `. "$(Split-Path $profile -Parent)\Microsoft.PowerShell_profile.ps1"`
11. install cling, add the file in /copies/cling to its scripts directory (See `cling info` for where that is)