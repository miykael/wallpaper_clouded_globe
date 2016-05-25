# Live Globe Wallpaper

The script ``clouded_globe.sh`` generates a satellite image from the whole planet (with cloud coverage) from https://worldview.earthdata.nasa.gov. This image can than be used as a wallpaper. Following picture is an example of such a high resolution image (8000x3000)from the 1st of March, 2016.

<img src="static/wallpaper_clouded_globe.jpg" width="8000">

The idea for this came from [this homepage](http://www.webupd8.org/2009/09/real-time-earth-wallpaper-for-linux.html).


# How to set it up

**First**, create a new folder, put the script ``clouded_globe.sh`` in this folder and make it executable:

```bash
mkdir ~/wallpaper_clouded_globe
wget https://raw.githubusercontent.com/miykael/wallpaper_clouded_globe/master/clouded_globe.sh \
    -O ~/wallpaper_clouded_globe/clouded_globe.sh
chmod +x ~/wallpaper_clouded_globe/clouded_globe.sh
```

**Second**, run the script at least once to create the current image of the clouded globe:

```bash
bash ~/wallpaper_clouded_globe/clouded_globe.sh &
```

**Third**, go into the folder `~/.gnome2`, right click on the `wallpaper_clouded_globe.jpg` and select it as Wallpaper.

**Fourth**, go to System > Preferences > Startup Applications and select "Add". Under Name, put "Wallpaper Clouded Globe" and under Command put "~/wallpaper_clouded_globe/clouded_globe.sh".

This is it! Now everytime you start the PC, the script will be run and update your wallpaper.
