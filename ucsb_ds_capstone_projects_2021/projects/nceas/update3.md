## Update 3
April 23, 2021

### Long Term Ecological Research (LTER) Datasets: R package
**Project Sponsor: National Center for Ecological Analysis and Synthesis (NCEAS)** \
**Mentors: Dr. Julien Brun, Dr. Allison Horst, Dr. Sang-Yun Oh** \
**Team Members: Sam Guo, Adhitya Logan, Lia Ran, Sophia Sternberg, Karen Zhao**

#### Goal
Build an R package and accompanying website that contains one sample dataset from each of the 28 Long Term Ecological Research (LTER) Network sites for use in data science education as an alternative to the popular but controversial [iris](https://archive.ics.uci.edu/ml/datasets/Iris) dataset. 


#### Background Info
The [LTER network](https://lternet.edu/) is a set of 28 National Science Foundation-funded research programs to observe long-term and large scale ecological effects at various sites across the United States. LTER datasets are archived in a centralized data repository managed by the [Environmental Data Initiative (EDI)](https://portal.edirepository.org/nis/home.jsp). Our project sponsor, [NCEAS](https://www.nceas.ucsb.edu/), is an environmental science research center at UC Santa Barbara that operates the LTER Network Office.


#### Software Tools
-  [R](https://www.r-project.org/), [RStudio](https://www.rstudio.com), [Git](https://git-scm.com), [Github](https://github.com/), [GitHub Actions](https://github.com/features/actions), [tidyverse](https://www.tidyverse.org), [metajam](https://github.com/NCEAS/metajam), [devtools](https://github.com/r-lib/devtools)

#### Progress
- Collaborated on the existing R package [`lterdatasets`](https://github.com/ucsb-ds-capstone-2021/lterdatasets) 
- Began adding our selected vignette and related files (documentation, code for processing raw data) to this package via pull requests on GitHub
- Enabled GitHub Actions, which runs a CI/CD workflow to make sure our pull requests don't introduce any breaking changes and are compatible with the existing package infrastructure. In the future, GitHub Actions will automatically deploy changes made to our website
- Reviewed each other's pull requests and merged them after confirming that there are no errors and that the GitHub Actions workflow passed successfully
- Opened issues to create discussions with our teammates regarding prospective datasets that could be incorporated into the package
- [GitHub Projects](https://github.com/features/project-management/) helps us organize and automate the progress that we've made on our issues and pull requests, making our collaboration flow smoother
- Researchers at the LTER office were asked about promising and charismatic datasets, and we started to explore datasets from the resulting list


#### Next steps
- Continue to explore datasets and create vignettes to teach data science concepts and techniques
- Refine vignettes using feedback from teammates in pull requests
- Learn how to customize and build website for our package from Dr. Horst
    -Brainstormed Ideas:
      -Can create a separate page for each dataset analyzed in the package
      -Offer interactivity within modifying visualizations, sample code terminal, etc.
      -Customize dataset pages with their own themes and colors based on the dataset itself
- Build website using [pkgdown](https://pkgdown.r-lib.org/) and GitHub Actions
- Design a hex sticker for our package. Examples of other stickers can be found [here](https://github.com/rstudio/hex-stickers)

