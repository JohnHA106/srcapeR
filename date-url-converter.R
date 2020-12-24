##need to make a function that does some maths to convert a date to a doc number
##for 18th december 2020 the url is https://commonsbusiness.parliament.uk/document/44075/html
##44075 is the doc number for this
##nope that's not right
## each doc uploaded is given a specific number in sequence
#there are a few added every day
## so there is no mathematical rule that can predict the number for a specific given date
#let's start at least by making a function that can add in a number of your choice to the url

urlmaker <- function(beginning = "https://commonsbusiness.parliament.uk/document/", number, end = "/html") {
  return(paste(beginning, number, end))
} #this works better i think

urlmaker(number = "1234") #ok it works but i need to remove the spaces

