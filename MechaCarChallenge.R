library(dplyr)

# Deliverable 1: Linear regression to predict MPG
cars <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=cars)
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=cars))


#Deliverable 2: Create Visualizations for the Trip Analysis - Suspension Coil
coil <- read.csv(file='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
total_summary <- coil %>% summarize(mean = mean(PSI), median = median(PSI), var(PSI), sd(PSI))
lot_summary <- coil %>% group_by(Manufacturing_Lot) %>% summarize(mean = mean(PSI), median = median(PSI), var(PSI), sd(PSI))

#Deliverable 3: T-Tests on Suspension Coils - T-tests
t.test(x=coil$PSI,mu=1500) #compare sample 
t.test(x=subset(coil,Manufacturing_Lot=="Lot1")$PSI, mu=1500) #compare sample 
t.test(x=subset(coil,Manufacturing_Lot=="Lot2")$PSI, mu=1500) #compare sample 
t.test(x=subset(coil,Manufacturing_Lot=="Lot3")$PSI, mu=1500) #compare sample 