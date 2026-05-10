# NixOS-Config
My NixOS configuration with flake and home manager for hyprland.

It'll slowly grow and change with time.

Since all computers have diffrent hardware-configuration.nix I have it pointing to /etc/nixos/hardware.nix in the configuration.nix make sure to use the --impure flag when running the command nixos-rebuild switch flake ~/directoryofflakelocation/#hostname --impure

Make sure to change username and host name in all .nix files to match your own. As all the files match my user and host name.

Copy or move all folders in the config folder to you /home/username/.config folder.

I also use nixpkgs unstable if you'd like to use the stable version update that in the flake as well.
