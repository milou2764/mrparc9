#! /bin/sh
GMAD=~/.local/share/Steam/steamapps/common/GarrysMod/bin/gmad_linux
GMPUBLISH=~/.local/share/Steam/steamapps/common/GarrysMod/bin/gmpublish_linux
LD_LIBRARY_PATH=~/.local/share/Steam/steamapps/common/GarrysMod/bin/
export LD_LIBRARY_PATH
$GMAD create -folder . -out ../mrparc9.gma
$GMPUBLISH create -addon ../mrparc9.gma -icon icon.jpg
rm ../mrparc9.gma
