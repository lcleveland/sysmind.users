{ config, lib, pkgs, ... }:
{
  config = {
    home-manager.users.lcleveland.home.packages = [ pkgs.lazygit ];
  };
}
