{
  pkgs,
  ...
}:
{

  dconf.settings = {
    "org/gnome/desktop/interface" = {
      color-scheme = "prefer-dark";
      accent-color = "purple";
      clock-format = "24h";
      enable-animations = true;

      gtk-theme = "Adwaita-dark";
      icon-theme = "Adwaita";
      cursor-theme = "Adwaita";
      font-name = "Adwaita Sans 11";
      text-scaling-factor = 1.0;
    };
  };

  gtk = {
    iconTheme = {
      name = "Adwaita";
      package = pkgs.adwaita;
    };

    gtk3.extraConfig = {
      Settings = ''
        gtk-application-prefer-dark-theme=1
      '';
    };
  };
}
