let
  unstableTgz = builtins.fetchTarball {
    # Descriptive name to make the store path easier to identify
    name = "nixos-master-2021-09-09";
    # Be sure to update the above if you update the archive
    url = https://github.com/nixos/nixpkgs/archive/126362784184c0b341a5297c7cddffb1d2873d9d.tar.gz;
    sha256 = "07cs6am49kwhrx9dsv6972q437v2hq8r1nyjspymhjzrm2kf2sbn";
  };
in
import unstableTgz {}
