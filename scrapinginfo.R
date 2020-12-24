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
dec18p <- html_nodes(dec18oob, "p")
xml_find_all(dec18p, "TableStyles_TableStyle")
##his retrives nothing, indicating I still don't have the syntax correct really.
xml_find_all(dec18p, "//p[contains(@class, 'paraMotionText')]")
##THAT WORKS
dec18pmt <- xml_find_all(dec18p, "//p[contains(@class, 'paraMotionText')]")

motiontextdec18 <- html_text(dec18pmt) #that brings out the text
motiontextdec18

motiontext <- function(url) { #making a function that does all this
  oob <- (read_html(url))
  oob
  oobp <- html_nodes(oob, "p")
  oobp
  return(html_text((oobp)))
}

functiontest <- motiontext("https://commonsbusiness.parliament.uk/document/44075/html")
functiontest


