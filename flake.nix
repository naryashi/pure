{
  description = "pure nix flake :3";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";

    chaotic.url = "github:chaotic-cx/nyx/nyxpkgs-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    niri = {
      url = "github:sodiboo/niri-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-gaming.url = "github:fufexan/nix-gaming";
    thou-packages.url = "github:thou-vow/nix-packages";

    stylix = {
      url = "github:nix-community/stylix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs =
    {
      nixpkgs,
      home-manager,
      nix-gaming,
      thou-packages,
      stylix,
      chaotic,
      niri,
      ...
    }@inputs:
    let
      system = "x86_64-linux";
      pkgs = nixpkgs.legacyPackages.${system};
    in
    {

      niri-flake.cache.enable = true;

      formatter.x86_64-linux = nixpkgs.legacyPackages.x86_64-linux.nixfmt-tree;

      nixosConfigurations.kinni = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; };
        modules = [
          chaotic.nixosModules.default
          stylix.nixosModules.stylix
          ./hosts/kinni/configuration.nix
          ./hosts/kinni/hardware.nix
          ./hosts/kinni/hardware-configuration.nix
          ./hosts/kinni/boot.nix

          home-manager.nixosModules.home-manager
          {
            home-manager = {
              users.nakko = import ./hosts/kinni/home-manager/nakko/home.nix;
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

      homeConfigurations."nakko@kinni" = home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [ ./hosts/kinni/home-manager/nakko/home.nix ];
        extraSpecialArgs = { inherit inputs; };
      };
    };
}
