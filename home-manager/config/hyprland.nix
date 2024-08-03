# hyprland plugins and configuration
{
  inputs,
  pkgs,
  lib,
  config,
  ...
}: let
  startupScript = pkgs.pkgs.writeShellScriptBin "start" ''
    ${pkgs.waybar}/bin/waybar &
    ${pkgs.swww}/bin/swww init &

    sleep 1

    ${pkgs.swww}/bin/swww img ${.config/wallpapers/dark1.png} &
  '';
in {
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland = {
      enable = true;
    };
    systemd.enable = true;
    settings = {
      exec-once = ''${startupScript}/bin/start'';
    };
  };
  programs.waybar = {
    enable = true;
    settings = {
    };
  };

  services.greetd = {
    enable = true;
    settings = {
      default_session = {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --time-format '%k:%M | %a • %h | %F' --cmd Hyprland";
        user = "greeter";
      };
    };
  };

  home.packages = with pkgs; [
    greetd.tuigreet
    hyprpicker
    hyprcursor
    hyprlock
    hypridle
  ];
}
