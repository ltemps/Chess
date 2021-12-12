#Data Wrangling

pacman::p_load(readr, readxl, tidyverse, plyr, dplyr, ggplot2)

Chess <- read_csv("Lichess_2013_2014_Complete.csv")
#remove unwanted columns
Chess <- Chess [-c(3,4,7,8,9,11,12,15)]
#subset only 2014
Chess <- filter(Chess, Year == 2014)
#subset down to the fastest games
Chess <- filter(Chess, TimeControl == "Bullet")

#Simplify Opening Move
Open <- str_split_fixed(Chess$Opening, ":", 2)
Open1 <- Open [ ,(1)]
Chess$Opening <- Open1
#Look at which openings are most frequently occurring in the data set
open_freq <- tibble(count(Chess, 'Opening'))
#Table of top five and frequency
top_five <- open_freq %>% dplyr::filter(open_freq$freq > 144000)

#Subset data set to only include top five opening moves
Chess <- semi_join(Chess, top_five, by = "Opening")

#for visualization purposes
Chess$Opening <- gsub(" ", "\n", Chess$Opening)
Chess$Termination <- gsub(" ", "\n", Chess$Termination)

Chess_2014 <- read_csv("Lichess_2013_2014_Complete.csv")
#remove unwanted columns
Chess_2014 <- Chess_2014 [-c(3,4,7,8,9,11,12,15)]
#subset only 2014
Chess_2014 <- filter(Chess_2014, Year == 2014)
