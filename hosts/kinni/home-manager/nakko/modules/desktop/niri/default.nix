{
  inputs,
  pkgs,
  ...
}:
{

  imports = [
    inputs.niri.homeModules.niri
  ];

  programs.niri.enable = true;
  programs.alacritty.enable = true; # Super+T in the default setting (terminal)
  programs.fuzzel.enable = true; # Super+D in the default setting (app launcher)
  programs.swaylock.enable = true; # Super+Alt+L in the default setting (screen locker)
  programs.waybar.enable = false; # launch on startup in the default setting (bar)
  services.mako.enable = true; # notification daemon
  services.swayidle.enable = true; # idle management daemon
  services.polkit-gnome.enable = true; # polkit
  home.packages = with pkgs; [

    swaybg # wallpaper
    xwayland-satellite

  ];

}
