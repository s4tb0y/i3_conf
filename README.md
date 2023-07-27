# My i3 configuration - Running on Ubuntu 22.04

## ALready on Ubuntu but if not -> Prerequirements:
`pactl / sar`

## One line install command:
sudo apt install i3 i3blocks fonts-font-awesome brightnessctl jq feh i3lock xfce4-terminal

## Install i3 / i3blocks:
`sudo apt install i3`
`sudo apt install i3blocks`

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

You're going to need to write api_key for root-me in i3blocks conf file for both score and position commands. You're also going to need to write in i3 config file the path to your background image for both lock-screen (line 26) and wallpaper (line 14).

Download and put in `~/scripts/` directory `battery_status.sh` and `cpu_usage.sh` 
Press: `$mod+shift+r` to reload i3

