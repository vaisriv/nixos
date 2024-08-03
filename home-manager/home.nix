{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  imports = [
    ./apps.nix
    ./packages.nix
    ./system.nix
    ./user.nix

    # ./config/bat.nix
    # ./config/btop.nix
    # ./config/fish.nix
    ./config/hyprland.nix
    # ./config/macchina.nix
    # ./config/mpv.nix
    # ./config/nvim.nix
    # ./config/rstudio.nix
    # ./config/starship.nix
    # ./config/tmux.nix
    # ./config/wezterm.nix
    # ./config/yazi.nix
  ];
}
