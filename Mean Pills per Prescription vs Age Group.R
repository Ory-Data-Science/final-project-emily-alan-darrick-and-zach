ggplot(public_table, aes(Age_Group, MeanPill_byRx, fill = Age_Group)) +
  geom_col() + facet_grid(~Schedule_Group) + 
  labs( x ="Age Group", y = "Mean Pills Given per Prescription", title = "Mean Pills Given per Prescription by Age Group", subtitle = "Sorted by Drug Schedule")

###Edited Code To Account for X axis orders
ggplot(public_table, aes(Age_Group, MeanPill_byRx, fill = Age_Group)) +
  geom_col() + facet_grid(~Schedule_Group) + 
  labs( x ="Age Group", y = "Mean Pills Given per Prescription", title = "Mean Pills Given per Prescription by Age Group", subtitle = "Sorted by Drug Schedule") +
  scale_x_discrete(limits = c("=< 14 yrs", "15-24 yrs", "25-44 yrs", "45-64 yrs", ">= 65 yrs"))

library(tidyverse)

ggplot(public_table, aes(Age_Group, log(RxCount), fill = Age_Group)) +
  geom_col() + facet_grid(~Schedule_Group) + 
  labs( x ="Age Group", y = "Log (Prescriptions Given)", title = "Log (Prescriptions Given) by Age Group", subtitle = "Sorted by Drug Schedule") +
  scale_x_discrete(limits = c("=< 14 yrs", "15-24 yrs", "25-44 yrs", "45-64 yrs", ">= 65 yrs")) +
  scale_fill_discrete(name = "Age Group")
