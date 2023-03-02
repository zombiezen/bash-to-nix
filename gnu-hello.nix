let pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/ae8bdd2de4c23b239b5a771501641d2ef5e027d0.tar.gz") {};
in

builtins.derivation {
  name = "hello";
  builder = ./build-gnu-hello.sh;
  system = builtins.currentSystem;

  src = pkgs.fetchurl {
    url = "mirror://gnu/hello/hello-2.12.1.tar.gz";
    hash = "sha256-jZkUKv2SV28wsM18tCqNxoCZmLxdYH2Idh9RLibH2yA=";
  };
  PATH = "${pkgs.coreutils}/bin:${pkgs.gnused}/bin:${pkgs.gawk}/bin:${pkgs.gnugrep}/bin:${pkgs.gnutar}/bin:${pkgs.gzip}/bin:${pkgs.gcc9}/bin:${pkgs.gnumake}/bin";
}
