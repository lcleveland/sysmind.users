{ config, lib, inputs, ... }:
{
  imports = [
    inputs.niri.homeModules.niri
  ];

  programs.niri = {
    settings = {
      binds = {
        "Mod+T".action.spawn = "ghostty";
      };
      input.keyboard.variant = "colemak_dh";
    };
  };
}
