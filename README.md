# MechaCar Statistical Analysis

## Linear Regression to Predict MPG
(Refer to Results/mechaCar_linear_regression)
Variables/coefficients that provide a non-random amount of variance to the mpg values in the dataset:
- Vehicle length
	- Pr(>|t|) = 2.60e-12
- Ground clearance 
	- Pr(>|t|) = 5.21e-08

The slope of the linear model is considered to be non-zero because there are variables that show correlation that is not due to random chance.


This linear model does not predict mpg of MechaCar prototypes efficiently because though the p-value (5.35e-11) is sufficiently small  and the r-squared (0.71) shows that 71% of data can be predicted using the model, the low number of significant variables (2) indicates that the model is over-fit to the dataset and may not predict efficiently.

## Summary Statistics on Suspension Coils
(Refer to Results/total_summary, ,and Results/lot_summary)

According to the total_summary dataframe, the manufacturing of the MechaCar suspension coils follows the design specifications of not exceeding 100 pounds per square-inch (PSI) in variance, as the total variance is 62.29 PSI.

However, according to the lot_summary dataframe, the manufacturing is not sufficiently meeting design specifications. Lot 1 and Lot 2 have low variance (0.98 PSI and 7.47 PSI, respectively), while Lot 3 has a large variance of 170.29 PSI, which exceeds the specifications. 

## T-Tests on Suspension Coils
(Refer to Results/T-Tests)

- Across all lots (total_lot_ttest): 
	- p-value = 0.06
	- We fail to reject the null hypothesis, and the mean is not significantly different from the population mean of 1500.

- Lot 1 (lot1_ttest):
	- p-value = 1 
	- We fail to reject the null hypothesis, and the mean is not significantly different from the population mean of 1500.

- Lot 2 (lot2_ttest):
	- p-value = 0.61
	- We fail to reject the null hypothesis, and the mean is not significantly different from the population mean of 1500.

- Lot 3 (lot3_ttest): 
	- p-value = 0.042
	- We reject the null hypothesis that the difference in means is equal to 0.
