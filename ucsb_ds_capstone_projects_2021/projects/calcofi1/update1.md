# Update 1


## Project Introduction
- CALCOFI is an organization tasked with studying the marine environment of coastal California and investigating the relationships between climate, fish population, and other human activities.
- Our project focuses on two separate information sets: fish larvae catch data from CALCOFI cruises intended to measure populations of various species, and commercial fish data from fisheries in California.
- We are seeking to establish whether any correlation can be drawn from the two datasets, as well as possibly investigate any environmental factors that add variance to the relationship.

## Summary of Datasets
- Larvae Dataset
    - A column for times, and one for every species caugh
    - Very sparse dataset, since most of the cruises caught 0 of a particular species
- Commercial Fishery dataset
    - Columns for time, location, and which species was caught
    - Species are in common, rather than scientific, names so need to be converted
    - Also column for total price and pounds caught of fish
        - However, because of data privacy, much of the price/pounds are redacted (if there were very few cruises that month).
        - We are investigating whether we can aggregate the data by using less fine location information in order to get more accurate catch information



## Exploratory Findings
- Gavin - plot of catches per year (maybe one plot), per species
- Meng - plot of catch pound per year


<img src="yellowtail_catch_by_year.png" alt="drawing" style="width:350px;"/>
<img src="yellowtail_larva_by_year.png" alt="drawing" style="width:350px;"/>

- Another investigation we did focused on seeing whether the two datasets had any visible patterns/connections.
    - As we can see from the screenshots above, both the larva and the catches appear to have peaks around 1997, and around 2015. Further analysis, both on the environmental causes and on the statistical significance of this connection, is necessary.

- Andie - Yellowtail spatial data