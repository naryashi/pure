{
  pkgs,
  ...
}:
{
  environment.systemPackages = with pkgs; [
    piper
    libratbag
    nh
    tlp
    home-manager
  ];
}
