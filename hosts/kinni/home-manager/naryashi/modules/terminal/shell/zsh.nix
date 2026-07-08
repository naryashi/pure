{
  pkgs,
  ...
}:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      plugins = [
        "git"
        "copypath"
        "sudo"
      ];
    };
    shellAliases = {
      #system
      off = "shutdown now";
      upd-all = "nh os switch -u && nh home switch -u";
      os = "echo 'NixOS'";
      #games`
      osu-wine = "steam-run osu-wine";

      #dev
      zed-rs = "zeditor ~/code/rust";

      zed-py = "zeditor ~/code/python";

      zed-nix = "zeditor /pure";

      #formatter test
      fmt-test = "find . -name '*.nix' -type f";

    };
  };
  home.packages = with pkgs; [
    oh-my-zsh
  ];
}
