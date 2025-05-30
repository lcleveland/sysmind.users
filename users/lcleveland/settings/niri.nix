{ config, lib, inputs, ... }:
{
  config = {
    home-manager.users.lcleveland.programs = {
      fuzzel = {
        enable = true;
      };
      niri = {
        config = builtins.readFile ./niri_config.kdl;
      };
    };
  };
}
