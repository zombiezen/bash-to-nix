let pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/ae8bdd2de4c23b239b5a771501641d2ef5e027d0.tar.gz") {};
in

builtins.derivation {
  name = "hello";
  builder = ./build-greeter-script.sh;
  system = builtins.currentSystem;
  greeting = "Hello, World!";
  PATH = "${pkgs.coreutils}/bin";
}
