#!/bin/bash
    cd bazar
    mkdir -p music
    for MP3 in *.mp3
    do
        cp $PWD/$MP3 $PWD/music
        rm $PWD/$MP4
    done
    mkdir -p video
    for MP4 in *.mp4
    do
        cp $PWD/$MP4 $PWD/video
        rm $PWD/$MP4
    done
    mkdir -p document
    for PDF in *.pdf
    do
        cp $PWD/$PDF $PWD/document
        rm $PWD/$PDF
    done
