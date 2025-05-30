{ config, lib, inputs, ... }:
{
  config = {
    home-manager.users.lcleveland.programs = {
      waybar = {
        enable = true;
        style = ''
          * {
            font-family: "Roboto Mono", "Font Awesome 6 Free Solid", "Font Awesome 6 Brands";
            }
        '';
      };
    };
  };
}
