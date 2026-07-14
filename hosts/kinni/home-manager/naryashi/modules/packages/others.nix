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
