{

  inputs,
  pkgs,
  ...
}:
{
  imports = [
    inputs.niri.homeModules.niri
    ./noctalia/default.nix
  ];

  programs.niri = {
    enable = true;
    config = builtins.readFile ./config/config.kdl;
  };

  programs = {

    alacritty.enable = true;
    fuzzel.enable = true;
    waybar.enable = false;
  };
  services = {
    mako.enable = false;
    swayidle.enable = true;
    polkit-gnome.enable = true;
  };
  home.packages = with pkgs; [

    swaybg # wallpaper
    xwayland-satellite

  ];

}
