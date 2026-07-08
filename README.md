# pure-nix ❄️

A minimal NixOS configuration for daily driving.

This repo contain my NixOS configuration and my wallpaper :)

Special thanks to [thou vow](https://github.com/thou-vow) for support.

> **Note**: This setup works for me — on my machine. Yours may differ.

---

## Hardware

| Component | Spec |
|-----------|------|
| Laptop | ThinkBook 14 G3 ACL |
| CPU | Ryzen 5 5600U |
| RAM | 16GB DDR4 (3200 MHz) |
| GPU | AMD Radeon Graphics (integrated) |
| Desktop | GNOME / Mutter (Wayland) |

---

## Structure
```
├── flake.lock
├── flake.nix
├── hosts
│   └── kinni
│       ├── boot.nix
│       ├── configuration.nix
│       ├── desktop
│       │   ├── gnome
│       │   │   └── settings
│       │   │       └── default.nix
│       │   ├── niri
│       │   │   └── default.nix
│       │   └── plasma
│       │       └── settings
│       │           └── default.nix
│       ├── dev
│       │   ├── container.nix
│       │   └── libraries.nix
│       ├── fs.nix
│       ├── hardware-configuration.nix
│       ├── hardware.nix
│       ├── home-manager
│       │   └── naryashi
│       │       ├── home.nix
│       │       └── modules
│       │           ├── desktop
│       │           │   ├── gnome
│       │           │   │   ├── extensions.nix
│       │           │   │   └── settings.nix
│       │           │   └── niri
│       │           │       ├── config.kdl
│       │           │       ├── default.nix
│       │           │       └── noctalia
│       │           │           └── default.nix
│       │           ├── dev
│       │           │   ├── editors
│       │           │   │   ├── helix
│       │           │   │   │   └── helix.nix
│       │           │   │   └── zed
│       │           │   │       └── zed.nix
│       │           │   └── languages
│       │           │       └── default.nix
│       │           ├── packages
│       │           │   ├── games.nix
│       │           │   ├── others.nix
│       │           │   └── system.nix
│       │           ├── settings
│       │           │   ├── fastfetch
│       │           │   │   └── fastfetch.nix
│       │           │   └── programs
│       │           │       └── others.nix
│       │           └── terminal
│       │               ├── alacritty
│       │               │   └── alacritty.nix
│       │               ├── kitty
│       │               │   └── kitty.nix
│       │               └── shell
│       │                   ├── fish.nix
│       │                   └── zsh.nix
│       ├── modules
│       │   ├── programs
│       │   │   ├── appimage.nix
│       │   │   ├── default.nix
│       │   │   └── services.nix
│       │   └── system
│       │       └── settings.nix
│       ├── packages
│       │   ├── default.nix
│       │   └── settings.nix
│       └── profiles
│           └── powersave.nix
├── README.md
├── script
│   └── build.sh
└── ystemctl status home-manager-naryashi.serviceq

36 directories, 40 files
```
---

## Note

This is my personal setup.  
It fits my ThinkBook and my preferences.  
Yours may differ — and that's fine.

If you find something useful here, feel free to borrow, adapt, or ignore. ✨
