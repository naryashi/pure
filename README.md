# pure-nix ❄️

A minimal NixOS configuration for daily driving.

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

## Storage Layout
```
nvme0n1                 259:0    0 476,9G  0 disk  
├─nvme0n1p1             259:1    0     1G  0 part  /boot
├─nvme0n1p2             259:2    0    16G  0 part  [SWAP]
├─nvme0n1p3             259:3    0  71,4G  0 part  
└─nvme0n1p5             259:4    0 388,5G  0 part  /home

```
---

## Structure
```
├── hosts
│   └── kinni
│       ├── boot.nix
│       ├── configuration.nix
│       ├── desktop
│       │   ├── gnome
│       │   │   └── settings
│       │   │       ├── default.nix
│       │   │       ├── gdm.nix
│       │   │       ├── packages.nix
│       │   │       └── stylix.nix
│       │   ├── niri
│       │   │   └── default.nix
│       │   └── plasma
│       │       └── settings
│       │           ├── default.nix
│       │           ├── packages.nix
│       │           └── sddm.nix
│       ├── dev
│       │   ├── default.nix
│       │   ├── git.nix
│       │   └── libraries.nix
│       ├── emi.nix
│       ├── fs.nix
│       ├── hardware-configuration.nix
│       ├── hardware.nix
│       ├── home-manager
│       │   └── nakko
│       │       ├── home.nix
│       │       ├── modules
│       │       │   ├── desktop
│       │       │   │   ├── gnome
│       │       │   │   │   ├── extensions.nix
│       │       │   │   │   └── settings.nix
│       │       │   │   └── niri
│       │       │   │       ├── binds.nix
│       │       │   │       └── default.nix
│       │       │   ├── dev
│       │       │   │   ├── editors
│       │       │   │   │   └── zed.nix
│       │       │   │   └── languages
│       │       │   │       └── default.nix
│       │       │   ├── packages
│       │       │   │   ├── games.nix
│       │       │   │   ├── others.nix
│       │       │   │   └── system.nix
│       │       │   └── terminal
│       │       │       ├── alacritty
│       │       │       │   └── alacritty.nix
│       │       │       └── fish.nix
│       │       └── programs.nix
│       ├── modules
│       │   ├── programs
│       │   │   ├── default.nix
│       │   │   └── services.nix
│       │   └── system
│       │       └── settings.nix
│       ├── packages
│       │   ├── default.nix
│       │   └── settings.nix
│       └── profiles
│           └── powersave.nix
└── README.md

27 directories, 39 files
```
---
## Current Packages

1926 (nix-system), 1070 (nix-user)


---

## Note

This is my personal setup.  
It fits my ThinkBook and my preferences.  
Yours may differ — and that's fine.

If you find something useful here, feel free to borrow, adapt, or ignore. ✨
