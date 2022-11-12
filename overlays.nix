self: super: {
  vimPlugins = super.vimPlugins // {
    hayden = super.vimUtils.buildVimPlugin {
      name = "hayden";
      src = ./config/nvim;
    };
  };
}

