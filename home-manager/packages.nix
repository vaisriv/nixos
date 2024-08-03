# user packages
{
  inputs,
  lib,
  config,
  pkgs,
}: {
  nixpkgs = {
    config = {
      allowUnfree = true;
      allowUnfreePredicate = _: true;
    };
  };

  home.packages = with pkgs; [
    bacon
    bat
    btop
    cargo
    croc
    dust
    eza
    fish
    fzf
    gcc
    git
    julia
    lazygit
    macchina
    neovim
    p7zip
    python312
    python312Packages.pip
    rPackages.rlang
    ripgrep-all
    rustc
    rsclock
    speedtest-rs
    starship
    tmux
    yazi
    zoxide
    zig
  ];
}
