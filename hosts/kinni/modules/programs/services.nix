{
  ...
}:
{
  services = {
    xserver.enable = false;
    flatpak.enable = true;
    ratbagd.enable = true;
    upower.enable = true;
  };
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

}
