library(dplyr)
mpg_data <- read.csv("Data/MechaCar_mpg.csv")

lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_data)

summary(lm(mpg~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mpg_data))
