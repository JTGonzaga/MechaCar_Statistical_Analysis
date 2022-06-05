# import dependencies
library(dplyr)
# Reading MechaCar_mpg file 
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv')
head(MechaCar_mpg)
# linear model function
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg)
# summary of linear model function
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar_mpg))
# Importing Suspension_coil.csv
Suspension_coil <- read.csv(file = 'Suspension_coil.csv')
head(Suspension_coil)
# creating total summary table 
total_summary <- Suspension_coil %>% summarize(Mean = mean(PSI),
                                              Median = median(PSI),
                                              Variance = var(PSI),
                                              SD = sd(PSI)
                                              )
total_summary
# Creating lot_summary table grouped by Manufacturing Lot 
lot_summary <- Suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI),
                                                                             Median = median(PSI),
                                                                             Variance = var(PSI),
                                                                             SD = sd(PSI)
                                                                              )
# Technical analysis for Suspension_coil.csv
t.test(Suspension_coil$PSI, mu = 1500)

# Technical analysis by Manufacturing lot 
t.test(subset(Suspension_coil, Manufacturing_Lot == 'Lot1')$PSI, mu = 1500)
t.test(subset(Suspension_coil, Manufacturing_Lot == 'Lot2')$PSI, mu = 1500)
t.test(subset(Suspension_coil, Manufacturing_Lot == 'Lot3')$PSI, mu = 1500)