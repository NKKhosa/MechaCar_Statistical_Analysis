#import dependencies
library(dplyr)

# 1
mecha_car <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors=F) #import and read the the data file

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car)) #generate summary stats

# 2
suspension_coil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors=F) #import and read the the data file

total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Varaince=var(PSI), SD=sd(PSI), .groups = 'keep') #create a summary table for stats

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>%summarize(Mean=mean(PSI), Median=median(PSI), Varaince=var(PSI), SD=sd(PSI), .groups = 'keep') #create a summary table for stats grouped by lot
