#!/bin/bash

# Go into folder where the script should be executed
cd ~/wallpaper_clouded_globe/

COUNTER=0
# Try for a total of 6 times (5min) to download newest image
while [  $COUNTER -lt 10 ]
do

    # Get the datastamp of yesterday to download newest whole globe image
    YESTERDAY=`date -d "yesterday" "+%Y-%m-%d"`

    # Request image and download it
    wget "http://map2.vis.earthdata.nasa.gov/image-download?TIME=$YESTERDAY&extent=-170,-60.00,180,75.00&epsg=4326&layers=VIIRS_SNPP_CorrectedReflectance_TrueColor,Reference_Features&opacities=1,0.75&worldfile=false&format=image/jpeg&width=8000&height=3000" \
        -O world.jpg \
        --connect-timeout=60 \
        --read-timeout=300 \
        --tries 5
    # This wget command will try to connect to the server for 60s or try to
    # download the file for a total of 5min. If this didn't work, it will
    # try again anew. This step is repeated for a total of 5 tries

    # Image will be resized to 8000x4500 resolution if image is at least 10kb
    temp=$(stat -c%s world.jpg)
    if [[ $temp > 10000 ]]
    then
        convert world.jpg \
            -background black \
            -gravity center \
            -extent 0x4500 world.jpg
        mv world.jpg wallpaper_clouded_globe.jpg
        break
    fi

    # Sleep for 30s if loop didn't work
    sleep 30
        let COUNTER=COUNTER+1
done
