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
    # ./desktop/gnome/settings/gdm.nix
    # ./desktop/gnome/settings/default.nix
    # ./desktop/gnome/settings/packages.nix
    #./desktop/gnome/settings/stylix.nix
    ./desktop/plasma/settings/default.nix
    ./desktop/plasma/settings/packages.nix
    ./desktop/plasma/settings/sddm.nix
    ./dev/default.nix
    ./dev/git.nix
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
