install.packages("remotes")
remotes::install_github("houseofcommonslibrary/pdpr")

library(rvest) #contains xml2 package also which has the read_html() function
dec18oob <- read_html("https://commonsbusiness.parliament.uk/document/44075/html")
dec18oob
##this contains the html for order of business in commons on 18th december
##will use this as a toy to find out how to extract relevant info

#using developer mode it looks like the info I want is under a div with id = "content goes here" class = "section"

dec18nodes <- dec18oob %>%
  html_node("body") %>%
  html_children()

dec18nodes
#try deeper
dec18nodes2 <- html_children(dec18nodes)
#paraMotionText is the class i think I want
contentdec18 <- html_nodes(dec18oob, "paraMotionText")
dec18nodes <- html_node(dec18oob, "body")
dec18nodes <- html_children(dec18nodes)
dec18nodes<- 


drillr <- c(1:20)
lapply(drillr, html_nodes)