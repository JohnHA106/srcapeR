install.packages("remotes")
remotes::install_github("houseofcommonslibrary/pdpr")

library(rvest) #contains xml2 package also which has the read_html() function
dec18oob <- read_html("https://commonsbusiness.parliament.uk/document/44075/html")
dec18oob
##this contains the html for order of business in commons on 18th december
##will use this as a toy to find out how to extract relevant info


