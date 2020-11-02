library(dplyr)

mpg_data <- read.csv("Data/MechaCar_mpg.csv")

lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_data)

summary(lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_data))

#Deliverable 2
suspension_coil <- read.csv("Data/Suspension_Coil.csv")
total_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median = median(PSI), Variance=var(PSI), Standard_deviation=sd(PSI), .groups='keep')


#T-Test D3
#t.test(log10(sample_table$Miles_Driven),mu=mean(log10(population_table$Miles_Driven))) #compare sample versus population means

t.test(suspension_coil$PSI, mu=1500)
