# Update 1
Project updates

# Initial research findings
## RHR-Diff
One area of focus in our research was the RHR-Diff algorithm cited in Mishra et al. RHR-Diff is an anomaly detection algorithm based on the [Rank-Based Scans method](https://www.tandfonline.com/doi/abs/10.1080/01621459.2017.1286240?journalCode=uasa20), which is a more general algorithm used to detect anomalies in signal and image processing data. RHR-Diff works by looking at hourly resting heart rate measures and comparing that measure with the average computed across a 28 day window. Heart rates significantly greater than that average are then flagged by the algorithm as anomalous. We intend to replicate the results of Mishra et al and see if participants in the study have anomalous heart rate measures leading up to symptom onset and diagnosis. This could serve as a basis of pre-symptomatic detection of COVID-19 and other illnesses.

The researchers of [Mishra et al.](https://www.nature.com/articles/s41551-020-00640-6) created a metric, Heart Rate Over Steps (HROS), and then used the same anomaly detection algorithm used for the RHR diff. (I can go more in depth but I figured RHR diff might cover the same things, Ill come back to this after everyone writes down their stuff) 


