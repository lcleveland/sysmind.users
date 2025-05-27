{ config, lib, ... }:
{
  config = {
    home-manager.users.lcleveland.programs.nixvim = {
      enable = true;
    };
  };
}
