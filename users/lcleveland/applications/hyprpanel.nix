{ config, lib, inputs, ... }:
{
  config = {
    home-manager.users.lcleveland.home.packages = with pkgs; [
      inputs.hyprpanel.packages.${pkgs.system}.wrapper
      hyprpanel
    ];
  };
}
