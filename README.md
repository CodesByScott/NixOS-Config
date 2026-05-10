# NixOS-Config
My simple NixOS configuration with flake and home manager.

It'll slowly grow and change with time.

Since all computers have diffrent hardware-configuration.nix I have it pointing to /etc/nixos/hardware.nix in the configuration.nix make sure to use the --impure flag when running the command nixos-rebuild switch flake ~/directoryofflakelocation/#hostname --impure

Make sure to change username and host name in all .nix files to match your own. As all the files match my user and host name.
