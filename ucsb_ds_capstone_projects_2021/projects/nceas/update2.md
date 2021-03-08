## Update 2
February 28, 2021

### Long Term Ecological Research (LTER) Datasets: R package
**Project Sponsor: National Center for Ecological Analysis and Synthesis (NCEAS)** \
**Team Members: Sam Guo, Adhitya Logan, Lia Ran, Sophia Sternberg, Karen Zhao**


#### Progress
- Began coworking hours on Fridays in addition to our weekly meeting on Mondays to collaborate, share ideas and troubleshoot.
- Learned the workflow of creating an R package from scratch based on this [example](https://github.com/isteves/r-pkg-intro ), such as creating documentation, licenses, github repositories, and functions using the say_aloha, devtools, and use_this packages.
- Created three of our own demo datasets, two where the data was provided for us, and one where we chose our own dataset from any LTER site. 
- Incorporated what we learned in past weeks, such as the github, tidyverse, and metajam workflows.
- Large importance placed on the creation of vignettes and their audiences.
- Presenting our demo packages and vignettes during our weekly meetings to update the group and to receive feedback. 
- Our installable R packages can be found here:
    - Adhitya: [Adhitya's Package](https://github.com/adhil0/alohaal)
    - Sophia: [Sophia’s Package](https://github.com/sophiasternberg/fcess)
    - Karen: [Karen’s Package](https://github.com/karenezhao/alohakez)
    - Lia: [Lia’s Package](https://github.com/liaaaaran//mcrcoral)
    - Sam: [Bonanza](https://github.com/TokyoExpress/bonanza)


###### Examples of Visualizations in our vignettes, all of which were produced using ggplot from the tidyverse package:

**[Sophia](https://github.com/sophiasternberg/fcess/blob/master/vignettes/fce_bullshark_vignette.Rmd)** \
This image shows an initial view of the Bull Shark Count Overtime. This data is from the Florida Coastal Everglades (FCE) LTER Site. I thought this was an interesting plot to include because of the pattern happening YoY. 
![shark](https://github.com/karenezhao/ucsb-ds-capstone-2021.github.io/blob/main/ucsb_ds_capstone_projects_2021/projects/nceas/update2sophia1.png?raw=true)

The second image shows the relationship between Temperature and Bull Sharks. I thought this was important to include because it brings up an important point about the nature of collecting data and taking data with a grain of salt. From a first glance, it appears that more Bull Sharks are counted when the Temperature is higher; however researchers are also more likely to survey when the Temperature is warmer/nicer and that may be a bias in the data and affect the number of Bull Sharks counted.
![shark2](https://github.com/karenezhao/ucsb-ds-capstone-2021.github.io/blob/main/ucsb_ds_capstone_projects_2021/projects/nceas/update2sophia2.png?raw=true)

**[Lia](https://github.com/liaaaaran/mcrcoral/blob/master/vignettes/mcr_fish_vignette.Rmd)**
I choose a dataset from the Moorea Coral Reef site that analyzes the changes in abundance of fish functional groups in relation to live/dead coral. My initial visualization was to showcase the obvious: how live coral rates decrease over time. Then, I plotted this per site to maybe account for biases in the data that were unobserved otherwise. We concluded that coral rates continue to decrease (yet as a slower rate), despite what the initial visualization might imply. 
![coral](https://github.com/karenezhao/ucsb-ds-capstone-2021.github.io/blob/main/ucsb_ds_capstone_projects_2021/projects/nceas/update2lia1.png?raw=true)
![coral2](https://github.com/karenezhao/ucsb-ds-capstone-2021.github.io/blob/main/ucsb_ds_capstone_projects_2021/projects/nceas/update2lia2.png?raw=true)

**[Karen](https://github.com/karenezhao/alohakez/blob/master/vignettes/cce_seabird_vignette.Rmd)** \
This plot shows Seasonal Seabird Richness from 1987 to 2006 at sea off southern California . The data is from the California Current Ecosystem (CCE) LTER.

![seabird](https://github.com/karenezhao/ucsb-ds-capstone-2021.github.io/blob/main/ucsb_ds_capstone_projects_2021/projects/nceas/update2karen.png?raw=true)

**[Adhitya](https://github.com/adhil0/alohaal/blob/master/vignettes/nwt_pikas_vignette.Rmd)** \
This plot shows the weight distributions of pikas found at various sampling sites in the Niwot Ridge LTER:

![pika](https://github.com/karenezhao/ucsb-ds-capstone-2021.github.io/blob/main/ucsb_ds_capstone_projects_2021/projects/nceas/adhitya_plot.png?raw=true)



#### Future Plans
- For the remainder of this quarter, we plan to refine our packages and vignettes even more, while adding more in-depth descriptions and other important metadata about our packages. To do this, we will need to know our datasets inside and out and understand every nuance. 
- Start deciding which datasets we will import to our final product and map out a plan of how to best collaborate on this. 

