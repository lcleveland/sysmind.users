{ config, inputs, lib, ... }:
{
  config = {
    home-manager.users.lcleveland = {
      imports = [ inputs.nixvim.homeManagerModules.nixvim ];
      programs.nixvim = {
        enable = true;
        vimAlias = true;
        defaultEditor = true;
        plugins = {
          cmp = {
            enable = true;
            autoEnableSources = true;
          };
          cmp-nvim-lsp.enable = true;
          lsp = {
            enable = true;
            servers = {
              nil_ls = {
                enable = true;
                autostart = true;
              };
              nixd = {
                enable = true;
                autostart = true;
              };
            };
          };
          lsp-format.enable = true;
          supermaven.enable = true;
          treesitter = {
            enable = true;
            settings = {
              auto_install = true;
              parser_install_dir = "/home/lcleveland/.config/nvim/treesitter";
            };
          };
        };
      };
    };
  };
}
