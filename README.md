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
There are several data spatial data models that you may encounter as you work with spatial data.  The two you will likely encounter most frequently are called vector and raster data. 

![alt text](https://github.com/MicheleTobias/Intro-to-Desktop-GIS-with-QGIS/blob/master/images/geometries_data_types.png "A visual table of raster vs. vector data as continuous and discrete data.")

## Vector Data
Vector data represents discrete objects in the real world with points, lines, and polygons in the dataset. 

If you were to draw a map to your house for a friend, you would typically use vector data - roads would be lines, a shopping center included as an important landmark might be a rectangle of sorts, and your house might be a point (perhaps represented by a star or a house icon).

## Raster Data
Raster data represents continuous fields or discrete objects on a grid, storing measurements or category names in each cell of the grid.

Digital photos are raster data you are already familiar with.  If you zoom in far enough on a digital photo, you'll see that photo is made up of pixels, which appear as colored squares.  Pixels are cells in a regular grid and each contains the digital code that corresponds to the color that should be displayed there.  Satellite images are a very similar situation.


# Download data
In this workshop, we'll be using the following data: 

1. Digital Elevation Model (DEM) of San Francisco 
1. Streets
1. Trees
1. Seismic Hazard Zones
1. City of San Francisco Boundary

You can download all of this data from this [Box Folder Online](https://ucdavis.box.com/s/cnlz6ejmje4qgf7z80h7ygbwydc65kkm).

# Start QGIS & Open a New Project
Start QGIS in the way you typically open any program on your particular computer's operating system.  It's normal that it may take a minute to open.

When QGIS opens, you may see a list of recent projects, or if this is a new installation, there may not be any listed.  It doesn't matter which you see, because we want to start a new project.  To do this, click on the *Project* menu in the upper left of the window and select *New* - or you can click the white page icon that is usually near the *Project* menu on the tool bar.

# Import data into QGIS
Let's load some data.

##  Raster Data
Let's load the data:

1. Click on the *Add Data Source* button on your toolbar.  It looks like three cards (one red, one yellow, and one blue) fanned out.
1. Click the *Raster* button (it looks like a checker board) on the left side of the *Data Source Manager* window.
1. Click on the "..." button and then navigate to where you saved your workshop data and select the *DEM_SF.tif* file.
1. Click *Open*.
1. Finally, click "Add" and you should see a black and white raster image appear in the map canvas below the dialog you're working in.

You can leave the *Data Source Manager* window open so we can add some more data.

## Vector
### Shapefiles
Shapefiles are a very popular vector data format.  Let's load our shapefile data.

1. In the *Data Source Manager*, click on the *Vector* tab on the left.
1. In the *Source* section, click on the "..." and navigate to the folder containing your vector data.
1. Holding down the Shift button on your keyboard while you click, select your *Recreation and Parks Facilities.zip*, *San Francisco Basemap Street Centerlines.zip*, *San Francisco Seismic Hazard Zones.zip*, and *SF Shorelines and Islands.zip*.  Then click *Open*.
1. In the *Data Source Manager* click *Add*.

### CSV Data
It's pretty common to get point data in "CSV" file, especially if the spatial data is represented by latitude and longitude coordinates.  CSV stands for Comma Separated Value.  Typically this is tabular data where the edge of each cell of the table is indicated by a comma.  Sometimes people use a different character instead of the comma such as a semicolon, tab, or pipe. The character used to indicate the edge of the cells is called the "delimiter".  If a file has tabs as the delimeter, for example, you would call that file a "tab delimited" file.

To load our .csv file:

1. In the *Data Source Manager*, click on the *Delimited Text* tab on the left.  Notice that the icon is a comma.
1. Next to the *File Name* text box, click the "..." button, then navigate to your *Street_Tree_Map.csv* file and click *Open*.
1. In the *File format* section, we'll leave the default selection of *CSV (comma separated values)*, but if you had a file with a different delimiter, you could change the delimiter by using *Custom delimiters*.
1. In the *Records and fields options* section, make sure *First record has field names* is checked.  If your data didn't have table headings, you would want to uncheck this box.
1. In the *Geometry definition* section is where we indicate what kind of geometry we have.  For ours, select *Point coordinates* and in the *X field*, pick "Longitude", and for the *Y field* pick "Latitude".
1. Review the *Sample data* section to preview how the attribute table will look.  This is a good way to find out if you picked the right delimiter or if your data has some formatting issues (such as someone put commas in a text field and use commas as the delimiter).
1. If everything looks good, click *Add*.  This is a reasonably large file, so be patient as it loads.

1. Table of contents/layers panel
1. Layer properties

# Saving Project Files
Now that we've added data to our project, let's save it so we can come back to it later.  

1. Click on the blue floppy disk icon (or from the *File* menu, select *Save*).
1. Navigate to where you want to save your project file. 
1. In the *File name* box, type the name you would like your file to have.  Give it a descriptive name so you'll remember what the file was for.
1. In the *Save as type* drop down, choose *.qgs*.  *.qgz* is also an option that saves the project in a compressed format.  (See [this post](http://osgeo-org.1560.x6.nabble.com/QGIS-Developer-Why-is-qgz-the-default-format-td5392345.html) for more details about the discussion around .qgs vs. .qgz formats)

Note for ESRI users: QGIS' .qgs file is analogous to ArcMap's .mxd files.

# Working with Raster Data

Let's start by looking at some Raster data.  We'll work with a digital elevation model (DEM) for San Francisco.  A DEM is a raster in which each cell in the grid contains the elevation at that location.

For now, let's turn off all of the layers in the *Layers* panel except for the DEM_SF layer.

Now you should see a gray scale image that roughly looks like the San Francisco peninsula.  This is a Digital Elevation Model (DEM).  Each cell in the raster contains a number representing the elevation at that location.  

Let's style this data:
1. Open the *Layer Styling* Panel by clicking on the *View* menu, then *Panels*, and checking the box for *Layer Styling*.
1. At the top of the panel that opens, select the DEM from the drop-down menu, or highlight that layer in the *Layers* panel.
1. Click on the *Symbology* tab on the left side (the icon looks like a paintbrush painting a rainbow).
1. For the *Render type* drop down (just below where you selected the layer), select *Singleband pseudocolor*.
1. Expand the *Min/Max Value Settings" area.  In the *Statistics extent* drop-down, select *Whole raster*.  For *Accuracy*, select *Actual (slower)*.
1. For the *Color ramp*, select *Create new color ramp*
1. Select *Catalog: cpt-city* from the drop down and click *Ok*
1. Pick *Topography* from the options on the left.
1. Pick *cd-a* for our gradient.  Or select another scheme you think will work well for representing topography.  Click *Ok*.
1. You'll see that the color ramp in the Layers Properties has updated.  Click *Apply* to see what it looks like with our data or check the box next to *Live update* to apply changes as you make them.

This result is ok, but I think we can make some more improvements to see the shoreline better.  

1. In the *Layer Styling* panel again, for the *Interpolation* drop-down, select *Discrete*.
1. For the *Mode*, select *Equal Interval*. For *Classes*, input 10.
1. Change the *Value* number for the lowest category to 0.  And then click *Apply* in the Layer Properties to see how it looks.  You should see a more defined coastline that looks more like the docks around the city.
1. Continue to adjust the colors and/or breaks until you are happy with how it looks, then click *Ok*.  (See the image below for one option.)

Note: the Min value is -9.36748 and the Max value is 399.963.  You can reset this if you need to by selecting the *Min/max* radio button in the *Min/Max Value Settings* again.

![alt text](https://github.com/MicheleTobias/Intro-to-Desktop-GIS-with-QGIS/blob/master/images/Raster_LayerProperties.PNG "Layer properties for DEM")

![alt text](https://github.com/MicheleTobias/Intro-to-Desktop-GIS-with-QGIS/blob/master/images/Raster_DEM.PNG "Digital Elevation Model with a continuous color ramp")

Now you've had a first look at how to style raster data for better viewer understanding.  There is a wide variety of analysis and data processing that we can't learn today in our limited time.  For more on working with raster data, see the [Raster Module of the QGIS Training Manual](https://docs.qgis.org/2.18/en/docs/training_manual/rasters/index.html).


# Working with Vector Data

## Attributes tables

## Select by attributes

Select trees older or larger than a certain value.

## Symbolizing layers by attributes

1. Single symbols
1. Changing symbols based on attributes - using Tree Species?
1. Rule-based using DBH

To learn more about processing and analyzing vector data, see the [QGIS Training Manual's Module on Vector Analysis](https://docs.qgis.org/2.18/en/docs/training_manual/vector_analysis/index.html).  To learn about creating vector data, see the [QGIS Training Manual's Module on Creating Vecotr Data](https://docs.qgis.org/2.18/en/docs/training_manual/create_vector_data/index.html).

# Making a map with the print composer

1. Add map
1. Adjust scale
1. Add extras - legend, scale bar, etc. + item properties
1. Export

You may want to add background layers such as coastlines or land masses from data sources like:
* [Natural Earth Data](http://naturalearthdata.com/)
* [Project Linework](http://www.projectlinework.org/)
* [GADM](https://gadm.org/)

# Select by Location
Which large trees are in seismic hazard zones?

# Further Reading & Resources

[QGIS Documentation](https://qgis.org/en/docs/index.html): includes the User Guide, Training Manual, and Gentle Introduction to GIS

[Open Source Geospatial Foundation](https://www.osgeo.org/): includes news and information about projects, conferences, and community


