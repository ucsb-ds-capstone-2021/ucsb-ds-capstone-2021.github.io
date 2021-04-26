# Update 3

## Overview
Our goals remain the same from last quarter. We wish to identify which bee families/genera/species are generalists or specialists. We are also working on submitting an abstract to sign up to attend the annual Ecological Society of America meeting.

## ESA Annual Meeting
Our research team aim to attend the 2021 annual meeting of [the Ecological Society of America](https://www.esa.org/longbeach/). At the meeting, we will be presenting our work with a poster.  \
![alt text](https://www.esa.org/wp-content/uploads/2019/04/ecological-society-of-america_icon.png)\
We have worked on an abstract to introduce the methods and goals of this project. The following is our tentative abstract:\
With the field of big data influencing a wide range of sectors such as government, healthcare, IoT, and more, big data is rapidly growing, and its capability is vast. Recently, large biological interaction datasets have become increasingly prevalent due to greater data collection and storage. Since pollination is an essential process for ecosystem health and food production, we find value in measuring biodiversity in pollinator bees at the family, genus, and species taxonomic levels. Through our analysis, we can develop an interpretation of the specialist versus the generalist. However, we come to find that there exist several sources of bias within the data. By recognizing that the specialist versus generalist definition is not clearly defined, we can work with programming software (Python & R) to clean, visualize, and statistically test our data in order to cultivate a more complex understanding of our motivation. Ultimately, we will construct a machine learning model to differentiate between a specialist and a generalist. Our work and results underscore the gravity of biodiversity measurement on a global scale and will contribute to downstream research within adjacent areas of study. 

## Progress

### [Reference Data](https://jarrodfowler.com/specialist_bees.html)
Last quarter we have attemped to create our own criteria for generalist/specialist identification in [GloBI](https://www.globalbioticinteractions.org/data) data. Starting this quarter, we have been working on comparing GloBI data with a set of reference data provided by Jarrod Fowler. The reference data consists of three tables, each containing a list of specialist bees in one geological region in America ([East](https://jarrodfowler.com/specialist_bees.html), [Central](https://jarrodfowler.com/bees_pollen.html), and [West](https://jarrodfowler.com/pollen_specialist.html)). In addition, the Fowler dataset includes information about the rarity of each bee species.

### Difficulties
Some difficulties working with the Fowler data include the fact that we are not quite sure what were Fowler's standards for deciding on which bee species were specialists. By comparing his specialist bees with GloBI interaction data, we hope to see some consistency in how specialists were defined. Additionally, since the Fowler data was split between the three regions of the US, some bees were considered as specialists in the East, but not in the West, etc. This complicates the situation since we might need to take into account spatial data during our comparisons, but the GloBI dataset is missing latitude/longitude information for roughly 30% of the bee interactions. Also, we realized that if we do not divide the GloBI data into West, East, and Central like the Fowler data, then there might be inconsistencies and conflicting data since GloBI is global while the Fowler data is just for the US. One more difficulty is that Fowler's data entry is not consistent. For example, in the column for plant information, not every plant has its family, tribe, or genera all listed. Some pieces may be missing. This makes it difficult to extract plant information from Fowler and compare it to GloBI.

### Compare specialists defined by GloBI and Fowler

As mentioned in our paper abstract, one of our main goals is to figure out how we can utilize large data sources to make discoveries about bee specialization. In order to do this, we wanted to create some guidelines for what it actually means to be a specialist or a generalist. To do so, we used the Fowler citations on specialist bees, and compared it to the degree of specialization as cited by GLOBI.

```{figure} Screen Shot 2021-04-25 at 5.28.40 PM.png
```

Below is a plot of the GLOBI interaction degree and number of total bee citations. We were able to use color to cluster bee genuses that are qualified as specialists.

```{figure} Screen Shot 2021-04-25 at 5.29.04 PM.png
---
name: Degree of Specialization, Citation Count on Specialization Class
---
Clusters of bee genus generalists and specialists based on GLOBI degree of specialization and bee genus citation count.
```

Clearly, we can begin to see separation between the two groups as bee citation count increases. Bees with lower degrees of specialization are clearly more likely to be identified in Fowler’s list of specialists. The plot also shows that its clear to determine whether a bee is a specialist or not from the GLOBI data if its citation count is below some threshold (seemingly about 50 citations).

Some major issues still are evident from the plot, though. Clearly, there are generalist bees that have both high citation counts and low specialization degrees! We believe this is a result of a misclassification by Fowler. Since Fowler's list of specialists is not extensive to all bee genus, it’s very possible that some specialist bees are omitted. Using data from GLOBI in unison with plots like these may be a fantastic way to find these inconsistencies/inaccuracies in Fowler's list.

The second major issue that arises is that there remain specialist bees (in blue) that have very high degrees of specialization. We found that this issue likely stems from the GLOBI set. Since GLOBI allows citations from people nationally, there are likely many misclassifications and, as a result, the most valuable citations are those that are repeated multiple times by various sources. Since we consider our degree to include any unique plant family interacted with, bee-plant interactions that have only been cited once or twice majorly increase our degree of specialization. If we only allow plant interactions that are cited more than five times to contribute to our degree, we can eliminate some of these specialist bees with high specialization degrees.

```{figure} Screen Shot 2021-04-25 at 5.29.15 PM.png
---
name: Degree of Specialization cut at interactions with a minimum of 5 citations, Citation Count on Specialization Class
---
Clusters of bee genus generalists and specialists based on GLOBI degree of specialization, as we have recalculated using a minimum citation of 5, and bee genus citation count.
```

Still, though, there remain many seemingly misclassified specialists and generalists. Since discovering this, we have been trying to find ways to separate the data to minimize these inconsistencies. One such way was to create a function of the degree specialization to transform the data in such a way that would further separate specialist and generalist groups. By summing the square of the percentage of citations an interaction accounts for, we are able to better separate the clusters. 

```{figure} Screen Shot 2021-04-25 at 5.39.47 PM.png
```

```{figure} Screen Shot 2021-04-25 at 5.29.53 PM.png
---
name: Tranformed funcition of Degree of specialization, Citation Count on Specialization Class
---
Clusters of bee genus generalists and specialists based on our transformed function of GLOBI degree of specialization and bee genus citation count.
```

While our data transformation is less practical to understanding how degree of specialization affects specialist labels, it does allow us to further separate the clusters. We hope to make more transformations like these to best understand how labels of generalists or specialists are assigned, and whether it is a consistent qualifier. 

### Using Fowler specialists as training data for GloBI



