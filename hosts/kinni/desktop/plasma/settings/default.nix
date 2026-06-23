{
  lib,
  pkgs,
  ...
}:
{

  services = {
    #SDDM
    displayManager.sddm = lib.mkDefault {
      enable = true;
      wayland.enable = true;
      autoNumlock = true;

    };

    #PLASMA ENVIROMENT
    desktopManager.plasma6.enable = lib.mkDefault true;

  };

  environment.systemPackages = with pkgs; [
    kdePackages.kate
    kdePackages.kcalc

    #themes
    catppuccin-kde

  ];

  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    plasma-browser-integration
    elisa
    discover
    gwenview
    plasma-nano
    plasma5support
    kwalletmanager
    plasma-systemmonitor
    sweeper
    baloo
  ];

}
