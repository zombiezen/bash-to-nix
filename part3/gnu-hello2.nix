let pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/ae8bdd2de4c23b239b5a771501641d2ef5e027d0.tar.gz") {};
in

pkgs.stdenv.mkDerivation {
  name = "hello";
  src = pkgs.fetchurl {
    url = "mirror://gnu/hello/hello-2.12.1.tar.gz";
    hash = "sha256-jZkUKv2SV28wsM18tCqNxoCZmLxdYH2Idh9RLibH2yA=";
  };

  configurePhase = "./configure --prefix=$out";
  buildPhase = "make";
  installPhase = "make install";
}
