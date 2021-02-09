let
  pkgs = import <nixpkgs> {};
in
pkgs.stdenv.mkDerivation {
	name = "dwm-dev";
	buildInputs = with pkgs.xorg; [ libX11 libXinerama libXft ];
	src = ./.;
	prePatch = ''sed -i "s@/usr/local@$out@" config.mk'';
}
