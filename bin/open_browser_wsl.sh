#! /bin/bash
# とりあえず引数はurl前提

#firefox
# /mnt/c/Program\ Files/Mozilla\ Firefox/firefox.exe $(wslpath -w ${1})
#chrome
# /mnt/c/Program\ Files\ \(x86\)/Google/Chrome/Application/chrome.exe $(wslpath -w ${1})
#edge
# '/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe' $(wslpath -w ${1})
'/mnt/c/Program Files (x86)/Microsoft/Edge/Application/msedge.exe' $1
