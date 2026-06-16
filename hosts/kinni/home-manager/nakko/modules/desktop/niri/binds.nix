{
  ...
}:
{
  imports = [
    ./default.nix
    ./config.kdl # inputs.niri.homeModules.niri
  ];

  programs.niri.settings.binds = {

    "Mod+L".action.spawn = "swaylock";
    "Mod+Space".action.spawn = "noctalia-shell";
    "Mod+D".action.spawn = "fuzzel";

    #windows management
    #"Mod+Left".action.focus-colum-left = true;

    #workspace
    "Mod+1".action.focus-workspace = 1;
    "Mod+2".action.focus-workspace = 2;

    #ACTION FOR WORKSPACE
    "Mod+Shift+1".action.move-window-to-workspace = 1;
    "Mod+Shift+2".action.move-window-to-workspace = 2;

  };
}
