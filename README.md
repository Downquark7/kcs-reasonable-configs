# KC's Reasonable Hyprland Configs
This is where I'll keep my configs I use for Hyprland.

I'm trying to make them easy ish to edit, so someone new could use these, so let me know if I can change anything to make it easier to edit.

## Gallery

![](https://raw.githubusercontent.com/KCkingcollin/kcs-reasonable-configs/main/Preview-1.png)

![](https://raw.githubusercontent.com/KCkingcollin/kcs-reasonable-configs/main/Preview-2.png)

![](https://raw.githubusercontent.com/KCkingcollin/kcs-reasonable-configs/main/Preview-3.png)

## How to use
If you're on something other than arch then I'm sorry to say I will not be able to help you.

### Install Script

If you use arch you can use this script instead of doing all the steps individually, HOWEVER this script will OVERWRITE you're configs and install all the optional apps as well, it'll also make a backup of any old configs in their respective folders with the ".bac" extension.
#### 1. Download the [install script](https://github.com/KCkingcollin/kcs-reasonable-configs/blob/main/Install.sh)

You can do this in the terminal with:

```
git clone https://github.com/KCkingcollin/kcs-reasonable-configs
cd kcs-reasonable-configs
```

note: you'll need to install ``git``

#### 2. Now run the script in a terminal (you will need to give sudo your password)

```
source Install.sh
```


Thats it really, Just select hyprland at login and login normaly.

note: Depending on the previous DE, you might get drooped into a black screen. DON'T PANIC, just press Ctrl+Alt+F1 or try F2-F9 if F1 doesn't show the gdm login.

### Dependencies
#### Arch repos
(I didn't check which repos, most likely a lot is in the extra repo)
```
hyprpaper
waybar
swaync
playerctl
polkit-gnome
gnome-keyring
pipewire
wireplumber
xdg-desktop-portal-hyprland
otf-geist-mono-nerd
otf-font-awesome
pavucontrol
nm-connection-editor
networkmanager
blueman
git
cpio
meson
cmake
npm
gtk2
gtk3
gtk4
```
Easy commands you can Ctrl+C (Copy) Ctrl+Shift+v into your term
```
sudo pacman -S hyprpaper waybar swaync playerctl polkit-gnome gnome-keyring pipewire wireplumber xdg-desktop-portal-hyprland otf-geist-mono-nerd otf-font-awesome pavucontrol nm-connection-editor networkmanager blueman git cpio meson cmake npm gtk2 gtk3 gtk4
```


#### AUR
```
hyprland-git
hyprland-plugin-hyprbars-git
hy3-git
hyprshot
nvim-packer-git
oh-my-zsh-git
nwg-shell
```

Easy commands you can Ctrl+C (Copy) Ctrl+Shift+v into your term
(You'll need to install [yay](https://github.com/Jguer/yay) to use this command)
```
yay -S hyprshot nvim-packer-git oh-my-zsh-git hyprland-git hyprland-plugin-hyprbars-git hy3-git nwg-shell
```

~~#### Hyprpm~~ 
~~```~~
~~hyprbars~~
~~```~~
~~Easy commands you can Ctrl+C (Copy) Ctrl+Shift+v into your term:~~
~~```~~
~~hyprpm add https://github.com/hyprwm/hyprland-plugins~~
~~hyprpm enable hyprbars~~
~~```~~


#### Other/optional
I personally use these, but they can be changed in ``~/.config/hypr/custom/settings.conf`` under "VARIABLES".
Just make sure you either install these or set your own, otherwise some things might not work.
Also, unless you plan to run hyprland via the ``Hyprland`` command every time I'd suggest installing ``gdm``.
```
rofi-wayland
neovim
foot
nemo
gdm
zsh
zsh-autosuggestions
zsh-syntax-highlighting
zsh-history-substring-search
neofetch
kdeconnect
```
Easy commands you can Ctrl+C (Copy) Ctrl+Shift+v into your term:
```
sudo pacman -S flatpak nemo rofi-wayland neovim foot gdm zsh-autosuggestions zsh-syntax-highlighting zsh-history-substring-search neofetch kdeconnect
flatpak remote-add --system flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install org.mozilla.firefox/x86_64/stable
```

### Installation

1. Clone this repo into you're home folder
```
git clone https://github.com/KCkingcollin/kcs-reasonable-configs
```

2. Copy files into you're config directory
```
cd kcs-reasonable-configs
cp -r hypr waybar swaync foot nvim rofi ~/.config/
cp background.jpg ~/Pictures/background.jpg
cp -r .zshrc .gtkrc-2.0 .icons/ .themes/ ~/
```

### Set up

#### 1. Hyprland
1. You should see the "hyprland" option in you're display manager (login screen), select it and loggin.

2. If it dosen't start right away then double check you're logged out of any other shell session, and use Ctrl+Alt+F1-F12 to open a tty and run the command ``Hyprland`` (don't forget that "H" is capitalized)

3. If the ``Hyprland`` command runs, but not when selecting it at login you may want to try a diffrent display manager like [gdm](https://wiki.archlinux.org/title/Display_manager#Loading_the_display_manager) (you need to disable any other display manager).
#### 2. Neovim
1. Open neovim with either Super(win)+e or by typing ``nvim`` in any terminal.

2. Type ``:`` and then type ``PackerSync`` then hit enter and PackerSync will do the rest.

    note: If you're new to Neovim and want to try it with my configs then you'll have a relatively easy time, just use ``:help`` if you're ever lost, and if you want to get better at moving around in vim I also have the ThePrimeagen's "VimBeGood" plugin added just type ``:VimBeGood``, also check out [his introduction to vim on yt](https://youtube.com/playlist?list=PLm323Lc7iSW_wuxqmKx_xxNtJC_hJbQ7R&si=ytzhuJLDkFTVtJi3)

#### 3. ZSH
1. Set zsh as your default shell with this command ``chsh -s /bin/zsh``
