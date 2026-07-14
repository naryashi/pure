{
  pkgs,
  ...
}:
{

  imports = [
    ../../languages/default.nix
  ];
  programs.helix = {
    enable = true;
    settings = {
      theme = "tokyonight";
    };
    languages.language = [
      {
        name = "nix";
      }
      {
        name = "csharp";
      }
      {
        name = "rust";
      }
      {
        name = "toml";
      }
      {
        name = "python";
      }
      {
        name = "bash";
      }
      {
        name = "kdl";
      }
      {
        auto-format = true;
      }
    ];
  };
}
