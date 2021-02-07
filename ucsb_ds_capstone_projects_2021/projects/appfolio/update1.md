# Update 1 - Project Updates #

## Introduction: ## 
Appfolio is a property management company that helps customers manage their rental properties. The capstone team is working with Appfolio to help process invoices from the customers using machine learning. These invoices will then be processed by the model we develop to find the exact price needed to be covered or charged. This would be a big step towards automating some tasks of the accountant role.

* To help us compute the model, we are utilizing receipt data from the ICDAR competition from 2019 (https://rrc.cvc.uab.es/?ch=13&com=introduction)  This dataset, which is public, offers us the chance to look at and understand the most important parts of a receipt, including the total value, and gives us a chance to generate a model to recognize it from an image. 

```{figure} receipt1.png
---
height: 150px
name: receipt1
---
Receipt Image 
```




## What we have done so far: ##
* Clean out the data. There were some repeated images and missing labels for those repeated images.
* We trained a brute force approach that assumes we have the transcripts of the invoices and finds the total using predefined rules.
* We started designing and training our first neural network for which we feed the images of the invoices (converted to pytorch tensors) and we try to get the total value.

## Obstacles: ##
* Getting Data Access: The data from Appfolio can be used to identify companies and their locations. Previously, data had to be only anonymous for individuals. An addendum to the Privacy Act in 2020 included businesses to the act. Due to this, we need to wait for anonymity within addresses and company names and potentially dates as well before we can be allowed to access the Appfolio data. In the meanwhile, we are utilizing the ICDAR data to get an insight into our tasks so that when we receive our actual data, we can hit the ground running.

	
## Future Tasks: ##
* Determine which ML models or implementations would work best for our objectives: 
	- RNN/Faster RNN
	- YOLO
	- Detectron 2
* Implement an Natural Language Processing approach for extracting important keywords
* Completing the “Total” amount extraction task with a very high level of accuracy.
* Since different models require different metadata, create different pipelines for the different models.
* Creation of the input text file with coordinates. From an image, create a text file containing every word/label and a set of coordinates to identify its location. Focusing on the text with the relevant information (including total, the values associated with total, etc)
* Extracting Company, Date, and Address as well from invoice 
* Add another validation level into our “Total” amount extraction algorithm that uses the other numbers present and separately calculates the total.


