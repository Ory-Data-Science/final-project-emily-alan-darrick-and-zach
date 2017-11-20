ggplot(public_table, aes(Age_Group, MeanPill_byRx), color = Age_Group) +
  geom_col() + facet_grid(~Schedule_Group) + 
  labs( x ="Age Group", y = "Mean Pills Given per Prescription", title = "Mean Pills Given per Prescription by Age Group", subtitle = "Sorted by Drug Schedule")
