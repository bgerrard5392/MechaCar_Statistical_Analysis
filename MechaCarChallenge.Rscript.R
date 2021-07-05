R version 4.1.0 (2021-05-18) -- "Camp Pontanezen"
Copyright (C) 2021 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin17.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> setwd("~/Desktop")
> setwd("~/Desktop/ALLHW/R_Analysis/MechaCar_Statistical_Analysis")
> library(tidyverse)
── Attaching packages ────────────────────────────────────── tidyverse 1.3.1 ──
✓ ggplot2 3.3.4     ✓ purrr   0.3.4
✓ tibble  3.1.2     ✓ dplyr   1.0.7
✓ tidyr   1.1.3     ✓ stringr 1.4.0
✓ readr   1.4.0     ✓ forcats 0.5.1
── Conflicts ───────────────────────────────────────── tidyverse_conflicts() ──
x dplyr::filter() masks stats::filter()
x dplyr::lag()    masks stats::lag()
> 
  > mechCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
> lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechCar)

Call:
  lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
       ground_clearance + AWD, data = mechCar)

Coefficients:
  (Intercept)    vehicle_length    vehicle_weight     spoiler_angle  
-1.040e+02         6.267e+00         1.245e-03         6.877e-02  
ground_clearance               AWD  
3.546e+00        -3.411e+00  

> 
  > View(mechCar)
> summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=mechCar))

Call:
  lm(formula = mpg ~ vehicle_length + vehicle_weight + spoiler_angle + 
       ground_clearance + AWD, data = mechCar)

Residuals:
  Min       1Q   Median       3Q      Max 
-19.4701  -4.4994  -0.0692   5.4433  18.5849 

Coefficients:
  Estimate Std. Error t value Pr(>|t|)    
(Intercept)      -1.040e+02  1.585e+01  -6.559 5.08e-08 ***
  vehicle_length    6.267e+00  6.553e-01   9.563 2.60e-12 ***
  vehicle_weight    1.245e-03  6.890e-04   1.807   0.0776 .  
spoiler_angle     6.877e-02  6.653e-02   1.034   0.3069    
ground_clearance  3.546e+00  5.412e-01   6.551 5.21e-08 ***
  AWD              -3.411e+00  2.535e+00  -1.346   0.1852    
---
  Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 8.774 on 44 degrees of freedom
Multiple R-squared:  0.7149,	Adjusted R-squared:  0.6825 
F-statistic: 22.07 on 5 and 44 DF,  p-value: 5.35e-11

> suspension_coil <- read.csv('Suspension_Coil.csv')
> 
  > total_summary <- suspension_coil %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
> lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
> t.test(log10(suspension_coil$PSI),mu=mean(log10(suspension_coil$PSI)))

One Sample t-test

data:  log10(suspension_coil$PSI)
t = 0, df = 149, p-value = 1
alternative hypothesis: true mean is not equal to 3.175732
95 percent confidence interval:
  3.175361 3.176103
sample estimates:
  mean of x 
3.175732 

> lot1 <- subset(suspension_coil, Manufacturing_Lot == "Lot1")
> t.test(log10(lot1$PSI),mu=mean(log10(suspension_coil$PSI)))

One Sample t-test

data:  log10(lot1$PSI)
t = 8.8659, df = 49, p-value = 9.35e-12
alternative hypothesis: true mean is not equal to 3.175732
95 percent confidence interval:
  3.176010 3.176173
sample estimates:
  mean of x 
3.176091 

> 
  > lot2 <- subset(suspension_coil, Manufacturing_Lot == "Lot2")
> t.test(log10(lot2$PSI),mu=mean(log10(suspension_coil$PSI)))

One Sample t-test

data:  log10(lot2$PSI)
t = 3.7231, df = 49, p-value = 0.0005082
alternative hypothesis: true mean is not equal to 3.175732
95 percent confidence interval:
  3.175924 3.176373
sample estimates:
  mean of x 
3.176148 

> 
  > lot3 <- subset(suspension_coil, Manufacturing_Lot == "Lot3")
> t.test(log10(lot3$PSI),mu=mean(log10(suspension_coil$PSI)))

One Sample t-test

data:  log10(lot3$PSI)
t = -1.4445, df = 49, p-value = 0.1549
alternative hypothesis: true mean is not equal to 3.175732
95 percent confidence interval:
  3.173877 3.176035
sample estimates:
  mean of x 
3.174956 