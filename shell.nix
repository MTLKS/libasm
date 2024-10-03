{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.nasm     # Assembler
    pkgs.binutils # Linker (ld, etc.)
  ];
}

