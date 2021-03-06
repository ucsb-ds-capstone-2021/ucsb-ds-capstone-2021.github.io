## Progress

Since our last update we have experimented with a variety of new models. We implemented gradient-boosted-tree's using LightGBM and tuned our models hyperparameters using Optuna. Gradient-boosted trees are better for highly unbalanced data like ours where the minority class (positive labels--the ones containing criminal record information) hold greater value than the majority (negative) class and we care more about false negatives than false positives. After tuning we were able to achieve Recall of nearly 90%. A good improvement over our original model.

## Challenges
First, we encountered challenges during hyperparameter tuning. We started by using GridsearchCV, which was too slow for LightGBM’s many hyperparameters. We solved this by using Optuna, which is able to optimize the hyperparameter space. Instead of using GridSearchCV, which searches for all combinations of manually input hyperparameter values, Optuna looks for ranges of a specific hyperparameter and narrows it down more effectively and time efficiently. Using this package, we managed to efficiently obtain the best hyperparameters for our model. We can broaden this tuning to most other models as well.

## Next Steps
Our next steps are to continue to work on extracting the dates and arrest codes from our positive predicted data. Furthermore, we want to look at embedded and combined models to possibly deepen our understanding and effectiveness of the models to interpret our results. We are exploring REGEX and more complicated language models for information extraction.
