{ config, lib, inputs, ... }:
{
  config = {
    home-manager.users.lcleveland.programs = {
      fuzzel = {
        enable = true;
      };
      niri = {
        config = ./niri_config.kdl;
      };
    };
  };
}
