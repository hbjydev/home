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
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = { self, home-manager, nixpkgs, neovim-nightly, darwin, ... }:
    let
      configDarwin = import ./configuration/darwin;
      configLinux = import ./configuration/linux;
      overlays = [
        neovim-nightly.overlay
        (import ./overlays.nix)
      ];
    in {
      darwinConfigurations = {
        macbookair-personal =
          configDarwin "hayden" { inherit darwin home-manager overlays; };
      };

      # homeConfigurations.hayden = inputs.home-manager.lib.homeManagerConfiguration {
      #   inherit pkgs;
      #   modules = [
      #     { nixpkgs.overlays = overlays; }
      #     ./home-manager/home.nix
      #   ];
      # };
    };
}
