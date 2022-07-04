with import <nixpkgs> {};
stdenv.mkDerivation rec {
  name = "ng";
  env = buildEnv { name = name; paths = buildInputs; };
  buildInputs = [
    yarn
    nodePackages."@angular/cli"
  ];
}
