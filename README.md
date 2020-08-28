# Predict Visitor Purchases with a Classification Model with BigQuery ML


• Use BigQuery to find public datasets

• Query and explore the ecommerce dataset

• Create a training and evaluation dataset to be used for batch prediction

• Create a classification (logistic regression) model in BQML

• Evaluate the performance of your machine learning model

• Predict and rank the probability that a visitor will make a purchase


A Subset of visitors who bought on their very first session and then came back and bought again.What are some of the reasons a typical ecommerce customer will browse but not buy until a later visit?

Although there is no one right answer, one popular reason is comparison shopping between different ecommerce sites before ultimately making a purchase decision. This is very common for luxury goods where significant up-front research and comparison is required by the customer before deciding (think car purchases) but also true to a lesser extent for the merchandise on this site (t-shirts, accessories, etc). In the world of online marketing, identifying and marketing to these future customers based on the characteristics of their first visit will increase conversion rates and reduce the outflow to competitor sites.


Create a Machine Learning model in BigQuery to predict whether or not a new user is likely to purchase in the future. Identifying these high-value users can help your marketing team target them with special promotions and ad campaigns to ensure a conversion while they comparison shop between visits to your ecommerce site.

The team decides to test whether these two fields are good inputs for your classification model:

totals.bounces (whether the visitor left the website immediately)
totals.timeOnSite (how long the visitor was on our website)

Machine learning is only as good as the training data that is fed into it. If there isn't enough information for the model to determine and learn the relationship between your input features and your label (in this case, whether the visitor bought in the future) then you will not have an accurate model. While training a model on just these two fields is a start, you will see if they're good enough to produce an accurate model.

The inputs are bounces and time_on_site. The label is will_buy_on_return_visit. bounces and time_on_site are known after a visitor's first session. will_buy_on_return_visit is not known after the first visit. Again, you're predicting for a subset of users who returned to your website and purchased. Since you don't know the future at prediction time, you cannot say with certainty whether a new visitor come back and purchase. The value of building a ML model is to get the probability of future purchase based on the data gleaned about their first session. It's often too early to tell before training and evaluating the model, but at first glance out of the top 10 time_on_site, only 1 customer returned to buy, which isn't very promising. Let's see how well the model does.


## Create a BigQuery dataset to store models

## Select a BQML model type and specify options

Since you are bucketing visitors into "will buy in future" or "won't buy in future", use logistic_reg in a classification model.

You cannot feed all of your available data to the model during training since you need to save some unseen data points for model evaluation and testing. To accomplish this, add a WHERE clause condition is being used to filter and train on only the first 9 months of session data in your 12 month dataset.

After your model is trained, evaluate the performance of the model against new unseen evaluation data.


## Evaluate classification model performance

### Select your performance criteria:

For classification problems in ML, you want to minimize the False Positive Rate (predict that the user will return and purchase and they don't) and maximize the True Positive Rate (predict that the user will return and purchase and they do).

This relationship is visualized with a ROC (Receiver Operating Characteristic) curve like the one shown here, where you try to maximize the area under the curve or AUC:


![Image of ROC](https://github.com/IamVigneshC/GCP-BigQueryML-ClassificationModel/blob/master/ROC.png)


In BQML, roc_auc is simply a queryable field when evaluating your trained ML model.

Now that training is complete, you can evaluate how well the model performs with this query using ML.EVALUATE:

You should see the following result:


Row	  roc_auc	  model_quality

---   -------   ------------

1	   0.724588	  decent



After evaluating your model you get a roc_auc of 0.72, which shows the model has decent, but not great, predictive power. Since the goal is to get the area under the curve as close to 1.0 as possible, there is room for improvement.


## Improve model performance with Feature Engineering


there are many more features in the dataset that may help the model better understand the relationship between a visitor's first session and the likelihood that they will purchase on a subsequent visit.

Add some new features and create a second machine learning model called classification_model_2:

• How far the visitor got in the checkout process on their first visit

• Where the visitor came from (traffic source: organic search, referring site etc..)

• Device category (mobile, tablet, desktop)

• Geographic information (country)


A key new feature that was added to the training dataset query is the maximum checkout progress each visitor reached in their session, which is recorded in the field hits.eCommerceAction.action_type.

Evaluate this new model to see if there is better predictive power:


Row	  roc_auc	  model_quality
---   -------   -------------

1	    0.910382  good


With this new model you now get a roc_auc of 0.91 which is significantly better than the first model.

Now that you have a trained model, time to make some predictions.


## Predict which new visitors will come back and purchase


Refer the query to predict which new visitors will come back and make a purchase.

The prediction query  uses the improved classification model to predict the probability that a first-time visitor to the Google Merchandise Store will make a purchase in a later visit:

The predictions are made on the last 1 month (out of 12 months) of the dataset.

Your model will now output the predictions it has for those July 2017 ecommerce sessions. You can see three newly added fields:

• predicted_will_buy_on_return_visit: whether the model thinks the visitor will buy later (1 = yes)

• predicted_will_buy_on_return_visit_probs.label: the binary classifier for yes / no

• predicted_will_buy_on_return_visit.prob: the confidence the model has in it's prediction (1 = 100%)



![Image of predict](https://github.com/IamVigneshC/GCP-BigQueryML-ClassificationModel/blob/master/predict.png)


## Results


• Of the top 6% of first-time visitors (sorted in decreasing order of predicted probability), more than 6% make a purchase in a later visit.

• These users represent nearly 50% of all first-time visitors who make a purchase in a later visit.

• Overall, only 0.7% of first-time visitors make a purchase in a later visit.

• Targeting the top 6% of first-time increases marketing ROI by 9x vs targeting them all!



### Additional information

roc_auc is just one of the performance metrics available during model evaluation. Also available are accuracy, precision, and recall. Knowing which performance metric to rely on is highly dependent on what your overall objective or goal is.


