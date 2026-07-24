{
  pkgs,
  ...
}:
{
  #CONTAINER
  environment.systemPackages = with pkgs; [
    docker
    docker-compose
    podman
    podman-compose
    buildah
    skopeo
    distroshelf
    distrobox
    devpod
    lazydocker
  ];

  virtualisation.docker.enable = true;

  virtualisation.podman.enable = true;

  users.users.naryashi = {
    extraGroups = [
      "docker"
      "podman"
    ];
  };

  #GIT
  programs.git = {
    enable = true;
  };

  programs.ssh.askPassword = "${pkgs.kdePackages.ksshaskpass.out}/bin/ksshaskpass";

}
