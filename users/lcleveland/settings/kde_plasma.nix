{ config, lib, ... }:
{
  config = {
    home-manager.users.lcleveland.programs.plasma = {
      enable = true;
    };
  };
}
