{ config, lib, pkgs, inputs, ... }:
{
  config = {
    home-manager.users.lcleveland.programs.waybar = {
      enable = true;
    };
  };
}
