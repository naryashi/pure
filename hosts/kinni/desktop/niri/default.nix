{
  pkgs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    niri
    noctalia-shell
    xdg-desktop-portal-gnome
    xdg-desktop-portal-gtk
  ];

  programs.niri = {
    enable = true;
  };

  services.dbus.enable = true;
  security.polkit.enable = true;
  systemd.user.services.niri-flake-polkit.enable = false;
  programs.xwayland.enable = true;

  xdg.portal = {
    config.niri = {
      "org.freedesktop.impl.portal.FileChooser" = [ "gtk" ]; # or "kde"
    };

    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gnome
      xdg-desktop-portal-gtk
    ];
  };

  xdg.portal.xdgOpenUsePortal = true;

}
