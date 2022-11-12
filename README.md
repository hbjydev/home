# home-manager

My [home-manager](https://github.com/nix-community/home-manager)-controlled
dotfiles repo.

## Using

```shell
# install Nix
sh <(curl -L https://nixos.org/nix/install) --daemon

# set up package channels
nix-channel --add https://github.com/nixos/nixpkgs/archive/master.tar.gz nixpkgs
nix-channel --add https://github.com/nix-community/home-manager/archive/master.tar.gz home-manager
nix-channel --update

# configure NIX_PATH
export NIX_PATH=$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels${NIX_PATH:+:$NIX_PATH}

# install home-manager
nix-shell '<home-manager>' -A install

# clone the repo
git clone https://github.com/hbjydev/home-manager.git ~/.config/nixpkgs
```

