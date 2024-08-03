# packages and programs
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    neovim
    git
    gcc
    alejandra
    wezterm
    firefox
  ];
}
