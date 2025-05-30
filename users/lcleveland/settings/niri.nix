{ config, lib, inputs, ... }:
{
  config = {
    home-manager = {
      sharedModules = [
        inputs.niri.homeModules.niri
      ];
      users.lcleveland.programs.niri = {
        settings = {
          binds = {
            "Mod+T".action.spawn = "ghostty";
          };
          input.keyboard.xkb.variant = "colemak_dh";
        };
      };
    };
  };
}
