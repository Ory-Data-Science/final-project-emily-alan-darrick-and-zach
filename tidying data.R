setwd("~/GitHub/final-project-emily-alan-darrick-and-zach")
library(tidyverse)
public_table <- read.csv("Public_Table11.csv")
View(public_table)

#Selecting for only revelant information in the table

public_table_sorted <- select(public_table, "xYear", "Schedule_Group", "Age_Group", "PillCount", "RxCount", "MeanPill_byRx")

View(public_table_sorted)

#Renaming column titles

public_table_sorted %>% 
  arrange(public_table_sorted, xYear, Schedule_Group) %>%
  rename(public_table_sorted, "Year" = xYear)
  
public_table_sorted %>% 
  arrange(public_table_sorted, xYear, Schedule_Group) %>%
  rename(public_table_sorted, "Age Range" = Age_Group)

public_table_sorted %>%
  arrange(public_table_sorted, xYear, Schedule_Group) %>%
  rename(public_table_sorted, "Schedule Group" = Schedule_Group)

  
  
  