#!/bin/bash

git clone https://github.com/vinceliuice/Graphite-gtk-theme.git
cd Graphite-gtk-theme

sudo ./install.sh -c --color light -g --gdm
./install.sh -c --color dark --tweaks darker

cd ..
rm -rf Graphite-gtk-theme
