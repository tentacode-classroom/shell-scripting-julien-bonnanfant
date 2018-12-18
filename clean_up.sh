#!/bin/bash
#    cd bazar
#    mkdir -p music
#    for MP3 in *.mp3
#    do
#        cp $PWD/$MP3 $PWD/music
#        rm $PWD/$MP4
#    done
#    mkdir -p video
#    for MP4 in *.mp4
#    do
#        cp $PWD/$MP4 $PWD/video
#        rm $PWD/$MP4
#    done
#    mkdir -p document
#    for PDF in *.pdf
#    do
#    cp $PWD/$PDF $PWD/document
#        rm $PWD/$PDF
#    done
#!/bin/bash

#Init
rm -rf clean_bazar
CURRENT_DIRECTORY=`dirname $0`
LIST=`find $1 -type f`
for ITEM in $LIST
do
    if file $ITEM | grep -qE "image data"
    then
        mkdir -p clean_bazar/Image
        cp $ITEM $CURRENT_DIRECTORY/clean_bazar/Image
        echo "Je deplace $ITEM de Type Image vers clean_bazar/Image "
    elif file $ITEM | grep -qE "Media"
    then
        mkdir -p clean_bazar/Videos
        echo "Je deplace $ITEM de Type Video vers clean_bazar/Videos "
        cp $ITEM $CURRENT_DIRECTORY/clean_bazar/Videos
    else
        mkdir -p clean_bazar/Autres
        echo "Je deplace $ITEM de Type Autres vers clean_bazar/Autres "
        cp $ITEM $CURRENT_DIRECTORY/clean_bazar/Autres
    fi
done
