{
  description = "Home Manager configuration of Hayden";

  inputs = {
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    neovim-nightly.url = "github:nix-community/neovim-nightly-overlay";
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, ... }@inputs:
    let
      system = "x86_64-linux";
      overlays = [
        inputs.neovim-nightly.overlay
        (import ./overlays.nix)
      ];
      pkgs = inputs.nixpkgs.legacyPackages.${system};
    in {
      homeConfigurations.hayden = inputs.home-manager.lib.homeManagerConfiguration {
        inherit pkgs;
        modules = [
          { nixpkgs.overlays = overlays; }
          ./home.nix
        ];
      };
    };
}
