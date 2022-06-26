#formulas ... test 
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
#see what is in the file how it looks like 
str(outcome)
# see summary- not as detail as str function
summary(outcome)
#see head 
head(outcome)
#see see how many columns
ncol(outcome)
#see the names of each column
names(outcome)
#simple histogram of the 30-day death rates from heart attack (column 11 in the outcome dataset)
outcome[, 11] <- as.numeric(outcome[, 11])
hist(outcome[, 11])
#Finding the best hospital in a state

