{
  ...
}:
{
  programs.discord = {
    enable = true;
    settings = {
      SKIP_HOST_UPDATE = true;
    };
  };
  programs.zapzap = {
    enable = true;
    settings = {

      system = {
        theme = "dark";
        wayland = true;
      };
      website = {
        open_page = false;
      };
    };
  };

}
