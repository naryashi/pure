{
  ...
}:

{
  imports = [

    #DESKTOP
    ./modules/desktop/gnome/extensions.nix
    ./modules/desktop/gnome/settings.nix
    ./modules/desktop/niri/default.nix

    #DEV
    ./modules/dev/editors/zed/zed.nix
    ./modules/dev/editors/helix/helix.nix
    ./modules/dev/languages/default.nix

    #PACKAGES
    ./modules/packages/games.nix
    ./modules/packages/others.nix
    ./modules/packages/system.nix

    #terminal and shell
    ./modules/terminal/alacritty/alacritty.nix
    ./modules/terminal/kitty/kitty.nix
    ./modules/terminal/shell/fish.nix
    ./modules/terminal/shell/zsh.nix

    #programs
    ./modules/settings/games.nix
    ./modules/settings/programs/others.nix

    #SETTINGS
    ./modules/settings/fastfetch/fastfetch.nix

  ];

  #home
  home.username = "nakko";
  home.homeDirectory = "/home/nakko";
  # home.packages = with pkgs; [

  # ];

  nixpkgs.config.allowUnfree = true;

  home.stateVersion = "25.11";
}
