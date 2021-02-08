# Update 1
Project updates

## Overview
Our team is building a model to predict if a website contains information about an arrest. Our data set consists of 5 GB of website's raw html code. Each row has a websites html code, the url, and a label of 1 or 0. After classifying a website as 1 or 0, we aim to extract the date of the arrest and the arrest code. Our model has webs craping in mind so we care more about minimizing false negatives than false positives.


## Progress
So far we have implemented the first version of our model using Logistic Regression. Our first step was to clean and extract all of the words out of the websites. To this this we removed all punctuation and special characters from the text and then broke the block of text up into individual words. From here we were able to build encode the words into numerical vectors capable of being used for classification. Combining this with our logistic regression model led to promising classification results.

## Challenges
Our biggest challenge so far is the sheer amount of time it takes to clean data. Our cleaning and tokenization script took almost 15 hours to run on the data set (on a laptop). Bringing this time down would be ideal. This could be accomplished through employing employing cloud computing infrastructure, parallelization, and increasing the efficiency of our code.

## Next Steps
Our next steps are to implement text extraction on to of our model. We are going to start with regular expressions. In terms of our base model, we are going to work on hyper-parameter tuning to maximize recall. We are also going to experiment with other models such as Random Forests and Neural Networks.
