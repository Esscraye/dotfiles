# Dotfiles pour Hyprland

Une configuration avancée pour le gestionnaire de fenêtres en mosaïque dynamique Hyprland, basée sur les dotfiles ML4W.

## 🏗️ Structure

```
~/.mydotfiles/
├── com.esscraye.dotfiles.dev/  # Dotfiles Personnels (géré automatiquement)
├── dotfiles/                   # Mes configurations personnalisées
├── setup/                      # Scripts d'installation complet
├── .gitignore                  # Fichiers à ignorer
├── LICENSE                     # License d'utilisation du projet
└── README.md                   # Cette documentation
```

## 🚀 Installation

### Prérequis
1. Arch Linux installé
2. ML4W Dotfiles installé (disponible sur flathub) : <a href="https://esscraye.github.io/dotfiles-installer/" target="_blank"><img src="https://mylinuxforwork.github.io/dotfiles-installer/dotfiles-installer-badge.png" style="border:0;margin-bottom:10px"></a>


### Installation avec dotinst (Recommandée)

Copiez et collez l'url suivante dans l'installateur ML4W Dotfiles :

```
https://raw.githubusercontent.com/esscraye/dotfiles/main/hyprland-dotfiles.dotinst
```


> **💡 Pourquoi dotinst ?**
> - Installation propre sans conflits
> - Gestion automatique des dépendances
> - Configuration interactive
> - Mises à jour intelligentes
> - Rollback facile en cas de problème

### Installation manuelle (sans script)
```bash
# Créer les liens symboliques
ln -sf ~/.mydotfiles/my-personal-config/hypr/custom.conf \
       ~/.mydotfiles/com.ml4w.dotfiles/.config/hypr/conf/custom.conf

ln -sf ~/.mydotfiles/my-personal-config/nvim/init.lua \
       ~/.config/nvim/init.lua

# Installer les scripts
mkdir -p ~/.local/bin
for script in ~/.mydotfiles/my-personal-config/scripts/*; do
    ln -sf "$script" ~/.local/bin/$(basename "$script")
done
```

## Inspirations

Cette configuration est basée sur la configuration ML4W Dotfiles.
