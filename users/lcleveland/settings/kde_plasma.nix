{ config, lib, ... }:
{
  config = {
    home-manager = {
      sharedModules = [
        plasma-manager.homeManagerModules.plasma-manager
      ];
      users.lcleveland.programs.plasma = {
        enable = true;
      };
    };
  };
}
