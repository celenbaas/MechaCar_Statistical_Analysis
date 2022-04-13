# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG
The MechaCar dataset contains test results for 50 prototype MechaCars.  The prototypes were created using various design specifications to identify ideal vehicle performance.  Metrics such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle.  To test fuel efficiency a linear model that predicts the mpg of MechaCar prototypes using several variables was created.

**Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**
The output indicates the vehicle length and the ground clearance of the vehicle contribute to the fuel efficiency because their p-values are less than .05.

**Is the slope of the linear model considered to be zero? Why or why not?**
The slope of the model will not be considered zero based on the p-value of the model being less than .05.

**Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
The r-squared value indicates the regression model accounts for 71.5% of the variation and therefore would be considered effective.

<img width="434" alt="1" src="https://user-images.githubusercontent.com/96347024/162636412-f0c2a8f4-240c-4b24-a409-d372ef91ffb1.png">



## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 PSI (pounds per square inch). 
In the overall summary the variance is 62.29356 which is under the goal of 100 PSI and therefore indicates the design meets the specification.  However below results will show specifics for each of the 3 lots individually.

<img width="166" alt="2" src="https://user-images.githubusercontent.com/96347024/162636646-86364459-4b46-4eec-a503-3ee828fbb11f.png">

The Lot Summary shows Lot 1 and Lot 2 are within the spec since they are both under 100.  However, Lot 3 is not within the accepted variance and is well over 100.

<img width="232" alt="2 1" src="https://user-images.githubusercontent.com/96347024/162636709-5794bd90-dd22-46b5-97df-86af6ae3465e.png">


## T-Tests on Suspension Coils
T-tests focus on understanding if a sample mean is representative of the true population mean. The analysis was performed across all the data and again for lot specifics. The population mean provided is 1500.

<img width="325" alt="3" src="https://user-images.githubusercontent.com/96347024/162637042-f2826679-7a0c-4fe2-8d07-8778086e4aef.png">

The Total t-test shows a p-value of 6% which indicates that the hypothesis should be **rejected** because the mean is different than the population mean of 1500.

Lot 1 t-test has a p-value of 100% which includes that the hypothesis should be **rejected** because the mean is different than the population mean of 1500.

Lot 2 t-test has a p-value of 60% which includes that the hypothesis should be **rejected** because the mean is different than the population mean.

Lot 3 t-test has a p-value of 4% which includes that the hypothesis should be **accepted** because the mean is different than the population mean of 1500.


## Study Design: MechaCar vs Competition

**What metric or metrics are you going to test?**

Consumers are sensitive to the initial price of their car and care about the average yearly maintenance cost. It would be beneficial to understand if there is a connection between the price of the vehicle and the estimated average maintenance cost.  When comparing the outcomes of the MechaCar vs the competitors this would allow the leadership team to understand if the price of their car was reasonable compared to the competition.

**What is the null hypothesis or alternative hypothesis?**

Null hypothesis: MechaCar is priced below competitor with the equivalent average yearly maintenance cost. 
Alternative hypothesis: MechaCar is not priced below competitor with the equivalent average yearly maintenance cost.

**What statistical test would you use to test the hypothesis? And why?**

I would recommend using the single sided t-test to understand if the MechaCars average yearly maintenance cost is higher than its competition.  If the outcome of the test shows that the results are accepted this shows that the MechaCar would be seen as a good option compared to the consumers.  On the other side if the null hypothesis is rejected, than the MechaCar would be considered expensive to own.

**What data is needed to run the statistical test?**

The data needed would be average yearly maintenance cost for MechaCars and its competitors along with car pricing for each.
