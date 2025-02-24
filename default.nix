let
  pkgs = import <nixpkgs> {};
in
pkgs.stdenv.mkDerivation {
	name = "dwm-custom";
	buildInputs = with pkgs.xorg; [ libX11 libXft libXinerama ];
	src = ./.;
	prePatch = ''sed -i "s@/usr/local@$out@" config.mk'';
}
