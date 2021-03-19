# Update 2
## Week 5
This week we focused on cleaning the data into something we can collaboratively work with together. Instead of all of us having our own code for cleaning the data, we want to have a script that is used to clean data periodically so that we can work on the same exported data. The original file contains all recorded biotic interactions, and we want to create a file with only bees <-> plants interactions. \
In order to spot all entries with bees, we filter the animal family with the seven ([bee families](https://www.beelab.umn.edu/bees/bee-diversity)): Andrenidae, Apidae, Colletidae, Halictidae, Megachilidae, Melittidae, and Stenotritidae. The criterion for plants is simply TaxonKingdomName == "Plantae". The interactions would be either bees as source and plants as target, or plants as source and bees as target, which we predict would have less entries. Other specific requirements include case insensitivity and removing duplicate entries.

## Week 6
We compared the cleaning script from the Python team to that of the R team. We found that the observation count of the R and Python groups were close but not exact. The issue of duplicate rows was discussed in greater detail- trying to figure out whether duplicate observations were erroneous or true citations. We decided to use the reticulate package in R to call Python code from RMarkdown so that we would have one consistent cleaning script.
In addition, we reviewed our visualizations- network graphs and heat maps, focusing on specifics such as color-coding nodes by taxon family. We also spent some time discussing our long-term objective relating to classifying certain bees as specialists or generalists. A generalist can thrive in various environmental and temporal conditions while a specialist can only survive in more specific conditions. For example, a bee species that interacts with 40 different plant families may be more generalized than a bee species that interacts with 10 plant families. 

![](https://github.com/angelchen7/ucsb-ds-capstone-2021.github.io/blob/main/ucsb_ds_capstone_projects_2021/projects/ccber/genus_to_genus.png?raw=true)
![](https://github.com/angelchen7/ucsb-ds-capstone-2021.github.io/blob/main/ucsb_ds_capstone_projects_2021/projects/ccber/species_to_species.png?raw=true)

## Week 7
For this week, we discussed how to decide what interactions are meaningful or not. For example, there are instances where a bee visits a particular plant only once, and this seems insignificant when there are other interactions that have been recorded between the same bee and plant thousands of times. We also found some observations in our dataset that have been entered incorrectly by people, so the maintainers of the dataset have been notified of this error. 

More importantly, we decided to focus on studying the different levels of specialization for the bees. We were tasked with finding out the connections at these levels:

-bee families to plant families, genera, and species

-bee genera to plant families, genera, and species

-bee species to plant families, genera, and species

We needed to explore these varying levels of specialization with the Apidae, Andrenidae, and Halictidae bee families.

## Week 8

 After last weeks discussion of targeting different levels of specialization for bees, we were able to further explore these different levels. Specifically, we found heatmaps to be a great way of finding interactions at different levels that are significant. While the heatmaps enabled us to identify particularly interesting plant bee relationships, and also gave us a quick and general way to identify specialists/generalists, we found that comparing these relationships was hard to quantify using heatmaps. By using bar plots to better study and quantify the differences between relationships we had found, we were able to look into various levels of species interaction in a much more informatve context.

![](https://github.com/nickb1125/ucsb-ds-capstone-2021.github.io/blob/main/ucsb_ds_capstone_projects_2021/projects/ccber/Screen%20Shot%202021-02-24%20at%203.56.36%20PM.png?raw=true)
![](https://github.com/nickb1125/ucsb-ds-capstone-2021.github.io/blob/main/ucsb_ds_capstone_projects_2021/projects/ccber/Screen%20Shot%202021-02-24%20at%203.56.47%20PM.png?raw=true)
![](https://github.com/nickb1125/ucsb-ds-capstone-2021.github.io/blob/main/ucsb_ds_capstone_projects_2021/projects/ccber/Screen%20Shot%202021-02-24%20at%203.56.55%20PM.png?raw=true)

