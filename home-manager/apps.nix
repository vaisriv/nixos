{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  programs = {
    home-manager = {
      enable = true;
    };
  };
  home.packages = with pkgs; [
    bitwarden-desktop
    brave
    imv
    mpv-unwrapped
    mullvad-vpn
    obs-studio
    rstudio
    slack
    spotify
    texliveBasic
    transmission
    vesktop
    wolfram-engine
    zathura
    zotero
  ];
}
