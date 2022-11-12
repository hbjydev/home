{ ... }:
{
  enable = true;
  enableAutosuggestions = true;
  enableCompletion = true;
  enableSyntaxHighlighting = true;

  oh-my-zsh = {
    enable = true;
    plugins = [ "git" ];
    theme = "robbyrussell";
  };

  shellAliases = {
    dc = "docker compose";
    dcu = "docker compose up";
    dcd = "docker compose down";
    dcl = "docker compose logs";
    dclf = "docker compose logs -f";
    dcc = "docker compose cp";
    dci = "docker compose inspect";
    dce = "docker compose exec";
    dcr = "docker compose restart";

    k = "kubectl";
    kw = "kubectl -o wide";
    ky = "kubectl -o yaml";
    kj = "kubectl -o json";

    tf = "terraform";

    gs = "git status -s";
    ga = "git add";
    gc = "git commit";
    gch = "git checkout";
    gb = "git branch";
    gp = "git pull";
    gpp = "git push";
    gl = "git log --pretty=oneline --abbrev-commit";
  };

  initExtra = ''
    license () {
      curl -L "api.github.com/licenses/$1" | jq -r .body > LICENSE
    }
  '';
}
