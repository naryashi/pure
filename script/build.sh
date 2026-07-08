#!/usr/bin/env bash
#automatized install :)


sudo rm -rf ~/pure/hosts/kinni/hardware-configuration.nix

sudo mv ~/pure /

sudo chown -R naryashi:users /pure

sudo chmod u+w /pure

sudo cp /etc/nixos/hardware-configuration.nix

clear

sudo nixos-rebuild switch --flake path:/pure#kinni

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

NH_OS_FLAKE=/pure nh os switch -u

echo "End :3"
