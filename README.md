# NixOS-Config
My NixOS configuration with flake and home manager for hyprland.

It'll slowly grow and change with time.

Make sure to enable flakes with nix.settings.experimental-features = [ "nix-command" "flakes" ]; in your /etc/nixos/configuration.nix first and run sudo nixos-rebuild switch then follow the steps below.

To use either use git clone https://github.com/CodesByScott/NixOS-Config.git ~/Directory of your choice or simply download the zip file and move all files to a directory in your home path except for the config folder.

Make sure to change username and host name in all .nix files to match your own. As all the files match my user and host name.

Copy or move all folders in the config folder to you /home/username/.config folder.

I also use nixpkgs unstable if you'd like to use the stable version update that in the flake as well.

After you have done all of that and since all computers have diffrent hardware-configuration.nix I have it pointing to /etc/nixos/hardware.nix in the configuration.nix make sure to use the --impure flag when running the command nixos-rebuild switch flake ~/directoryofflakelocation/#hostname --impure

That should be all and you should be able to use it just fine without issues as long as you have followed the steps amd changed everything.
