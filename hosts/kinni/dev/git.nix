{
  lib,
  pkgs,
  ...
}:

{

  programs.git = {
    enable = true;
  };

  programs.ssh.askPassword = "${pkgs.kdePackages.ksshaskpass.out}/bin/ksshaskpass";
}
