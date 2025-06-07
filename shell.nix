with import <nixpkgs> { };

let
  pythonPackages = python313Packages;
in pkgs.mkShell rec {
  name = "impurePythonEnv";
  buildInputs = [
    pythonPackages.python
    pkgs.uv
    pkgs.ruff
    pkgs.pnpm
    stdenv.cc.cc.lib
  ];
  env = {
    UV_PYTHON_DOWNLOADS = "never";
    UV_PYTHON = pythonPackages.python.interpreter;
    LD_LIBRARY_PATH=pkgs.lib.makeLibraryPath ([ pkgs.stdenv.cc.cc ]);
  };
}
