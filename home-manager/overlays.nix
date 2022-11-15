self: super:
let
  sources = import ../nix/sources.nix;
in
{
  haskellPackages = super.haskellPackages.override {
    overrides = hfinal: hprev:
      let
        inherit (self.haskell.lib) unmarkBroken appendPatch dontCheck;
      in
      with hprev; {
        citeproc = citeproc_0_8_0_2;
        doclayout = doclayout_0_4;
        doctemplates = doctemplates_0_10_0_2;
        skylighting = skylighting_0_13_1_1;
        skylighting-core = skylighting-core_0_13_1_1;
        skylighting-format-ansi = unmarkBroken hprev.skylighting-format-ansi;
        texmath = texmath_0_12_5_4;
        hslua = hslua_2_2_1;
        hslua-core = hslua-core_2_2_1;
        hslua-aeson = hslua-aeson_2_2_1;
        hslua-classes = hslua-classes_2_2_0;
        hslua-packaging = hslua-packaging_2_2_1;
        hslua-marshalling = hslua-marshalling_2_2_1;
        hslua-objectorientation = hslua-objectorientation_2_2_1;
        lua = lua_2_2_1;
        pandoc = dontCheck (appendPatch pandoc_2_19_2 ./patches/pandoc.patch);
      };
  };

  customTmux = with self; {
    catppuccin = super.tmuxPlugins.mkTmuxPlugin {
      pluginName = "catppuccin";
      src = sources."catppuccin-tmux";
      version = "unstable-2022-11-15";
    };
  };

  customVim = with self; {
    hayden = super.vimUtils.buildVimPlugin {
      name = "hayden";
      src = ./config/nvim;
    };
  };
}

