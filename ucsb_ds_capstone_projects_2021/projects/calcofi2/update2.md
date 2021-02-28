# Update 2

## Overview

We have been working on taking our progress, results, and findings from update 1 and building our analyses on top of that here in order to keep extracting
valuable information regarding our fish and water data. We also had to overcome a few obstacles with respect to matching our two datasets we have (fish and water)
to each other so that we can analyze the fish and water datasets together. For example, in order to be able to easily see what the water characteristics were when a
certain fish species was very dominant. We have been making more visualizations, more processed datasets , as well as drawing together various correlations in order to start to draw out correlations between the makeup of fish and water characteristics (specifically pH). Finally, we also worked on taking our water dataset, and being able to interpolate what the pH level of the water should be at a given place and time based on the other water characteristics we do have available in the dataset due to great work from a paper that we will write the reference for in the "Accurately Inferring Water pH Values Based On Other Water Characteristics" section.

## Making More Processed Datasets

### Subsetting the Fish Dataset to Match the Water Dataset Sample Locations/Times

### Grouping and Splitting the Water and Fish Dataset by Location

We made sub-time series datasets, where each of these smaller datasets give the time series of water over all time steps in a certain small location area. We also split the fish data up this way as well in order to analyze the time series at a certain location only.


### Finding the Most Abundant Fish Species at a given location at a Given Time (and storing it as a dataset)

In order to be able to correlate the makeup of fish species to water characteristics, we have started by obtaining the three most abundant fish species at a given location and time, and storing these results in a .csv file as a dataset. The fish dataset consists of fish abundance at a given location and time for each species of fish we are looking at, however we needed a way to compare abundance of two species against each other to see which has more abundant. For example at a given time/location, a species with abundance level of 19 when it's average abundance is 10 is a different abundance level measure than a species with abundance of 19 when its average abundance is 500. So in order to compare this, we made another dataset, that measures the abundance of a species relative to its mean abundance at any given space and time. This way now, we can look at this relative abundances, and pick out the top three at a given time/location to be able to accurately extract "most abundant species". From here we are now working on drawing out as many correlations and derived statistics as we can relating fish species abundance to water characteriatics.

## Water Correlations

## Heatmaps of Water Characteristics

One of our objectives, we hold important for our goal of being able to find correlations between water characteristics and makeup of fish, is to be able to clearly visualize the levels of a given water characteristic at all present locations, at all given time steps. For example, to be able to view a spatial heatmap of say water TA (Total Alkalinity, which measures the water's ability to not be affected by an introduction of an acidic compound to the water), where at any given time step, we can spatially visualize the pH levels of the water at all present locations in the dataset by color on a 2D lattitude/longitude graph (red color at a location means high TA, blue color means low TA). We decided on the color theme, of a red color at a graph location indicating higher levels of the observed characteristic and blue color indicating lower level. 

However, what does "high" and "low" mean with respect to a given water characteristic? How do we decide on what "high" and "low" should be for a water characteristic. For any given water characteristic, we looked at the range of values it holds overall over all of the time steps (looking at the globally lowest and highest value in the dataset), and base the notion of "high" and "low" for that observed characteristic. At a given location and time step, the closer to the global minimum the characteristic value is, the "lower" and hence more blue it is denoted as, and the closer the the global maximum the value there is, the "higher" and more red it is denoted as. We made sure that for a given characteristic, we keep the same range of values we are color coding by over all time steps, so that this way we can compare how characteristic levels are changing over time visually by looking at how the colors change spatially over time, by looking at all the time step heatmaps for a given characteristic.

**Insert AlkalinityHeatmap.png and AlkalinityHeatmap2.png here**

## Accurately Inferring Water pH Values Based On Other Water Characteristics

Our dataset containing the water characteristics contains many water characteristics, about water at any avilable location and time in the ocean from 2008-2015 over various depths. However, the dataset does not contain information about the water pH at these times and locations. Therefore, we wanted to find a way to accurately infer the water pH values at the given location/time water samples in our dataset. This way, at any available location/time in the water dataset, we can also be able to look at the water pH level as well. This is very important to us because we strongly suspect that the pH levels play a very significant part in determinint the makeup of the fish population, and in determining which fish species are more abundant where.

Due to the paper Perspectives in Environmental Chemistry by Donald L. Macalady (http://denning.atmos.colostate.edu/ats760/Readings/Tans_1998.pdf), as well as the discussion Simplified Carbonate Chemistry of Seawater based on an article by Pieter Tans, and the website https://biocycle.atmos.colostate.edu/shiny/carbonate/#References, we wrote a Python script using the algorithm from the above mentioned sources that calculates the water pH level, based on using the water DIC (Dissolved Inorganic Carbon), TA (Total Alkalinity), and Temperature. 

**Insert pHHEatmap.png here"
