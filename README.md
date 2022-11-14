# Home

My Nix dotfiles & configuration repo for managing a standard working environment
across all my computers. It supports [NixOS](https://nixos.org) and MacOS
currently, but I want to make it support non-NixOS linux too so I can use it at
work as well.

## Running

### NixOS

```shell
# clear old /etc/nixos
sudo rm -rf /etc/nixos

# clone the repo
sudo nix-env -i git
sudo git clone https://github.com/hbjydev/home.git /etc/nixos

# rebuild nixos
sudo nixos-rebuild switch --flake "/etc/nixos#pc-personal"
```

### MacOS

```shell
# enable flakes
echo "experimental-features = nix-command flakes" >> $HOME/.config/nix/nix.conf

# clone
git clone https://github.com/hbjydev/home.git ~/.config/nixpkgs

# rebuild darwin
nix build .#darwinConfigurations.macbookair-personal.system
result/sw/bin/darwin-rebuild switch --flake "."
```
