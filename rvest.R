# rvest demo

# selector gadget
vignette("selectorgadget")
html <- read_html("http://www.imdb.com/title/tt1490017/")
cast <- html_nodes(html, "#titleCast span.itemprop")
cast[1:2]
html_text(cast)

# https://www.r-bloggers.com/rvest-easy-web-scraping-with-r/
library(rvest)
lego_movie <- read_html("http://www.imdb.com/title/tt1490017/")
lego_movie %>%
  html_node("strong span") %>%
  html_text() %>%
  as.numeric()

t <- lego_movie %>%
  html_nodes("table") %>%
  .[[2]] %>%
  html_table()

# CA DOJ: https://oag.ca.gov/crime/cjsc/stats/adult-probation

# http://stackoverflow.com/questions/14237257/how-to-fill-in-an-online-form-and-get-results-back-in-r
  