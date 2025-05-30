{ config, lib, inputs, ... }:
{
  config = {
    niri = {
      enable = true;
      settings = {
        binds = {
          "Mod+T".action.spawn = "ghostty";
        };
        input.keyboard.variant = "colemak_dh";
      };
    };
  };
}
