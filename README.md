# Screenshots

![screenshot](https://github.com/nadeemohc/dotfiles-hyprland-/blob/main/assets/hyprpaper.png)

![screenshot](https://github.com/nadeemohc/dotfiles-hyprland-/blob/main/assets/main.png)

![screenshot](https://github.com/nadeemohc/dotfiles-hyprland-/blob/main/assets/rofi.png)

![screenshot](https://github.com/nadeemohc/dotfiles-hyprland-/blob/main/assets/lock.png)

![screenshot](https://github.com/nadeemohc/dotfiles-hyprland-/blob/main/assets/wlogout.png)




## Installation
> Installing the base theme <3

```
git clone https://github.com/jemhv/hypr-dune.git
cp -r hypr-dune/{theme-name}/* ~/.config/

```
> theme-name = Hypr-dune , Hypr-dune-black

> Installing the prompt theme :)

```
cd starship
cp -r {theme-name} ~/.config/starship.toml

```
> theme-name = dune.toml, dune-black.toml

#### Please keep the following dependencies installed :3

> waybar rofi hyprlock hypridle hyprpaper nerd-fonts grim slurp

#### Optional for all modules to work in waybar

>nm-connection-editor blueman-manager brightneddctl pavucontrol power-profiles-daemon

#### Extra added key-bindings
```
mainMod + G =                     opens rofi
mainMod + B =                     opens firefox
mainMod + L =                     locks the screen (uses Hyprlock)
mainMod + Print =                 takes fullscreen screenshot
mainMod + Shift + Print =         takes regional screen shot

```
