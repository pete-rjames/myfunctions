# Rselenium 
# https://cran.r-project.org/web/packages/RSelenium/vignettes/RSelenium-basics.html
require(RSelenium)
# checkForServer()  
startServer() 
remDr <- remoteDriver(remoteServerAddr = "localhost" 
                      , port = 4444
                      , browserName = "firefox"
)
remDr$open()
remDr$getStatus()
remDr$navigate("http://www.google.com")
