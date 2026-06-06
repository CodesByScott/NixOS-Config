# NixOS-Config

My NixOS config for Hyprland and Noctalia.

Download the .zip unzip it and make a directory in your home directory.

After doing so go into the configuration.nix and change hostname and username to match yours after doing that do the same in the flke.nix.

Move to Config folder contents to your .config directory then delete it out of the directory with the flake.

Finally just run sudo nixos-rebuild switch --flake ~/Nameofyourdirectory#Systemname --impure.

Make sure to use the --impure flag for it to work since the configuration is pointing to the /etc/nixos/hardware-configuration.nix since eacg systems hardware is different I found it easier to do it that way.

I didn't include a noctalia config so you can make it your own this is a super basic config just to get things installed and going the rest is up to you if you want to use the gtk themes I use you can look here https://github.com/CodesByScott/Arch-Config and get the Icons pack then I also left the link for the theme I use for nautilus.

That should be it and it should work for you as well I've tested this on multiple machines and it has worked on them.
