{ config, lib, inputs, ... }:
{
  imports = [
    inputs.niri.homeModules.niri
  ];

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
