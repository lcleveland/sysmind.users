{ config, lib, inputs, ... }:
{
  config = {
    programs.niri = {
      settings = {
        binds = {
          "Mod+T".action.spawn = "ghostty";
        };
        input.keyboard.variant = "colemak_dh";
      };
    };
  };
}
