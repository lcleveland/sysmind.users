{ config, lib, ... }:
{
  config = {
    home-manager.users.lcleveland.home.packages = [ pkgs.lazygit ];
  };
}
