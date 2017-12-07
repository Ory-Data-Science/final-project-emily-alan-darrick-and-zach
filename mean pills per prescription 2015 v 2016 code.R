ggplot(public_table, aes(xYear, MeanPill_byRx, fill = xYear))+
  geom_col()+ 
  labs(x = "Year", y = "Mean Pills Per Prescription", title = "Mean Pills per Prescription 2015 vs 2016", subtitle = "Sorted by Subtitle")+
  facet_grid(~Schedule_Group)