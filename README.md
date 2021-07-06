# MechaCar Statistical Analysis


**Deliverable Shortcuts:**
| [Deliverable 1](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-1) | [Deliverable 2](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-2) | [Deliverable 3](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-3) | [Deliverable 4](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-4) |


## Overview of Project
AutoRUs is a automotive manufacturing company looking to improve their manufacturing process. Senior Management tasked Jeremy and his data analytics team to produce product launch insights that the manufacturing team can use to improve their automobile launches.

In this challenge I will:
- Conduct retrospective analysis on historical production data
- Perform analytical verification and validation of current automotive specifications
- Interpret study design of future product testing 



## Deliverable 1 
### Linear Regression to Predict MPG
| [Deliverable 1](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-1) | [Deliverable 2](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-2) | [Deliverable 3](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-3) | [Deliverable 4](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-4) |

The `MechaCar_mpg.csv` dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using your knowledge of R, you’ll design a linear model that predicts the mpg of MechaCar prototypes using several variables from the `MechaCar_mpg.csv file`. 

> To Deliver. 

- The `MechaCar_mpg.csv` file is imported and read into a dataframe
- An RScript is written for a linear regression model to be performed on all six variables
- An RScript is written to create the statistical summary of the linear regression model with the intended p-values
- There is a summary that addresses all three questions


#### Results on Deliverable:
**Resulting Model:** 

### mpg =  (6.267)**vehicle_length** + (0.0012)**vehicle_weight** + (0.0688)**spoiler_angle** + (3.546)**ground_clearance** + (-3.411)**AWD** + (-104.0)
				

**Statistical Summary:** 
![d1](https://github.com/emmanuelmartinezs/MechaCar_Statistical_Analysis/blob/main/Resources/Images/linear_regression_d1.png)

From the above output we can see that:

1. The **vehicle length**, and **vehicle ground clearance** are statistically likely to provide non-random amounts of variance to the model. That is to say, the vehicle length and vehicle ground clearance have a significant impact on miles per gallon on the MechaCar prototype. Conversely,
the **vehicle weight**, **spoiler angle**, and **All Wheel Drive** (AWD) have p-Values that indicate a random amount of variance with the dataset.  

2. The p-Value for this model, ```p-Value: 5.35e-11```, is much smaller than the assumed significance level of 0.05%. This indicates there is sufficient evidence to **reject our null hypothesis**, which further indcates that the slope of this linear model is **not zero**.


3.  This linear model has an r-squared value of 0.7149, which means that approximately 71% of all mpg predictions will be determined by this model. Relatively speaking, his multiple regression model **does predict mpg of MechaCar prototypes effectively**. 

If we remove the less impactful independent variables (vehicle weight, spoiler angle, and All Wheel Drive), the predictability does decrease, but not drastically: the r-squared value falls from 0.7149 to 0.674. 

![d1](https://github.com/emmanuelmartinezs/MechaCar_Statistical_Analysis/blob/main/Resources/Images/new_linear_regression_d1.png)

### T-Tests on Suspension Coils
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

## Deliverable 2
### Summary Statistics on Suspension Coils
| [Deliverable 1](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-1) | [Deliverable 2](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-2) | [Deliverable 3](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-3) | [Deliverable 4](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-4) |

The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. Using your knowledge of R, you’ll create a summary statistics table to show:

- The suspension coil’s PSI continuous variable across all manufacturing lots
- The following PSI metrics for each lot: mean, median, variance, and standard deviation.

#### Technical Analysis
1. Download the `Suspension_Coil.csv` file, and place it in the active directory for your R session.
2. In your `MechaCarChallenge.RScript`, import and read in the `Suspension_Coil.csv` file as a table.
3. Write an RScript that creates a `total_summary` dataframe using the `summarize()` function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column.

Your `total_summary` dataframe should look like this:



## Deliverable 3
### T-Test on Suspension Coils
| [Deliverable 1](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-1) | [Deliverable 2](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-2) | [Deliverable 3](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-3) | [Deliverable 4](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-4) |

Using your knowledge of R, perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

#### Technical Analysis
1. In your `MechaCarChallenge.RScript`, write an RScript using the `t.test()` function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.
2. Next, write three more RScripts in your `MechaCarChallenge.RScript` using the `t.test()` function and its `subset()` argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

- An RScript is written for t-test that compares all manufacturing lots against mean PSI of the population
- An RScript is written for three t-tests that compare each manufacturing lot against mean PSI of the population
- There is a summary of the t-test results across all manufacturing lots and for each lot

The next step is to conduct a t-test on the suspension coil data to determine whether there is a statistical difference between the mean of this provided sample dataset and a hypothesized, potential population dataset. Using the presumed **population mean of 1500**, we find the following:

There is a summary of the t-test results across **all manufacturing lots**
![d3](https://github.com/emmanuelmartinezs/MechaCar_Statistical_Analysis/blob/main/Resources/Images/t_test_all.png)

From here we can see the **true mean of the sample is 1498.78**, which we also saw in the summary statistics above.  With a **p-Value of 0.06**, which is higher than the common significance level of 0.05, there is **NOT enough evidence to support rejecting the null hypothesis**.  That is to say, the mean of all three of these manufacturing lots is statistically similar to the presumed population mean of 1500. 

**Next looking at each individual lots:**

1. Lot 1 sample actually has the **true sample mean of 1500**, again as we saw in the summary statistics above. With a **p-Value of 1**, clearly we cannot reject (i.e. accept) the null hypothesis that there is no statistical difference between the observed sample mean and the presumed population mean (1500).
2. Lot 2 has essentially the same outcome with a **sample mean of 1500.02**, a **p-Value of 0.61**; the null hypothesis cannot be rejected, and the sample mean and the population mean of 1500 are statistically similar.
3. However, Lot 3, not surprisingly is a different scenario. Here **the sample mean is 1496.14** and the **p-Value is 0.04**, which is lower than the common significance level of 0.05.  All indicating to **reject the null hypothesis** that this sample mean and the presumed population mean are not statistically different.

 ![d3](https://github.com/emmanuelmartinezs/MechaCar_Statistical_Analysis/blob/main/Resources/Images/t_test_lot.png)

How does this information help?  Clearly, something went awry in Lot 3's production cycle. The process needs to be checked for system fails and the suspension coils from this lot need to be inspected to remove those not meeting quality criteria.



## Deliverable 4
### Design a Study Comparing the MechaCar to the Competition
| [Deliverable 1](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-1) | [Deliverable 2](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-2) | [Deliverable 3](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-3) | [Deliverable 4](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-4) |

The statistical study design has the following:
- A metric to be tested is mentioned
- A null hypothesis or an alternative hypothesis is described
- A statistical test is described to test the hypothesis


This study would involve collecting data on MechaCar and its comparable models across several different manufacturers over the last 3 years.

* What are the competitions' comparable models, 
* Which cars will MechaCar be competing with head-to-head? which cars will be included in the study?
* Which factors will look at the study to determine the relevant to selling price?
 

#### Metrics
Collecting data for comparable models across all major manufacturers for past 3 years for the following metrics:

*  Safety Feature Rating: **Independent Variable**
*  Current Price (Selling): **Dependent Variable**
*  Drive Package : **Independent Variable**
*  Engine (Electric, Hybrid, Gasoline / Conventional): **Independent Variable**
*  Resale Value: **Independent Variable**
*  Average Annual Cost of ownership (Maintenance): **Independent Variable**
*  MPG (Gasoline Efficiency): **Independent Variable**


#### Hypothesis: Null and Alternative
After determining which factors are key for the MechaCar's genre:

 * Null Hypothesis (Ho): MechaCar is priced correctly based on its performance of key factors for its genre.
 * Alternative Hypothesis (Ha): MechaCar is NOT priced correctly based on performance of key factors for its genre.
 
#### Statistical Tests
A **multiple linear regression** would be used to determine the factors that have the highest correlation/predictability with the list selling price (dependent variable); which combination has the greatest impact on price (it may be all of them!)

