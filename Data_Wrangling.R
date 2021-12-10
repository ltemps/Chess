#Data Wrangling

pacman::p_load(readr, readxl, dplyr, tidyverse, ggplot2)

Chess <- read_csv("Lichess_2013_2014_Complete.csv")
#remove unwanted columns
Chess <- Chess [-c(3,4,7,8,9,11,12,15)]
#subset down to the fastest games
Chess <- filter(Chess, TimeControl != "Classical")
Chess <- filter(Chess, TimeControl != "Rapid")
#filter for rating > 2000
Chess <- filter(Chess, WhiteElo >= 2000)
Chess <- filter(Chess, BlackElo >= 2000)
#remove winner = draw
Chess <- filter(Chess, Winner != "Draw")

#figure out how to simplify the opening moves
#stringr?
#pick most popular ones?
#find which ones are most frequently in this data set

# Questions: 
# Does opening move have an affect on the total number of moves? 
# Does the opening move have an affect on the TimeControl?
# Does WhiteElo have an affect on opening move choice?

