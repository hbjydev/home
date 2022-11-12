{ pkgs, ... }:
{
  enable = true;
  userName = "Hayden Young";
  userEmail = "hayden@hbjy.dev";
  extraConfig = {
    init = { defaultBranch = "main"; };
    pull = { rebase = false; };
    push = { autoSetupRemote = true; };

    "credential \"https://gitlab.com\"" = {
      helper = "${pkgs.glab.outPath}/bin/glab auth git-credential";
    };

    "credential \"https://git.esptest.co.uk\"" = {
      helper = "${pkgs.glab.outPath}/bin/glab auth git-credential";
    };
  };
}
