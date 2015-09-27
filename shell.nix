with import <nixpkgs> {};

let
  kitchen = callPackage ./nix/kitchen.nix {};
in
stdenv.mkDerivation {
  name = "ansible-nix";

  buildInputs = [
    kitchen
    vagrant
  ];

  src = null;
}
