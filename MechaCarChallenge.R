#import dependencies
library(dplyr)

mecha_car <- read.csv(file='MechaCar_mpg.csv', check.names=F, stringsAsFactors=F) #import and read the the data file

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car)) #generate summary stats
