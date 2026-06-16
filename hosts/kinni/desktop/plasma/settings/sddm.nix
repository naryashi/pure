{
  pkgs,
  lib,
  ...
}:
{
  #SDDM
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    autoNumlock = true;

  };

  programs.ssh.askPassword = lib.mkDefault "${pkgs.kdePackages.ksshaskpass.out}/bin/ksshaskpass";

}
