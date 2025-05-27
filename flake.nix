{
  description = "Reusable NixOS user configurations";
  outputs = { self, home-manager, nixpkgs }:
    let
      import_modules = import ./import_modules.nix;
      users = import_modules ./users;
    in
    {
      nixosModules.default = users;
    };
  inputs = {
    zen_browser = {
      url = "github:0xc000022070/zen-browser-flake";
    };
  };
}
