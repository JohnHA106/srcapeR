##need to make a function that does some maths to convert a date to a doc number
##for 18th december 2020 the url is https://commonsbusiness.parliament.uk/document/44075/html
##44075 is the doc number for this
##nope that's not right
## each doc uploaded is given a specific number in sequence
#there are a few added every day
## so there is no mathematical rule that can predict the number for a specific given date
#let's start at least by making a function that can add in a number of your choice to the url

urlmaker <- function(beginning = "https://commonsbusiness.parliament.uk/document/", number, end = "/html") {
  return(paste(beginning, number, end, sep = ""))
} #this works better i think

urlmaker(number = "1234")

motiontext(urlmaker(number = "44075")) #you must always designate number = xxxx but this seems to work nicely

#make a function that compiles the two

motiontext2 <- function(number) {
  motiontext(urlmaker(number = number))
}

motiontext2("44075")
motiontext2("00222") #this function will return an error rather if the doc number does not exist


motiontext2("44074")

##records with these document conventions only go back as far as 2020...

blah <- motiontext2("44074")
blah.df <- data.frame(blah)

motiontext3 <- function(number) { #number must be as char
  oob <- motiontext2(number)
  return(data.frame(oob)) ##this is basically the same function but returns a dataframe which mught be more useful
}

firstof2021oob <- motiontext3(44074)
