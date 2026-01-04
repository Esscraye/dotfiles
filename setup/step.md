```sh
loadkeys fr
archinstall
```
minimal configuration

puis premier paquet, pour firefox, sélectionner les valeurs par défaut
```sh
sudo pacman -S hyprland vim ghostty flatpak
sudo pacman -S firefox
hyprland
```

close it with `super M`
then edit the file :

```sh
cd .config/hypr/
vim hyprland.conf
```

change layout, screen resolution

```sh
flatpak install com.ml4w.dotfilesinstaller
```
run firefox get the release from my linux for work installer
```sh
flatpak run com.ml4w.dotfilesinstaller
```

install the dotfiles and reboot
```sh
yay -S localsend-bin
```

