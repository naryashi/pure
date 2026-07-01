{
  ...
}:
{

  services.xserver.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  #enable flatpak
  services.flatpak.enable = true;

  #piper lib
  services.ratbagd.enable = true;

  services.upower.enable = true;

}
