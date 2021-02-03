# Update 1

In the FLIR team we're working on real time object detection models with a primary use for autonomous driving cars. Much of the current technology is centered around RGB cameras as seen in figure one. 

```{figure} 1*QOGcvHbrDZiCqTG6THIQ_w.png
---
height: 150px
name: directive-fig
---

```

```{figure} adk-skateboarder-primary1.jpg
---
height: 150px
name: directive-fig
---

```

While RGB sensing is a de facto standard in real time object detection models it is not without its weaknesses and must be used in conjunction with other sensing technology to provide reliably safe object detection for autonomous driving. In figure two you see a scene behind the lens of an RGB sensor on the left and the object detection of a thermal sensor on the right. RGB sensing tends to fail at night due to the reduced color space which poses a large risk for the safety of autonomous driving cars. FLIR as a company specializes in the deisgn and production of thermal imaging cameras, components and imaging sensors and hopes to leverage that technology in the field of computer vision. 

Our team is primarily concerned with analyzing the robustness of a thermal object detector for ADAS (Advanced Driver Assistance Systems) subject to the effect of added noise. Understanding the effect of noise is incredibly important to field of computer vision as it's been observed that small amounts of noise can result in severe misclassifications. 

```{figure} 1*PmCgcjO3sr3CPPaCpy5Fgw.png
---
height: 150px
name: directive-fig
---

```

```{figure} 1*n18mfvFgeZTLVxx07iBNkA.png
---
height: 150px
name: directive-fig
---

```
Figure 3 shows the effect a small amount of noise will have on the classification of a panda (Source: https://arxiv.org/abs/1412.6572). Figure 4 shows a stop sign on the right with minimal alterations that led to a model classifying it as a speed limit sign (Source: https://arxiv.org/pdf/1707.08945.pdf). These are known as adversarial attacks, adding inputs to a model to intentionally cause misclassifications. Adversarial attacks and the effects of random noise are incredibly important to study as we hope to make our object detection models as robust as possible. 


The initial stages of our project involved a lot of set up and decision making. We were provided with the FLIR thermal imaging dataset (https://www.flir.com/oem/adas/adas-dataset-form/ Free for anyone to download) and before we observed the effects of noise on a model we needed to setup a baseline detector and train the dataset on it. Some of the more popular object detectors include Faster R-CNN, Single shot detector, and YOLO. Faster R-CNN is a multi-stage detector, the image is input into a convolutional neural network to get a convolutional feature map and uses another network to predict region proposals. The proposals are then reshaped using RoI pooling layer. The single-shot detector uses a single convolutional network to predict a feature map. A small convolutional kernel runs on the feature map to categorize the data. Yolo has the best speed vs accuracy tradeoff based on existing testing. It divides image into grid and looks at whole image rather than regions. It uses a single convolutional network as well and predicts bounding boxes and classes. Overall yolo was the fastest of the detectors we discussed without suffering from a signifcant drop in accuracy as can be seen in figure 6 so we decided to start a baseline Yolo v3 model. 

```{figure} Screen%20Shot%202021-01-31%20at%202.33.40%20PM.png
---
height: 300px
name: directive-fig
---

```

Now that we've familiarized ourselves with the dataset and decided on an object detector we're currently in the process of creating a virtual environment for each group member to work under and setting up our baseline model so we can train our dataset on it and gather accuracy benchmarks to compare against later. Beyond this we plan to perform  a hyperparameter search on YOLO to train the most optimal detector so we can later observe how easily fooled it can be with some added noise. We also plan to experiment with adding different forms of noise to the thermal imaging data and analyzing accuracy differences and also test the effects of noise on several models and observe the difference in performance between them. If we're succesful in our initial goals we hope explore solutions that mitigate attacks on convolutional neural networks but thats a goal far down the road.




