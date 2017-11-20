setwd("~/GitHub/final-project-emily-alan-darrick-and-zach")
library(tidyverse)
public_table <- read.csv("Public_Table11.csv")
View(public_table)

#Selecting for only revelant information in the table and renaming the column headers 

public_table_sorted <- select(public_table, "Year" = "xYear",
                              "Schedule Group" = "Schedule_Group",
                              "Age Range" = "Age_Group",
                              "Pill Count" = "PillCount",
                              "Prescription Count" = "RxCount",
                              "Average Pill Count by Prescription" = "MeanPill_byRx")

View(public_table_sorted)

#Changing factor names
public_table_sorted$"Age Range" <-  as.factor(public_table_sorted$`Age Range`)
levels(public_table_sorted$"Age Range") <- c("14 years or younger", "65 years or older", "15 to 24 years", "25 to 44 years","45 to 64 years")
