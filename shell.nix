{ pkgs ? import <nixpkgs> {} }:

let
  unstable = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixpkgs-unstable.tar.gz") {};
in
pkgs.mkShell {
  buildInputs = [
    pkgs.nodejs_18
    pkgs.git
    unstable.aider-chat  # Use the aider-chat from the latest unstable nixpkgs
  ];
  shellHook = ''
    echo "You can now run 'npm install' and 'npm run dev'"
  '';
}
