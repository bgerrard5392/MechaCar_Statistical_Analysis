# MechaCar Statistical Analysis


**Deliverable Shortcuts:**
| [Deliverable 1](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-1) | [Deliverable 2](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-2) | [Deliverable 3](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-3) | [Deliverable 4](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-4) |


## Overview of Project
A few weeks after starting his new role, Jeremy is approached by upper management about a special project. AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team’s progress. AutosRUs’ upper management has called on Jeremy and the data analytics team to review the production data for insights that may help the manufacturing team.

In this challenge, you’ll help Jeremy and the data analytics team do the following:

* Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
* Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
* Run t-tests to determine if the manufacturing lots are statistically different from the mean population
* Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.




## Deliverable 1: Linear Regression to Predict MPG
The 'MechaCar_mpg.csv' dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using your knowledge of R, you’ll design a linear model that predicts the mpg of MechaCar prototypes using several variables from the 'MechaCar_mpg.csv' file. 

- Vehicle weight and ground clearance coefficients provided a non-random amount of variance to mpg data.
- The slope of the linear model is considered to be not zero because the coefficient values are not equal to 0.
- P-value is below 0.05 which means there is enough evidence to reject the null hypothesis
- Multiple R-squared values is 0.7149 which means 71.5% of the variance in the mpg can be predicted by all variables
- The adjusted R-squared value is 0.6825 which means 68% of the variance in the mpg can be predicted by all variables.<br>
<br>
Based on the results of the linear regression, the results show it can be used to predict mpg of MechaCar prototypes effectively.

## Summary Statistics on Suspension Coils
All three lots' variance totals 76.23 lbs which is below the 100 lb requirement. Lot 3 however has a variance of 220 lbs which does not meet the design specifications.

## T-Tests on Suspension Coils
The t-test shows the P-value is 1 which means we can reject the null hypothesis and predict that the PSI across all manufacturing lots is not statistically different from the population mean of 1,500 lbs per sq in.<br>
<img src="Resources/One_Sample_ttest.png" width=300>
<br>
For lot 1:
The P-value is less than 0.05 which means we can reject the null hypothesis for this grouping.<br>
For lot 2:
The P-value is 0.89 which means we cannot reject the null hypothesis for this grouping.<br>
For lot 3:
The P-value is 0.79 which means we cannot reject the null hypothesis for this grouping.<br>

For both lot 2 and 3 the means are not statistically different from the population mean of 1500 lbs per sq in. However the mean of lot 1 is statistically different from the population mean of 1500 lbs per sq in.
<br>
<img src="Resources/lots_ttest.png" width=300 length=400>
<br>
## Study Design: MechaCar vs Competition
For future analysis I would look at data ponts for cost, buy-back value, engine capacity, maintenance, and safety rating. The following hypotheis will be tested: <br>
<br>
H0: There is no statistical difference between MechaCar and competitive companies.
Ha: There is a statistical difference between MechaCar and competitive companies.
<br>
<br>
A two sample t-test would be used to test the hypothesis for each data point, MechaCar vs Competition, by year. The T-test will allow the company to observe if each variable has a significant difference between the two companies. The data point for cost, buy-back value (return on investment), engine capacity, avgerage maintenance cost, and safety rating will be used for these tests.

## Deliverable 2:

## Deliverable 3:

## Deliverable 4:


