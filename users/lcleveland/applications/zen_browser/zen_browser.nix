{ config, inputs, lib, ... }:
{
  config = {
    home-manager.users.lcleveland.home.packages = [
      inputs.zen_browser.packages.${config.system.nix.host_platform}.default
    ];
  };
}
