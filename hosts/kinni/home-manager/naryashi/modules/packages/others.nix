{
  pkgs,
  ...
}:
{

  home.packages = with pkgs; [

    #social
    discord
    zapzap
    signal-desktop
    telegram-desktop

    #shh
    ente-desktop
    qbittorrent
    #multmidia
    vlc
    spotify

    #dev
    zed
    helix

    #shh
    javaPackages.compiler.temurin-bin.jdk-26

  ];

}
