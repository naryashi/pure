{
  description = "pure nix flake :3";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    chaotic = {
      url = "github:chaotic-cx/nyx/nyxpkgs-unstable";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.home-manager.follows = "home-manager";
      };

    niri = {
      url = "github:sodiboo/niri-flake";
    };

    noctalia = {
      url = "github:noctalia-dev/noctalia";
    };

    nix-gaming.url = "github:fufexan/nix-gaming";
    thou-packages.url = "github:thou-vow/nix-packages";

  };
  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      nix-gaming,
      thou-packages,
      chaotic,
      niri,
      ...
    }@inputs:
    {

      system = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      niri-flake.cache.enable = true;

      formatter.x86_64-linux = nixpkgs.legacyPackages."x86_64-linux".nixfmt-tree;

      nixosConfigurations.kinni = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          chaotic.nixosModules.default
          ./hosts/kinni/configuration.nix
          ./hosts/kinni/hardware.nix
          ./hosts/kinni/hardware-configuration.nix
          ./hosts/kinni/boot.nix

          home-manager.nixosModules.home-manager
          {
            home-manager = {
              users.naryashi = import ./hosts/kinni/home-manager/naryashi/home.nix;
              extraSpecialArgs = { inherit inputs; };
            };

            nix.settings = {
              experimental-features = [
                "nix-command"
                "flakes"
              ];

              auto-optimise-store = true;

            };
          }
        ];
      };

      homeConfigurations."naryashi@kinni" = home-manager.lib.homeManagerConfiguration {
        pkgs = nixpkgs.legacyPackages."x86_64-linux";
        modules = [ ./hosts/kinni/home-manager/naryashi/home.nix ];
        extraSpecialArgs = { inherit inputs; };
      };
    };
  nixConfig = {
    extra-substituters = [
      "https://nyx-cache.chaotic.cx/"
      "https://thou-vow.cachix.org/"
      "https://cache.nixos.org/"
      "https://nix-gaming.cachix.org"
      "https://noctalia.cachix.org"
    ];
    extra-trusted-public-keys = [
      "nyx-cache.chaotic.cx:dJxTrgMC3V3cFfyIiBQDQorG6k1LsqurH/srpMSq7qk="
      "thou-vow.cachix.org-1:n6zUvWYOI7kh0jgd+ghWhxeMd9tVdYF2KdOvufJ/Qy4="
      "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      "nix-gaming.cachix.org-1:nbjlureqMbRAxR1gJ/f3hxemL9svXaZF/Ees8vCUUs4="
      "noctalia.cachix.org-1:pCOR47nnMEo5thcxNDtzWpOxNFQsBRglJzxWPp3dkU4="
    ];
  };
}
