{
  description = "Home Manager configuration of Hayden";

  inputs = {
    darwin = {
      url = "github:lnl7/nix-darwin";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    neovim-nightly.url = "github:nix-community/neovim-nightly-overlay";
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixpkgs-unstable";
  };

  outputs = { self, home-manager, nixpkgs, neovim-nightly, darwin, ... }:
    let
      configDarwin = import ./configuration/darwin;
      configNixos = import ./configuration/nixos;
      overlays = [ neovim-nightly.overlay ];
    in {
      darwinConfigurations = {
        macbookair-personal =
          configDarwin "hayden" { inherit darwin home-manager overlays; };
      };

      nixosConfigurations = {
        pc-personal =
          configNixos "hayden" { inherit nixpkgs home-manager overlays; };
      };

      homeConfigurations = {
        hayden = home-manager.lib.homeManagerConfiguration {
          pkgs = import nixpkgs {
            system = "x86_64-linux";
            config = {
              allowUnfree = true;
              permittedInsecurePackages = [
                "electron-15.5.2"
              ];
            };
            overlays = overlays ++ [ (import ./home-manager/overlays.nix) ];
          };
          modules = [
            ./home-manager/linux.nix
          ];
        };
      };
    };
}
