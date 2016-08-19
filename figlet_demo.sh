#!/bin/bash
# vim: set ts=4 sw=4 noet fileencoding=utf-8:

fontDir=`figlet -I2`

if [[ $# -eq 0 ]]; then
    echo "usage: $(basename $0) [message] -- print given message for every available font in figlet"
    exit 0
fi

for fontType in `figlet -I5`; do
    ext=${fontType%[0-9]} # flf2 = .flf, tlf2 = .tlf

    for font in `ls $fontDir/*.$ext 2>/dev/null`; do
        printf ':%.s' {1..80} # line separators
        echo -e "\n$(basename ${font%.$ext})\n"

        figlet -f $font $@
    done
done
