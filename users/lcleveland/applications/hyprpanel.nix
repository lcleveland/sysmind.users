{ config, lib, pkgs, inputs, ... }:
{
  config = {
    home-manager.users.lcleveland = {
      home.packages = with pkgs; [
        inputs.hyprpanel.packages.${pkgs.system}.wrapper
        hyprpanel
      ];
      programs.hyprpanel = {
        enable = true;
      };
    };
  };
}
