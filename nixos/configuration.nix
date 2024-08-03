# configuration.nix
{
  config,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ./system.nix

    ./modules/boot.nix
    ./modules/locale.nix
    ./modules/hyprland.nix
    ./modules/networking.nix
    ./modules/packages.nix
    ./modules/services.nix
    ./modules/users.nix
  ];
}
