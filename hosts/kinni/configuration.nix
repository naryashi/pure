{
  ...
}:
{
  imports = [
    ./boot.nix
    ./fs.nix
    ./hardware.nix
    ./hardware-configuration.nix
    # ./desktop/niri/default.nix
    #./desktop/budgie/default.nix
    #./desktop/gnome/settings/default.nix
    ./desktop/plasma/settings/default.nix
    ./dev/default.nix
    ./dev/libraries.nix
    ./modules/programs/default.nix
    ./modules/programs/services.nix
    ./modules/system/settings.nix
    ./packages/default.nix
    ./packages/settings.nix
    ./profiles/powersave.nix
  ];

  nix.settings.experimental-features = [
    "nix-command"
    "flakes"
  ];

  nix.extraOptions = ''
    experimental-features = nix-command flakes
  '';

  systemd.services.fwupd-refresh = {
    enable = false;
    wantedBy = [ ];
  };

  system.stateVersion = "26.05"; # Did you read the comment?

}
