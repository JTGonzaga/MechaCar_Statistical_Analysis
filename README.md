# MechaCar_Statistical_Analysis

## Description: 

  Using RStudio to do a statistical analysis of AutosRUs and MechaCar prototypes
 
## Linear Regression to Predict MPG

![summary_lm](https://github.com/JTGonzaga/MechaCar_Statistical_Analysis/blob/main/Analysis/summary_lm.png)
  
  - The variables that provided a non-random amount of variance to the mpg values in the dataset were vehicle length, ground clearance, spoiler_angle, and AWD. The largest non-random variance came from vehicle length and ground clearance being 2.60e -12 and 5.21e -08 respectively.
  - The slope of the linear model cannot be considered zero according to the p-value of 5.35 e-11. Through this data, we can reject the null hypothesis an assume that other variables are more important then the most significant ones in this dataset.
  - This linear model predicts the mpg of MechaCar prototypes somewhat effectively. The value of the multiple R-squared implies that there is a 71% chance of the model being correct.
 
## Summary Statistics on Suspension
Total Summary
![total summary](https://github.com/JTGonzaga/MechaCar_Statistical_Analysis/blob/main/Analysis/total_summary.png)

Summary by Lot Number
![lot summary](https://github.com/JTGonzaga/MechaCar_Statistical_Analysis/blob/main/Analysis/lot_summary.png)

- The design specifications dictate that tha variance of the suspension coils must not exceed 100lbs/in². According to the statistics of the prototypes as a whole, we are at a variance of 62.3 which implies that all prototytpes are within range of the specifications. Looking at the data a little deeper displays that this is not the case. Separating the data by manufacturing lot and running the same analysis shows that lot 1 and lot 2 have single digit variances in their suspension coils. The variance of lot 3 is just over 170 which is far outside the specificaiton range and needs to be addressed.

# T-tests on Suspension Coils

![t-test](https://github.com/JTGonzaga/MechaCar_Statistical_Analysis/blob/main/Analysis/t_test.png)

- Running the t-test on all of our data reveals a p-value of 0.06028 which is low enough to reject the null hypothesis.

![lot 1](https://github.com/JTGonzaga/MechaCar_Statistical_Analysis/blob/main/Analysis/Lot1.png)

- The t-test on lot 1 shows a p-value of 1 which is too high to reject the null hypothesis.

![lot 2](https://github.com/JTGonzaga/MechaCar_Statistical_Analysis/blob/main/Analysis/Lot2.png)

- The t-test on lot 2 shows a p-value of 00.6072 which is too high to reject the null hypothesis.

![lot 3](https://github.com/JTGonzaga/MechaCar_Statistical_Analysis/blob/main/Analysis/Lot3.png)

- The t-test on lot 3 displays a p-value of 0.04168 which is just low enough to reject the null hypothesis.

## Study Design: MechaCar vs Competition
  Understanding the needs of the consumer are important to any company. Having a good MPG and reliability are important, but those metrics are less of a factor if the cars themselves aren't safe in the event of an accident. Through looking at our crash test ratings, we can determine if our cars are more safe than our competitors.
  ### Hypothesis
  - Null: There are no measurable differences in MechaCar's crash test ratings versus competitors.
  - Alternative: MechaCar's crash test ratings are above or below the ratings of the competition.
  
  ### Statistical test
  
  The best statistical test to perform would be t-tests to determine the p-value versus the competition.
  
  ### Data Needed to Run Testing
  
  The data necessary to gather for this testing would be crash test saftey ratings from the NHTSA or unbiased independent testing. 
