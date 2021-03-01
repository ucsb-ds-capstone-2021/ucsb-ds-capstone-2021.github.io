# Update 2

## Reminder of our project description: 

* The goal of our project is to be able to extract information from an invoice. The motivation behind this comes from the fact that AppFolio has many invoices and analyzing them could provide valuable insights to the company. We are now focusing on getting the total value that a customer would have to pay, but there is other valuable information to extract in future steps of our project. We get an image of an invoice and the corresponding OCR. The latter is a file that has bounding boxes for each text on the image and the corresponding word/number inside it. For example, it could have “total” and the coordinates of the bounding box that surround that word. Right now our main goal is to extract the total value from all this data.

## What we’ve done:
* Started implementing LayoutLM, which is a natural language processing (NLP) approach which also incorporates layout of a document to get the total value. To finetune this model, we are utilizing the bounding boxes for each text, the text inside those, and the label for them. For example, we could have [120, 40, 160, 60] as the coordinates for the top left and bottom right points of the bounding box, “company” as the text inside that box, and “other” as the label since it does not correspond to the total value of the bill. Once we finish fine tuning the model we should be able to predict the label for each bounding box and corresponding text/number inside it. We tried the model on another dataset (FUNSD), which contains noisy scanned documents and could be easily preprocessed to the right format since the code to do this was publicly available. 



```{figure} FUNSDpred.png
---
scale = 50%
name: FUNSD_predictions
---
Predictions of LayoutLM for the FUNSD dataset, which is similar to the Appfolio Dataset
```

* As an alternative approach, we started our implementation of using object detection to classify key data within the invoice. Object detection is an expansion of image classification, in which rather than simply classifying an image, the detector outputs the localized bounding box coordinates as well as the predicted class. Our team decided to go with Detectron2, Facebook’s open source object detection library. The main reasoning behind this decision was based on Detectron2’s capability of achieving high confidence with a relatively simple structure, as well as having ample collections of pretrained models for various object detection algorithms.

* In regards to data access, we have finally gotten access to the Appfolio dataset, which is composed of:
  * images of the invoices
  * csv files composed of bounding box annotations for each word in the invoices
  * the metadata of each invoice upload, which includes a Total amount value that we can use as validation for our models that extract the total amount from an invoice

Therefore, we have two datasets on hand that we can definitely use (and any other invoice dataset we decide to include for our model fine-tuning, such as the FUNSD dataset) to train our extraction models for total value, and just the Appfolio dataset for extracting the reference IDs of each invoice

* Worked on combining datasets and cleaning them so as to get them in the format we needed for our models.
* Implemented a function to visualize the predictions of our models. This is useful in order to see what the label for each bounding box is.

```{figure} InvoiceLabels.png
---
scale = 50%
name: Invoice_Labels
---
From the SROIE dataset: total values labeled
```


## Obstacles:
* Getting the data in the right format for each model has been harder than expected. 
* We were just recently exposed to the Appfolio dataset, which is noticeably more complicated than the practice dataset we’ve been handling.


## Future Tasks:
* We have thus far accomplished working with initial models and exploring different strategies. Our future goals are to pinpoint the model architecture that we will be working with, along with improving the accuracy of our models on both the SROIE and the Appfolio dataset. These models, once strong enough, can ultimately serve as a tool incorporated in Appfolio’s property management workflow. 
