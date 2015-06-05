pageurl<-function(){
  mydata<-read.csv("D:/vijji/county_township_information.csv",header=TRUE,sep=",")
  a<-nrow(mydata)
  for(i in c(1:a)){
   
  url<-mydata[i,2]
  pathname=file.path("D:","vijji","extractingthedatafromwebpage",mydata[i,1])
  file.create(pathname)
  
     msg<-try(htmltotext(url))
    
    if(class(msg)=="try-error") {
    write(msg,pathname)
     
      next;
      
    }
  sink(pathname,append=TRUE)
 }
 
  }

htmltotext<-function(url)
{
  library(RCurl)
  library(XML)
  html <- getURL(url, followlocation = TRUE)
  doc = htmlParse(html, asText =TRUE)
  print(doc)
}