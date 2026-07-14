{
  ...
}:

{
  imports = [

    #DESKTOP
    ./modules/desktop/gnome/extensions.nix
    ./modules/desktop/gnome/settings.nix
    ./modules/desktop/niri/default.nix
    ./modules/desktop/niri/noctalia/default.nix

    #DEV
    ./modules/dev/editors/zed/zed.nix
    ./modules/dev/editors/helix/helix.nix
    ./modules/dev/languages/default.nix

    #PACKAGES
    ./modules/packages/games.nix
    ./modules/packages/others.nix
    ./modules/packages/system.nix

    #terminal and shell
    #./modules/terminal/alacritty/alacritty.nix
    ./modules/terminal/kitty/kitty.nix
    ./modules/terminal/shell/zsh.nix
    ./modules/terminal/starship/default.nix
    #programs
    ./modules/settings/programs/others.nix

    #SETTINGS
    ./modules/settings/fastfetch/fastfetch.nix

  ];

  #home
  home.username = "naryashi";
  home.homeDirectory = "/home/naryashi";
  # home.packages = with pkgs; [

  # ];

  nixpkgs.config.allowUnfree = true;

  home.stateVersion = "25.11";
}
