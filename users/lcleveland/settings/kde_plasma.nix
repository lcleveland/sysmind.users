{ config, lib, plasma_manager, ... }:
{
  config = {
    home-manager = {
      sharedModules = [
        plasma_manager.plasma-manager.homeManagerModules.plasma-manager
      ];
      users.lcleveland.programs.plasma = {
        enable = true;
      };
    };
  };
}
