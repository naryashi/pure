{
  pkgs,
  lib,
  ...
}:
{

  #GDM
  services.displayManager.gdm.enable = true;

  services.desktopManager.gnome.enable = lib.mkDefault true;

  #gnome services and default packages
  services.gnome.core-apps.enable = false;
  services.gnome.core-developer-tools.enable = false;
  services.gnome.games.enable = false;
  services.gnome.localsearch.enable = false;

  #my packages for gnome
  environment.systemPackages = with pkgs; [
    ptyxis
    gnome-tweaks
    nautilus
    dconf-editor
    gnome-color-manager
  ];

  #exclude pkgs
  environment.gnome.excludePackages = with pkgs; [
    gnome-calendar
    gnome-characters
    gnome-clocks
    gnome-connections
    gnome-contacts
    gnome-logs
    gnome-maps
    gnome-music
    gnome-software
    gnome-system-monitor
    gnome-weather
    gnome-tour
    xterm
    gnome-text-editor
    gnome-disk-utility
  ];
}
