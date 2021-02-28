In our last progress update, we took a brief look at the visual relationship between the larvae and the fishery catch. Now that we got more refined data, we noticed strong correlation with certain fish, such as pacific sardine:

![Img1](https://github.com/gavintieng/ucsb-ds-capstone-2021.github.io/blob/main/ucsb_ds_capstone_projects_2021/projects/calcofi1/update2_exploratory.png?raw=true)

At this point, we wanted to explore the possibility of a more causal relationship by offsetting the years between the datasets. This way, it would give us a better look if, for example, a higher larvae count 2-4 years ago could potentially predict a higher fishery catch later. We performed a basic linear correlation on the offset data, generating the following graph:
![img2](https://github.com/gavintieng/ucsb-ds-capstone-2021.github.io/blob/main/ucsb_ds_capstone_projects_2021/projects/calcofi1/update2_final.png?raw=true)

As we can see, several fish (anchovy and opah) hold almost no correlation regardless of the year offset. However, the fish with the highest correlations (both mackarels and the sardine) do seem to have higher correlations when offsetted by several years, around the typical lifespans of the fish.

The logical next steps would be to now explore performing some significance tests between the two correlations to see if they differ by a statistically significant amount, or purely by random chance. Either way, we were quite excited about finding any such relationship in the data, even if it is only moderately strong.
