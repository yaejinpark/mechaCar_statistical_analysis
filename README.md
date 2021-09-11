# Mecha Car Statistical Analysis - Berkeley DA
Yae Jin Park\
Module 15 - Statistics and R

## Linear Regression to Predict MPG

Here's the result of linear regression performance on all six variables of the MechaCar.

![LM](https://github.com/yaejinpark/mechaCar_statistical_analysis/blob/main/resources/d1.png)

* Looking at the screenshot above, there are three asterisks next to vehicle_length and ground_clearance, indicating that these variables provided non-random amounts of variance to the mpg values. It's not by a random chance that vehicle length and ground clearance impacted the MPG. Another constant/variable that was noted of statistical significance is the intercept, but at this point, it's difficult to know if certain features require scaling or if there is some other explanation.

* The slope of the linear model is not considered to be zero. The p-value is 5.35e-11, which is smaller than 0.05% and therefore significant. This means the null hypothesis (null hypothesis: the slope of the linear model is zero).

* The linear model predicts mpg somewhat accurately, at 71.49%, looking at the r-squared value, meaning that around 71.49% of predictions made by this model will be accurate. It's not high enough to be 'great,' but enough to be valid.

## Summary Statistics on Suspension Coils

Lot Summary Dataframe:
![Lot Summary](https://github.com/yaejinpark/mechaCar_statistical_analysis/blob/main/resources/d2-lot_summary.png)

Total Summary Dataframe:
![Total Summary](https://github.com/yaejinpark/mechaCar_statistical_analysis/blob/main/resources/d2-total_summary.png)

Question: The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

**Looking at the total summary (second screenshot in this section), all manufacturing data meet the design specification as the PSI variance is about 62.29. However, looking at the summary of individual lot data (first screenshot in this section), lot 3 does not meet the specification as it's PSI variance is about 170.28. Lot 1 and 2 meet the design specifications as their PSI variances are 0.9796 and 7.4693, respectively.**

## T-Tests on Suspension Coils


## Study Design: MechaCar vs Competition