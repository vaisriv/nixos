# users
{
  inputs,
  lib,
  config,
  pkgs,
  ...
}: {
  users.users = {
    vai = {
      isNormalUser = true;
      description = "Vai Srivastava";
      extraGroups = ["networkmanager" "wheel"];
      shell = pkgs.fish;
    };
  };

  programs.fish.enable = true;
}
