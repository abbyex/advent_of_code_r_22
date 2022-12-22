# DAY 2 - Advent of code in R 

# Calculate your score in rock, paper, scissors
# Replace this char value with a numeric value 
# Sum the total

# Dict values your score 
# score[["A Y"]] <- 8 # won 
# score[["B Z"]] <- 9 # won
# score[["C X"]] <- 7 # won
# score[["A X"]] <- 4 # draw
# score[["B Y"]] <- 5 # draw
# score[["C Z"]] <- 6 # draw
# score[["B X"]] <- 1 # lost w rock 
# score[["C Y"]] <- 2 # lost w pap
# score[["A Z"]] <- 3 # lost w sci
scores <- c(
  "A Y" = 8,
  "B Z" = 9,
  "C X" = 7,
  "A X" = 4,
  "B Y" = 5,
  "C Z" = 6,
  "B X" = 1,
  "C Y" = 2,
  "A Z" = 3
)

input <- readLines(
  file.path(
    "input", "day_02.txt"
  )
)

# This is redundant - the scores vector is already numeric
# sum_input <- as.numeric(scores[input])

sum(scores[input], na.rm = TRUE)

# Code references:
# https://stackoverflow.com/questions/7818970/is-there-a-dictionary-functionality-in-r
# https://stackoverflow.com/questions/47857066/replace-characters-in-a-column-with-numbers-r
