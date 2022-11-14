self: super: {
  customVim = with self; {
    hayden = super.vimUtils.buildVimPlugin {
      name = "hayden";
      src = ./config/nvim;
    };
  };
}

