{ config, lib, inputs, ... }:
{
  config = {
    home-manager.users.lcleveland.programs.niri = {
      settings = {
        binds = {
          "Mod+T".action.spawn = "ghostty";
        };
        input.keyboard.xkb.variant = "colemak_dh";
      };
    };
  };
}
