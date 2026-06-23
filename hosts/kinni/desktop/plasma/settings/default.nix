{
  pkgs,
  ...
}:
{

  services = {
    #SDDM
    displayManager.sddm = {
      enable = true;
      wayland.enable = true;
      autoNumlock = true;

    };

    #PLASMA ENVIROMENT
    desktopManager.plasma6.enable = true;

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
    kwalletmanager
    plasma-systemmonitor
    sweeper
    baloo
  ];

}
