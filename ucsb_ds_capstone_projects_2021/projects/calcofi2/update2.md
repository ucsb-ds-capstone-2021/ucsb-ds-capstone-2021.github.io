# Update 2

## Overview

We have been working on taking our progress, results, and findings from update 1 and building our analyses on top of that here in order to keep extracting
valuable information regarding our fish and water data. We also had to overcome a few obstacles with respect to matching our two datasets we have (fish and water)
to each other so that we can analyze the fish and water datasets together. For example, in order to be able to easily see what the water characteristics were when a
certain fish species was very dominant. We have been making more visualizations, more processed datasets , as well as drawing together various correlations in order to start to draw out correlations between the makeup of fish and water characteristics (specifically pH). Finally, we also worked on taking our water dataset, and being able to interpolate what the pH level of the water should be at a given place and time based on the other water characteristics we do have available in the dataset due to great work from a paper that we will write the reference for in the "Accurately Inferring Water pH Values Based On Other Water Characteristics" section.

## Making More Processed Datasets

### Subsetting the Fish Dataset to Match the Water Dataset Sample Locations/Times

### Grouping and splitting the Fish Dataset by Location

### Finsing the Most Abundant Fish Species at a given location at a Given Time (and storing in a dataset)

## Some Intermediate Correlations

## Heatmaps of Water Characteristics

## Accurately Inferring Water pH Values Based On Other Water Characteristics

Our dataset containing the water characteristics contains many water characteristics, about water at any avilable location and time in the ocean from 2008-2015 over various depths. However, the dataset does not contain information about the water pH at these times and locations. Therefore, we wanted to find a way to accurately infer the water pH values at the given location/time water samples in our dataset. This way, at any available location/time in the water dataset, we can also be able to look at the water pH level as well. This is very important to us because we strongly suspect that the pH levels play a very significant part in determinint the makeup of the fish population, and in determining which fish species are more abundant where.

Due to the paper Perspectives in Environmental Chemistry by Donald L. Macalady (http://denning.atmos.colostate.edu/ats760/Readings/Tans_1998.pdf), as well as the discussion Simplified Carbonate Chemistry of Seawater based on an article by Pieter Tans, and the website https://biocycle.atmos.colostate.edu/shiny/carbonate/#References, we wrote a Python script using the algorithm from the above mentioned sources that calculates the water pH level, based on using the water DIC (Dissolved Inorganic Carbon), TA (Total Alkalinity), and Temperature. 
