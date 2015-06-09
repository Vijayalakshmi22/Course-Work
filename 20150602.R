pageurl<-function(){
  
  url<-readline(prompt="Enter The Web Address:") 
  htmltotext(url)
}
htmltotext<-function(url)
{
  library(RCurl)
  library(XML)
  html <- getURL(url, followlocation = TRUE)
  doc = htmlParse(html, asText =TRUE)
  plain.text <- xpathSApply(doc, "//p", xmlValue)
  sink("D:/vijji/R/20150602.txt",append=TRUE)
  print(plain.text)
}