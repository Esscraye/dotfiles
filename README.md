# Configuration Arch Linux avec Hyprland - Configuration Complète

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
2. ML4W Dotfiles installé (https://mylinuxforwork.github.io/dotfiles/)

### Installation avec dotinst (Recommandée)
```bash
# Cloner ce repository
git clone <votre-repo> ~/.mydotfiles
cd ~/.mydotfiles

# Installation avec dotinst (plus propre)
./setup/setup.sh
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

## Contribution

Cette configuration est basée sur la configuration ML4W Dotfiles.
