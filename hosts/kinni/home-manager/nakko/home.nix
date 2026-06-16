{
  ...
}:

{

  imports = [

    #DESKTOP
    #./modules/desktop/gnome/extensions.nix
    #./modules/desktop/gnome/settings.nix
    #./modules/desktop/niri/binds.nix
    #./modules/desktop/niri/default.nix

    #DEV
    ./modules/dev/editors/zed.nix
    ./modules/dev/languages/default.nix

    #PACKAGES
    ./modules/packages/games.nix
    ./modules/packages/others.nix
    ./modules/packages/system.nix

    #terminal and shell
    ./modules/terminal/alacritty/alacritty.nix
    ./modules/terminal/fish.nix

    #programs
    ./programs.nix

  ];

  #home
  home.username = "nakko";
  home.homeDirectory = "/home/nakko";
  # home.packages = with pkgs; [

  # ];

  nixpkgs.config.allowUnfree = true;

  home.stateVersion = "25.11";
}
