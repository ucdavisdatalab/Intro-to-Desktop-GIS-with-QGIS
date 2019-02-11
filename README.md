# Introduction

**This is a work in progress.  Please be patient while I prepare this workshop.  Launch date: March 19, 2019**

This tutorial uses QGIS 3 to teach the basics of desktop mapping software for beginners with no previous mapping experience.

## Workshop Preparation
You should download and install [QGIS](https://qgis.org) version 3.4 to your computer.

## Workshop Aims
This introductory-level workshop will focus upon the fundamental concepts and skills needed to explore and analyze begin using Geographic Information Systems (GIS) software for the exploration and analysis of spatial data using the QGIS platform. 

No prior experience with QGIS or other GIS software is needed, though attendees should be comfortable learning new computer applications, working with the basics of spreadsheets, and managing/organizing computer files. 

By the end of this workshop, you will be able to:

- Understand the basic distinctions between open-source QGIS and proprietary GIS products like ArcGIS Desktop and ArcGIS Pro
- Download spatial data from the San Fransico’s [open data portal (DataSF)](https://datasf.org/opendata/) and use it in QGIS to conduct data analysis and to produce maps. 
- Define GIS and geospatial concepts and terminology.
- Know the difference between vector and raster data types
- Properly connect and add data to a QGIS project
- Know where to find the attributes of your data in QGIS
- Perform basic selections and queries in QGIS
- Symbolize data by attributes
- Assemble a basic map for export


# Outline

4 hour workshop (with 30 minutes of breaks included)

Start | End | Topic
--- | --- | ---
9:00 | 9:15| What is GIS?
9:15 | 9:30| Why QGIS?
9:30 | 10:15 | Data Types - Vector vs. Raster vs. other types of spatial data
10:15 | 10:30 | **Break**
10:30 | 10:45 | Interface Tour, Download data, Import into QGIS, Save Project Files
10:45 | 11:15 | Attributes Tables
11:15 | 11:40 | Select by attributes
11:40 | 11:45 | Plug-ins, Processing Toolbox, Menus
11:45 | 12:00 | **Break**
12:00 | 12:30 | Symbolizing layers by attributes
12:30 | 12:50 | Making a map with the print composer
12:50 | 1:00 | Wrap Up & Thank You


# What is GIS?
From the [QGIS](https://qgis.org) website, "QGIS is a user friendly Open Source Geographic Information System (GIS) licensed under the GNU General Public License. QGIS is an official project of the Open Source Geospatial Foundation (OSGeo). It runs on Linux, Unix, Mac OSX, Windows and Android and supports numerous vector, raster, and database formats and functionalities."

Let's unpack some of that.  

**QGIS is a desktop GIS.**  That means you get a program that opens up on your computer as a window with buttons you can click, forms you can fill out to do tasks, and it's generally a visual interactive experience (as opposed to commandline programming in a terminal). Often this kind of interface is called a Graphical User Interface or GUI (often pronounced "gooey") for short.

**QGIS is open source.**  That means the code is available for you to read or modify, should you choose to, but you don't have to.  What's the advantage of this?  It means anyone can make fixes if something is wrong or anyone can add new features.  You don't have to wait for a paid developer to add something.  

**QGIS is an official project of the [Open Source Geospatial Foundation (OSGeo)](https://www.osgeo.org/).**  "The Open Source Geospatial Foundation (OSGeo) is a not-for-profit organization whose mission is to foster global adoption of open geospatial technology by being an inclusive software foundation devoted to an open philosophy and participatory community driven development."  OSGeo supports and assists open source geospatial projects providing infrastructure and organization as well as conferences and means of communication with the broader public and education.

# Why QGIS?

[QGIS](https://www.qgis.org) is an open source, community-driven desktop GIS software that allows users to visualize and analyze spatial data in a variety of ways.  There are many reasons to use QGIS, but here are a few: 

- It's a robust, powerful desktop GIS
- Runs on all major platorms: Mac, Linux, & Windows
- Free of charge, all access (no paid add-ons or extensions)
- Frequent updates & bug fixes
- Responsive, enthusiastic community
- Integration with other geospatial tools & programming languages like R, Python, & PostGIS
- Access to analysis tools from other established software like GRASS and SAGA
- Native access to open data formats like geoJSON & GeoPackage
- Comes in a [more than 40 languages](https://www.qgis.org/en/site/getinvolved/translate.html), making it easier to work with a larger variety of colaborators
- Growing use by local, state, federal, and international governments

# Data Types - Vector vs. Raster vs. other types of spatial data

# Download data
In this workshop, we'll be using the following data: 

1. Digital Elevation Model (DEM) of San Francisco 
1. Streets
1. Trees
1. Seismic Hazard Zones
1. City of San Francisco Boundary

You can download all of this data from this [Box Folder Online](https://ucdavis.box.com/s/cnlz6ejmje4qgf7z80h7ygbwydc65kkm).

# Import data into QGIS

1. Loading data
a. raster
b. vector
c. csv
1. Table of contents/layers panel
1. Layer properties

# Saving Project Files

1. .qgs vs. .qgz files - see [this post](http://osgeo-org.1560.x6.nabble.com/QGIS-Developer-Why-is-qgz-the-default-format-td5392345.html) for more details about the discussion around .qgs vs. .qgz formats.
1. like ArcMap's .mxd files

# Raster Data

Let's start by looking at some Raster data.  We'll work with a digital elevation model (DEM) for San Francisco.  A DEM is a raster in which each cell in the grid contains the elevation at that location.

Let's load the data:
1. Click the Add Raster Layer button (it looks like a checker board).
1. Navigate to where you saved your workshop data and select the DEM_SF.tif file.
1. Click *Open*.

Now you should see a gray scale image that roughly looks like the San Francisco peninsula.  This is a Digital Elevation Model (DEM).  Each cell in the raster contains a number representing the elevation at that location.  

Let's style this data:
1. Open the Layer Properties for your DEM (right click on the layer in the Layers Panel and select *Properties*).
1. Click on the *Style* tab on the left side.
1. For the *Render type* drop down, select *Singleband pseudocolor*.
1. For the *Color*, select *New color ramp*
1. Select *cpt-city* from the drop down and click *Ok*
1. Pick *Topography* from the options on the left.
1. Pick *c3t1* for our gradient.  Or select another scheme you think will work well for representing topography.  Click *Ok*.
1. Next, you'll see a dialog asking what you want to call your new gradient.  I suggest leaving the default name, but you can call it what you like.  Click *Ok* when you're done.
1. You'll see that the color ramp in the Layers Properties has updated.  Click *Apply* to see what it looks like with our data.

This is good, but I think it would be easier to understand if we set the water to a more intuitive color.  Yes, this means our color ramp will have a disconnect in it, but I think it will help us visually interpret the data better.

1. In the Layer Properties, double click on the color box representing the lowest value to open the Change Color dialog.  Select a shade of blue that you lick and click *Ok*.  And then click *Apply* in the Layer Properties to see how it looks.  
1. Continue to adjust the colors until you are happy with the colors, then click *Ok*.

![alt text](https://github.com/MicheleTobias/Geospatial-Data-Visualization/blob/master/images/Raster_Continuous.PNG "Digital Elevation Model with a continuous color ramp")


# Vector Data

## Attributes tables

## Select by attributes

Select trees older or larger than a certain value.

## Symbolizing layers by attributes

1. Single symbols
1. Changing symbols based on attributes - using Tree Species?
1. Rule-based using DBH

# Making a map with the print composer

1. Add map
1. Adjust scale
1. Add extras - legend, scale bar, etc. + item properties
1. Export

# Select by Location
Which large trees are in seismic hazard zones?

# Further Reading & Resources

[QGIS Documentation](https://qgis.org/en/docs/index.html): includes the User Guide, Training Manual, and Gentle Introduction to GIS

[Open Source Geospatial Foundation](https://www.osgeo.org/): includes news and information about projects, conferences, and community


