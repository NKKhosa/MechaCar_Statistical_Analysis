#import dependencies
library(dplyr)

# 1
mecha_car <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors=F) #import and read the the data file

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car)) #generate summary stats

# 2
suspension_coil <- read.csv(file='Suspension_Coil.csv', check.names=F, stringsAsFactors=F) #import and read the the data file

total_summary <- suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create a summary table for stats

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>%summarize(Mean=mean(PSI), Median=median(PSI), Variannce=var(PSI), SD=sd(PSI), .groups = 'keep') #create a summary table for stats grouped by lot

# 3
t.test(suspension_coil$PSI, mu=1500) #compare the sample versus population means

lot1 <- subset(suspension_coil, Manufacturing_Lot == "Lot1") # create a filtered table for lot 1
t.test(lot1$PSI, mu=1500) #compare Lot1 versus population means

lot2 <- subset(suspension_coil, Manufacturing_Lot == "Lot2") # create a filtered table for lot2
t.test(lot2$PSI, mu=1500) #compare Lot2 versus population means

lot3 <- subset(suspension_coil, Manufacturing_Lot == "Lot3") #create a filtered table for lot3
t.test(lot3$PSI, mu=1500) #compare Lot3 versus population means
