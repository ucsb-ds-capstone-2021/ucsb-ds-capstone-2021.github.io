# Update 1


## Project Introduction
- CALCOFI is an organization tasked with studying the marine environment of coastal California and investigating the relationships between climate, fish population, and other human activities.
- Our project focuses on two separate information sets: fish larvae catch data from CALCOFI cruises intended to measure populations of various species, and commercial fish data from fisheries in California.
- We are seeking to establish whether any correlation can be drawn from the two datasets, as well as possibly investigate any environmental factors that add variance to the relationship.

## Summary of Datasets
- Larvae Dataset
    - A column for times, and one for every species caught
    - Very sparse dataset, since most of the cruises caught 0 of a particular species
- Commercial Fishery dataset
    - Columns for time, location, and which species was caught
    - Species are in common, rather than scientific, names so need to be converted
    - Also column for total price and pounds caught of fish
        - However, because of data privacy, much of the price/pounds are redacted (if there were very few cruises that month).
        - We are investigating whether we can aggregate the data by using coarser spatial resolution in order to get more accurate catch information



## Exploratory Findings

<img src="https://raw.githubusercontent.com/reznikovl/ucsb-ds-capstone-2021.github.io/main/ucsb_ds_capstone_projects_2021/projects/calcofi1/fishcount_2.png" alt="drawing" style="width:700px;"/>

 - First, we took a very general look at the count of species by year. The data appears to be somewhat random, with possible correlations betwen certain species. There appears to be a general downward trend from 2000-2012.

<img src="https://github.com/reznikovl/ucsb-ds-capstone-2021.github.io/blob/main/ucsb_ds_capstone_projects_2021/projects/calcofi1/distribution%20of%20fish%20species%201969-2020.png?raw=true" alt="drawing" style="width:700px;"/>

 - As we can see from the above, there is a wide range of amounts of times each species has been caught, ranging from about 5000-10000.


### Next, we focused on yellowtail because that was the easiest one to match between the datasets, but we will expand this analysis to more species soon.

<img src="https://github.com/reznikovl/ucsb-ds-capstone-2021.github.io/blob/main/ucsb_ds_capstone_projects_2021/projects/calcofi1/yellowtail.png?raw=true" alt="drawing" style="width:350px;"/>
<img src="https://github.com/reznikovl/ucsb-ds-capstone-2021.github.io/blob/main/ucsb_ds_capstone_projects_2021/projects/calcofi1/yellowtailpriceyear.png?raw=true" alt="drawing" style="width:350px;"/>

 - It was interesting that while the price and the catch pounds spiked in the same years, the catch price appeared to have an opposite relationship. Another interesting factor is that in 2015, many fisherman appear to catch yellowtail, but there is a much smaller increase in pounds caught.

<img src="https://github.com/reznikovl/ucsb-ds-capstone-2021.github.io/blob/main/ucsb_ds_capstone_projects_2021/projects/calcofi1/yellowtail_catch_by_year.png?raw=true" alt="drawing" style="width:350px;"/>
<img src="https://github.com/reznikovl/ucsb-ds-capstone-2021.github.io/blob/main/ucsb_ds_capstone_projects_2021/projects/calcofi1/yellowtail_larva_by_year.png?raw=true" alt="drawing" style="width:350px;"/>

- Another investigation we did focused on seeing whether the two datasets had any visible patterns/connections.
    - As we can see from the screenshots above, both the larva and the catches appear to have peaks around 1997, and around 2015. Further analysis, both on the environmental causes and on the statistical significance of this connection, is necessary.

<img src="https://github.com/reznikovl/ucsb-ds-capstone-2021.github.io/blob/main/ucsb_ds_capstone_projects_2021/projects/calcofi1/Screen%20Shot%202021-01-28%20at%2011.09.50%20PM.png?raw=true" alt="drawing" style="width:500px;"/>

- Finally, we looked at a visualization of all Yellowtail larvae identified in 2016 (purple) compared to all locations Yellowtail were caught in the years 2017-2019 (yellow blocks). The time lag was picked to give enough time for recruitment to happen, so the larvae identified in 2016 could possibly be the same fish caught in the later years. All the larvae and almost all of the catches occurred within the Southern California bight which might suggest some spatial relations.

