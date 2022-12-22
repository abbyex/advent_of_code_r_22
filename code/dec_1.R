# DAY 1 - Advent of code in R 

# Input - calories that elves have separated by blank line ("\n")
# Find the elf carrying the most calories (Max sum of nums)

# Read txt file 
input <- readLines(
  file.path(
    "input", "day_01.txt"
  )
)

input <- as.integer(input)

list <- split(input, cumsum(is.na(input)))
# changed variable name and added spaces around function arguments
sum_list <- lapply(list, function(x) sum(x, na.rm = TRUE))

max(unlist(sum_list))

# Code References:
# https://www.geeksforgeeks.org/read-lines-from-a-file-in-r-programming-readlines-function/
# https://www.tutorialkart.com/r-tutorial/r-convert-character-vector-into-integer-vector/#:~:text=To%20convert%20a%20given%20character,values%20transformed%20into%20integer%20values.
# https://www.r-bloggers.com/2021/12/how-to-split-vector-and-data-frame-in-r/#:~:text=Split()%20is%20a%20built,divides%20the%20information%20into%20groups.&text=The%20syntax%20for%20this%20function,%3D%20FALSE%2C%20...)
# https://stackoverflow.com/questions/59167471/error-in-max-invalid-type-list-of-argument-when-using-dplyr-dbplyr-and
# https://stackoverflow.com/questions/24232577/classic-case-of-sum-returning-na-because-it-doesnt-sum-nas
# https://stackoverflow.com/questions/26183929/r-sum-the-elements-of-each-list-on-a-list-and-return-the-result-in-a-data-frame
