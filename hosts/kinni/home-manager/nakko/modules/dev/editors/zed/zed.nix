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

      #icons
      "Catppucin Icons"

      #lang
      "fish"
      "nix"
      "toml"
      "html"
      "git-firefly"
      "python"
      "rust"
      "csharp"

    ];

    extraPackages = with pkgs; [
      rust-analyzer
    ];

    defaultEditor = true;

    userSettings = {
      theme = lib.mkDefault "Base16 Catppuccin Mocha";
      icon_themes = lib.mkDefault "Catppuccin Mocha";
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
