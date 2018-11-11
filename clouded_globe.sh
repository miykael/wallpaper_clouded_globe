#!/bin/bash

# Create folder to save background image
FPATH=~/.clouded_globe

# Get the datastamp of yesterday to download newest whole globe image
YESTERDAY=`date -d "yesterday" "+%Y-%m-%d"`

# Request image and download it
wget "http://map2.vis.earthdata.nasa.gov/image-download?TIME=$YESTERDAY&extent=-170,-60.00,180,75.00&epsg=4326&layers=VIIRS_SNPP_CorrectedReflectance_TrueColor,Reference_Features&opacities=1,0.75&worldfile=false&format=image/jpeg&width=4000&height=1500" \
    -O ${FPATH}/world.jpg \
    --connect-timeout=60 \
    --read-timeout=300 \
    --tries 5

# Image will be resized to 8000x2000 resolution if image is at least 10kb
temp=$(stat -c%s ${FPATH}/world.jpg)
if [[ $temp > 10000 ]]
then
    convert ${FPATH}/world.jpg \
        -background black \
        -gravity center \
        -extent 0x2000 ${FPATH}/world.jpg
    mv ${FPATH}/world.jpg ${FPATH}/wallpaper_clouded_globe.jpg
fi
