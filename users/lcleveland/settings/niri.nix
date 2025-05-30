{ config, lib, inputs, ... }:
{
  config = {
    home-manager.users.lcleveland.programs.niri = {
      settings = {
        binds = {
          "Mod+T".action.spawn = "ghostty";
        };
        input.keyboard.xkb = {
          layout = "us";
          variant = "colemak_dh";
        };
      };
    };
  };
}
