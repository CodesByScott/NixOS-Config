# NixOS-Config
My NixOS configuration with flake and home manager for hyprland.

Taken and inspired from robbsbro69's config you can check it out here https://github.com/robbsbro69/nixos

It'll slowly grow and change with time.

Make sure to enable flakes with nix.settings.experimental-features = [ "nix-command" "flakes" ]; in your /etc/nixos/configuration.nix first and run sudo nixos-rebuild switch then follow the steps below.

To use git clone https://github.com/CodesByScott/NixOS-Config.git ~/nixos-dotfiles of this repo.
 
 Then symlink with ln -sf ~/nixos-dotfiles ~/.config to your config path so it'll work.

Make sure to change username and host name in all .nix files to match your own. As all the files match my user and host name.

Don't forget to change settings in configuration.nix if you are using nivida gup as I have amd under xservices video drivers delete amd and change it to nivida and uncomment the nivida section.

lastly go to config/hypr/hyprland/execs.conf and edit all the paths to your username before funning the command below.

After you have done all of that and since all computers have diffrent hardware-configuration.nix I have it pointing to /etc/nixos/hardware.nix in the configuration.nix make sure to use the --impure flag like so when running the command nixos-rebuild switch --flake ~/nixos-dotfiles#nixos --impure make sure to change the #nixos to match your systems host name and then update the nrs and npurs on the home.nix file to match.

That should be all and you should be able to use it just fine without issues as long as you have followed the steps and changed everything.
