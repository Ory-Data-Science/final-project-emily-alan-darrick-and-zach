#Drug Schedule vs # of pills divided into years
#Can visually see correlation - decrease in pills dispensed each year
ggplot(public_table, aes(Schedule_Group, PillCount)) + geom_col() + facet_grid(. ~xYear) + labs( x ="Drug Schedule", y = "Pills Dispensed", title = "Pills Dispensed by Drug Schedule", subtitle = "Sorted by Year")



