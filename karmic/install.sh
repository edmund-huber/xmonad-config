#!/bin/bash

sudo mkdir -p /usr/share/xsessions
sudo cp Xmonad.desktop /usr/share/xsessions
sudo chmod a=r /usr/share/xsessions/Xmonad.desktop

cp dot-xsession ~/.xsession