{ config, lib, inputs, ... }:
{
  config = {
    home-manager.users.lcleveland.programs = {
      waybar = {
        enable = true;
        style = ''
          * {
            font-family: Hack, FontAwesome6Free, Roboto;
            }
        '';
      };
    };
  };
}
