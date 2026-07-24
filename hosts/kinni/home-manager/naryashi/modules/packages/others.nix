{
  pkgs,
  ...
}:
{

  home.packages = with pkgs; [

    #dev
    zed
    helix

    #shh
    javaPackages.compiler.temurin-bin.jdk-26
    spotify
  ];

}
