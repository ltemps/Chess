
Chess_2014 <- read_csv("Lichess_2013_2014_Complete.csv")
#remove unwanted columns
Chess_2014 <- Chess_2014 [-c(3,4,7,8,9,11,12,15)]
#subset only 2014
Chess_2014 <- filter(Chess_2014, Year == 2014)

#Figure 8
Fig8 <- ggplot(data = Chess_2014) +
  geom_bar(aes(x= Number_of_Moves, y= ..count..), color= "tomato") +
  labs(title = "Distribution of Number of Moves", x = "Number of Moves", y= "Frequency")

ggsave(Fig8, file="Fig8.png")