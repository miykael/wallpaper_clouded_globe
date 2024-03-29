# Live Globe Wallpaper

[![GitHub issues](https://img.shields.io/github/issues/miykael/wallpaper_clouded_globe.svg)](https://github.com/miykael/wallpaper_clouded_globe/issues/)
[![GitHub pull-requests](https://img.shields.io/github/issues-pr/miykael/wallpaper_clouded_globe.svg)](https://github.com/miykael/wallpaper_clouded_globe/pulls/)
[![GitHub contributors](https://img.shields.io/github/contributors/miykael/wallpaper_clouded_globe.svg)](https://GitHub.com/miykael/wallpaper_clouded_globe/graphs/contributors/)
[![GitHub Commits](https://github-basic-badges.herokuapp.com/commits/miykael/wallpaper_clouded_globe.svg)](https://github.com/miykael/wallpaper_clouded_globe/commits/master)
[![GitHub size](https://github-size-badge.herokuapp.com/miykael/wallpaper_clouded_globe.svg)](https://github.com/miykael/wallpaper_clouded_globe/archive/master.zip)

The script ``clouded_globe.sh`` generates a satellite image from the whole planet (with cloud coverage) from https://worldview.earthdata.nasa.gov. This image can than be used as a wallpaper. Following picture is an example of such a high resolution image (8000 x 3000 pixels) from the 1st of March, 2016.

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

**Third**, right click on your desktop and select "Change Desktop Background". This will open the Appearance dialog. Now click on the small '+' symbol below the wallpapers on the right and add `wallpaper_clouded_globe.jpg`, which is stored under `~/wallpaper_clouded_globe`.

**Fourth**, go to System > Preferences > Startup Applications and select "Add". Under *Name*, put "Wallpaper Clouded Globe" and under *Command* put "~/wallpaper_clouded_globe/clouded_globe.sh".

This is it! Now everytime you start the PC, the script will be run and update your wallpaper.
