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
Null hypothesis: PSI for each manufacturing lot (and all lots combined) is statistically not different from the population mean of 1,500 pounds per square inch.

### Lot 1
![Lot 1](https://github.com/yaejinpark/mechaCar_statistical_analysis/blob/main/resources/d3-ttest_lot1.png)
The p-value is less than 0.05%, significant enough to reject the null hypothesis, the PSI for lot 1 is statistically different from the population mean.

### Lot 2
![Lot 2](https://github.com/yaejinpark/mechaCar_statistical_analysis/blob/main/resources/d3-ttest_lot2.png)
Lot 2 also has a p-value less than 0.05%, so it can be said that the PSI for lot 2 is also statistically different from the population mean.

### Lot 3
![Lot 3](https://github.com/yaejinpark/mechaCar_statistical_analysis/blob/main/resources/d3-ttest_lot3.png)
Lot 3 is also statistically different from the population mean as the p-value is less than 0.05%.

### All Lots
![All Lots](https://github.com/yaejinpark/mechaCar_statistical_analysis/blob/main/resources/d3-ttest.png)
The PSI of all lots are statistically different from the population mean. The p-value is less than 0.05% for this T-test as well.

## Study Design: MechaCar vs Competition

Question to answer - is a MechaCar's weight related to its length?

H0: MechaCar's weight is not related to its length (slope = 0)
Ha: MechaCar's weight is related to its length (slope =/= 0)

I would use linear regression on vehicle weight and vehicle length since I'm only comparing two variables. If there is a relationship between the two, there will be a slope that shows said relationship. I would then call summary() in order to see the p-value that can check if the null hypothesis can be rejected.

The data I will need is the same dataset, MechaCar_mpg.csv, as the file contains data of both the vehicles' length and weight.

Out of curiosity, I ran this test and got the following result:

![LM2](https://github.com/yaejinpark/mechaCar_statistical_analysis/blob/main/resources/d4.png)

The slope is -0.000135 and the p-value is 0.3959, which means I cannot reject my null hypothesis. It's likely that the vehicle's weight and length are not related.