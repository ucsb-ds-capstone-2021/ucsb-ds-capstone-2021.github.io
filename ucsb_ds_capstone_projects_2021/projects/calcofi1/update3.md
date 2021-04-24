# CALCOLFI Project Update 3

## Overview
CALCOFI is an organization tasked with studying the marine environment of coastal California and investigating the relationships between climate, fish population, and other human activities. Our project primarily focuses on two datasets:
    1. Landing - A dataset comprised of multiple fish species and how many of them were caught and sold for various price over the years.
    2. Larvae - A dataset comprised of multiple fish species and how many of their larvae was seen over the years.
In the beginning, we were using these two datasets, we intend to find any relationships, if there are any, between fish larvae and fish being caught. As time passes, our workflow and goal has changed to become more developed, and we have introduced new datasets into our project including:
    3/4. Bottle & Cast - 2 datasets that work hand in hand with one another where it contain records  of the environmental conditions where the fish and larvae occupy. Cast contains information about the cruise being sent out to collect the water samples, where Bottle contains information regarding the water quality including temperature and salinity. 

## Goal Update
While our dataset contains information for various fish species, we have decided to hone into Sardine to keep our research concise and focused. CALCOFI was founded due to investigate the decline of sardine. Thus, we wanted to update our goal and in the end, create a story with our data exploring the sardine population. To aid us in this, we decided to use Plotly Dash, a tool used where we can create a website with all our important findings and interpretations. 

## Dash Ideas
We are exploring examples of what we could do utilizing Dash. Here is a Dash app we found which structure could work for our mission.
<img src=https://raw.githubusercontent.com/4MangoTrees/ucsb-ds-capstone-2021.github.io/main/ucsb_ds_capstone_projects_2021/projects/calcofi1/dashexample.png style="width:350px;alt=drawing">

The pros for using this outline is that it has a very easy to follow structure, the fformat looks very neat, and that there is a source code for reference.

The Green Box would have a different outline similar to:
#### Overview - Background Data - Data and Importance - Prediction and Interpretation

#### Overview 
- This is where the blue circle in the image is referencing to. A general background on CALCOLFI and their mission, as well as our goal involved. We would generate a story about how CALCOLFI was founded primarily with the focus on sardine, and we can use this thematic throughout by focusing on data and manipulations related to sardine.

#### Background Data 
- Important aspect here would be spatial data analysis, good to visualize the region the audience should be focusing on.
- We would also include the impact that region can have on our analysis, including the region’s environmental factors (weather el nino la nina, ocean conditions, etc) and any related analysis.
- We could also include some basic exploratory analysis like sardine catch and larvae over time, integrated with an interactive toolkit where the user can adjust the year at will.

#### Data and Importance 
- These will be the meat of all our analysis beyond exploratory stuff where we had to do some data manipulation of some sort like lagged analysis or cross correlation
- In addition, each visualization could have a small section explaining what the data means, what insight we can take away from it
- We thought of a structure where our page would endlessly scroll down so the user can decide the pace of their reading, alongside making some of our plots interactive for the user.

#### Prediction and Interpretation
- These will be if we have any code or program that can predict anything and conclude the importance of our research



<img src=https://raw.githubusercontent.com/4MangoTrees/ucsb-ds-capstone-2021.github.io/main/ucsb_ds_capstone_projects_2021/projects/calcofi1/unnamed.png style="width:300px;alt=drawing">
