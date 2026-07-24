{
  pkgs,
  ...
}:
{

  home.packages = with pkgs; [

    #games
    gamemode
    steam
    steam-run
    heroic
    gpu-screen-recorder-gtk
  ];

  home.sessionVariables = {
    STEAM_EXTRA_COMPAT_TOOLS_PATHS = "/home/naryashi/.steam/root/compatibilitytools.d";
  };
}
