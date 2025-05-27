{
  description = "Reusable NixOS user configurations";
  outputs = { self, home-manager, nixpkgs }: {
    nixosModules.users = import ./users;
  };
}
