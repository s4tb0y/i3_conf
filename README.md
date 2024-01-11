# My i3 configuration - Running on Ubuntu 22.04

![image](https://github.com/s4tb0y/i3_conf/assets/85163610/1c1b544d-69a5-4f10-a405-ef8916715880)


## Already on Ubuntu but if not -> Prerequirements:
`pactl / sar`

## One line install command:
`sudo apt install i3 i3blocks fonts-font-awesome brightnessctl jq feh i3lock xfce4-terminal zsh`

## Install i3 / i3blocks:
`sudo apt install i3`
`sudo apt install i3blocks`

## Install i3gaps for gaps between windows:
Install depencies:

```
sudo apt install ninja-build meson libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev \
libxcb-util0-dev libxcb-icccm4-dev libyajl-dev \
libstartup-notification0-dev libxcb-randr0-dev \
libev-dev libxcb-cursor-dev libxcb-xinerama0-dev \
libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev \
autoconf libxcb-xrm0 libxcb-xrm-dev automake libxcb-shape0-dev
```

Build i3gaps:

```
cd /path/where/you/want/the/repository

# clone the repository
git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

# compile
mkdir -p build && cd build
meson ..
ninja
```

## Install fonts for workspace and system icons on i3blocks bar:
`sudo apt-get install fonts-font-awesome`

## Install brightnessctl for luminosity monitoring:
`sudo apt install brightnessctl`

## If you want root-me points/position displayed on i3bar install jsonquery package:
`sudo apt install -y jq`

## Install Feh for wallpaper
`sudo apt install feh`

## Install i3lock for screen locking with $mod+l:
`sudo apt install i3lock`

## Install xfce4-terminal for background image and customization:
Install: 
`sudo apt install xfce4-terminal`

Set default terminal on Debian based distros: `sudo update-alternatives --config x-terminal-emulator`

Customization: **Open Terminal** -> **Right Click** -> **Preferences...** -> **Appearance**

![image](https://github.com/s4tb0y/i3_conf/assets/85163610/aa2f07cb-f838-4c94-95d9-e520b4b7d69e)

## Zsh and OhMyZsh installation:
Installation zsh:
`sudo apt install zsh`

Set zsh as main shell:
`chsh -s $(which zsh)`

Launch OhMyZsh install script: `sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"`

If you have broken characters install fonts: `sudo apt install fonts-powerline`

Custom `~/.zshrc` file and apply changes with: `source ~/.zshrc`

**PowerLevel10k Theme:**

Clone repo: `git clone https://github.com/romkatv/powerlevel10k.git $ZSH_CUSTOM/themes/powerlevel10k`

And activate it by adding in your `.zshrc` file : `ZSH_THEME="powerlevel10k/powerlevel10k"`

Then config p10k: `p10k configure`

## Configure touchpad for natural scrolling and tapping:
Edit libinput conf file:
`sudo vim/nano/idontcarewhatedittool /usr/share/X11/xorg.conf.d/40-libinput.conf`
```bash
Section "InputClass"
        Identifier "libinput touchpad catchall"
        MatchIsTouchpad "on"
        MatchDevicePath "/dev/input/event*"
        Driver "libinput"
        Option "NaturalScrolling" "True"
        Option "Tapping" "on"
EndSection
```

## Config files and scripts:
Download and replace/move i3/i3blocks config files to `~/.config/[i3/i3blocks]`

DON'T FORGET TO MODIFY THE FIELDS `[...]` IN THE CONFS FILES !!!

You're going to need to write api_key and author id (the author id is the number before the `_` character in your api_key) for root-me in i3blocks conf file for both score and position commands:

![image](https://github.com/s4tb0y/i3_conf/assets/85163610/bf4d3211-e72e-43ea-bf75-7e1a291fbcc8)


You're also going to need to write in i3 config file the path to your background image for both lock-screen (line 26) and wallpaper (line 14):

![image](https://github.com/s4tb0y/i3_conf/assets/85163610/0d1fa845-4823-4690-82c8-c238fffc27cc)


Download and put in `~/scripts/` directory `battery_status.sh` and `cpu_usage.sh` 

Press: `$mod+shift+r` to reload i3

And you're done :)

