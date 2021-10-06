let
  pinned = import ./pinned.nix;
in
{ pkgs ? pinned }:
pkgs.mkShell {
  buildInputs = with pkgs; [
    go_1_16
  ];
}
