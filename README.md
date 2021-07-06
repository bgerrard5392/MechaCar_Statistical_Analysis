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

**Statistical Summary:** 
Based on my analysis, both vehicle length and ground clearnace have a significant impact on the mpg for the prototype, but neither vehicle length nor vehicle ground clearance are likely to provide a non-random amount of variance to the model. This model is giving us a p-value of 5.35e-11 which is far smaller thanthe assumed significance level of 0.05%. This indicates enough reasoning to conclude there is a slope (not zero). Our statistcs summary also shows our r-squared value is 0.7149, which means approximately 71% of all mpg predictions will be determined by this model which I believe effectively predicts the mpg for MechaCar prototypes. 

![mpg_coefficients](https://user-images.githubusercontent.com/75700317/124529660-0c5d1280-ddd9-11eb-87c0-97632aa44a2c.png)


## Deliverable 2
### Summary Statistics on Suspension Coils
| [Deliverable 1](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-1) | [Deliverable 2](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-2) | [Deliverable 3](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-3) | [Deliverable 4](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-4) |

#### Technical Analysis
Looking at the entire population of lots and the differencs between them, there is a variance of 62.29 PSI which is well within the variance requirement of 100 PSI. Lot 3 however has an enormous variance of 170.29 which not only is a large variance when it comes to performance and consistency, but is also disproportionately causing the majority of variance across the 3 lots.


##### Total Summary Dataframe:
![total_summary](https://user-images.githubusercontent.com/75700317/124531245-1cc2bc80-dddc-11eb-9038-a2d915a94c73.png)


##### Lot Summmary Dataframe:
![lot_summary](https://user-images.githubusercontent.com/75700317/124531224-159bae80-dddc-11eb-9ba9-98566902432b.png)



## Deliverable 3
### T-Test on Suspension Coils
| [Deliverable 1](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-1) | [Deliverable 2](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-2) | [Deliverable 3](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-3) | [Deliverable 4](https://github.com/bgerrard5392/MechaCar_Statistical_Analysis/blob/main/README.md#deliverable-4) |


#### Technical Analysis
### T-Tests on Suspension Coils
Based on t-test we are showinga P-value of 1. This means we can reject the null hypothesis and predict that the PSI across all manufacturing lots is not statistically different from the population mean of 1,500 lbs per sq in.<br>
<img src="Resources/One_Sample_ttest.png" width=300>
<br>
**Lot 1 -** The P-value is 9.35e-12, given this is smaller than 0.05 we can reject the null hypothesis for this grouping.<br>
**Lot 2 -** The P-value is 0.01 which (like Lot 1) is smaller than 0.05 so we must reject the null hypothesis.<br>
**Lot 3 -** The P-value is 0.156 which means we cannot reject the null hypothesis for this grouping.<br>



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



## Study Design: MechaCar vs Competition
For future analysis I would look at data ponts for cost, buy-back value, engine capacity, maintenance, and safety rating. The following hypotheis will be tested: <br>
<br>
H0: There is no statistical difference between MechaCar and competitive companies.
Ha: There is a statistical difference between MechaCar and competitive companies.
<br>
<br>
A two sample t-test would be used to test the hypothesis for each data point, MechaCar vs Competition, by year. The T-test will allow the company to observe if each variable has a significant difference between the two companies. The data point for cost, buy-back value (return on investment), engine capacity, avgerage maintenance cost, and safety rating will be used for these tests.


