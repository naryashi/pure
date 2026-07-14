{
  lib,
  pkgs,
  ...
}:
{
  imports = [
    ../../languages/default.nix
  ];
  programs.zed-editor = {
    enable = true;

    extensions = [
      #themes
      "base16"
      "Tokyo Night Themes"

      #icons
      "Catppucin Icons"

      #lang
      "zsh"
      "nix"
      "toml"
      "html"
      "git-firefly"
      "python"
      "rust"
      "bash"
      "csharp"
      "kdl"
    ];

    extraPackages = with pkgs; [
      rust-analyzer
    ];

    defaultEditor = true;

    userSettings = {
      appearance = {
        theme = lib.mkDefault "Tokyo Night";
        icon_themes = lib.mkDefault "Catppuccin icons";
        cursor_blink = false;
      };
      panels = {
        project_panel_dock = "left";
        git_status = false;
        terminal_dock = "right";
      };
      vim_mode = false;

      ui_font_size = lib.mkDefault 18;
      buffer_font_size = lib.mkDefault 14;
      hour_format = lib.mkDefault "hour24";
      format_on_save = "language_server";
      telemetry = {
        metrics = false;
      };
      lsp = {
        nil = {
          format_on_save = {
            command = [ "nixfmt" ];
          };
        };
        "rust" = {
          format_on_save = {
            external = {
              command = [ "cargofmt" ];

            };
          };
        };
      };
      "rust-analyzer" = {
        binary.path_lookup = true;
      };
    };
  };
}
