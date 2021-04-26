# Update 3

## Overview

After update 1 and 2, we have been working on connecting the more independent explorations and progress we have made to get closer to our main goal of correlating pH with larval fish abundance. We have stepped beyond the inital exploratory aspects of the project and have completed data processing, began exploring species correlations, and looked further into kriging for data interpolation. With our calculations of pH, we are beginning to explore its relationship to the species and other factors in our datasets. 

## Reiterating Our Project and Goal

In our project, we aim to correlate water data containing many water characteristics at a given location and time, to our fish data, in order to draw better understand relationships between how water characteristics affect the makeup of specific species in California's oceans. We are especially interested in seeing how water pH affects the makeup of these fish species. We hope that our conclusions can be used to for one, be able to accurately infer what the makeup of fish looks like at a given time where we know the water makeup, and two also be able to predict what the makeup of fish should look like in the future. We hope that this will help reduce the effort needed to be able to get a portrayal of the makeup of fish, since currently usually sampling the fish by a boat all along California's oceans is the effort that is needed.

We are have a water time series dataset, what gives information about many water characteristics over many different locations, from 2008-2015, and we also have a fish time series dataset that tells us the abundance of each fish species at a given location and time, from the 1960's until present.

## Data Processing 

### Adding pH Calculations to Fish and Water Data

Data processing has been a big part of this project as we have to connect the water characterisitcs data to the larval fish data. After subsetting the larger fish dataset to match the avaialble dates and locations from the water data, we were able to match fish and water observations and added in the calculated pH values for each observation, as mentioned in ![Update 2](https://github.com/robin-hollingsworth/ucsb-ds-capstone-2021.github.io/blob/906a6bfefde537a4d696601f5abceefaa6951477/ucsb_ds_capstone_projects_2021/projects/calcofi2/update2.md). Being able to have the pH for each observation was a huge step towards our main project goal of correlating pH to larval fish abundance. Now we have all variables and measurements in one dataset with matching dates and locations from water, fish and pH calculations. We then decided to remove the water characteristics, except salinity and temperature. Because these water characteristics were used in the calculation of pH, we can infer their relationship with the species' abundance through their relationship with pH and we mostly care about pH for the purpose of this project to observe the effects of climate change. 

### Relative Abundance

The original larval fish dataset gave an abundance measurement for each species. For the sake of this project we want to look at how the abundance is changing over time so we wanted a abundance value that would allow us to do that among species. With current measurement, we are not able to compare values with other species to see which are increasing more or less relative to each other. To solve this issue, we calculated a "relative abundance" value within each species using the formula:

```
(value - average abundance) / average abundance
```

We changed all 0 values (where there is no observation of a species) to NA values so that we could distinguish it with an abundance observation that is equivalent to the mean, meaning a relative abundance of 0.

### Formatting Datasets

One issue we ran into with the way the datasets differed was that the water dataset was collected in the same locations over different depths while the fish dataset only had one collection per location. pH was calulated using the water characteristics at each depth so for one location their were multiple pH values. To avoid having repeated fish adundances, we found the minimum, maximum and mean pH values over the depths for each location. This allows us to keep some of the integrigity of the water dataset but also make it flow easily with the larval fish data. 

Seeing that we had a very wide dataset (large number of columns), we created a long (more rows, less columns) format dataset. This would make it easier to filter the dataset to subset a particular species or pH measurement (min, max, or mean) to explore. To do this, we created a column for the species name, relative abundance, pH measurement, and pH value.

```{figure} images/wide_data.png
---
height: 300px
name: Wide Data
---
Wide Dataset: This is the format of the data after water, fish, and pH were combined into one dataset and the min, max and mean pH values are calculated.
```

```{figure} images/long_data.png
---
height: 300px
name: Long Data
---
Long Dataset: This is the format of the "long" dataset with the pH and adundances turned into columns. 
```


## Cluster Network






## Kriging 






## Next phrase




