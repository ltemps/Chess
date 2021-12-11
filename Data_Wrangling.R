#Data Wrangling

pacman::p_load(readr, readxl, tidyverse, plyr, dplyr, ggplot2)

Chess <- read_csv("Lichess_2013_2014_Complete.csv")
#remove unwanted columns
Chess <- Chess [-c(3,4,7,8,9,11,12,15)]
#subset down to the fastest games
Chess <- filter(Chess, TimeControl != "Classical")
Chess <- filter(Chess, TimeControl != "Rapid")
#filter for rating > 2000
Chess <- filter(Chess, WhiteElo >= 2000)
Chess <- filter(Chess, BlackElo >= 2000)
#Simplify Opening Move
Open <- str_split_fixed(Chess$Opening, ":", 2)
Open1 <- Open [ ,(1)]
Chess$Opening <- Open1
#Look at which openings are most frequently occuring in the data set
open_freq <- tibble(count(Chess, 'Opening'))
#Choose to do analysis on the top ten
head(open_freq)
top_ten <- open_freq %>% dplyr::filter(open_freq$freq > 9000)
#top_ten <- tibble(count(Chess, 'Opening')) %>% filter(freq >= 9000)
#Subset data set to only include top ten opening moves
Chess <- semi_join(Chess, top_ten, by = "Opening")

#for visualization purposes
Chess$Opening <- gsub(" ", "\n", Chess$Opening)
Chess$Termination <- gsub(" ", "\n", Chess$Termination)

# Questions: 
# Does opening move have an affect on the total number of moves? 
# Does the opening move have an affect on the TimeControl?
# Does WhiteElo have an affect on opening move choice?


