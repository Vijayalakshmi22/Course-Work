company<-function(cmp){
        library(RCurl)
        library(XML)
        library(qdapRegex)
        library(raster)
        url2<-"http://www.sec.gov/cgi-bin/browse-edgar?company="
        url3<-"&owner=exclude&action=getcompany"
        str<-cmp
        s1<-substring(str,0,regexpr(" ", str)-1)
        s2<-substring(str,regexpr(" ", str)+1)
        company1<-paste(s1,"+",s2,sep = "")
        url4<-paste(url2,company1,url3,sep="")
        html <- getURL(url4, followlocation = TRUE)  
        doc = htmlParse(html, asText =TRUE,trim = TRUE)
        plain.text2 <- xpathSApply(doc, "//table//td[1]", simplify = TRUE,xmlValue)
        plain.text1 <- xpathSApply(doc, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
        plain.text3<-grep(".htm",plain.text1)
        
        data1<-plain.text2[c(-1,-2)]
        folder<-file.path("D:","lucky",cmp)
        dir.create(folder)
        h<-length(data1)
        k<-0
        for(i in 1:h){
                
                if(data1[i]=="10-Q" | data1[i]=="10-K")
                {     
                        k<-k+1
                        url<-"http://www.sec.gov"
                        h<-paste(url,plain.text1[plain.text3[i]],sep="")
                        html1 <- getURL(h, followlocation = TRUE)
                        doc1 = htmlParse(html1, asText =TRUE,trim = TRUE)
                        plain.text <- xpathSApply(doc1, "//table//td//a",xmlGetAttr,'href',simplify = TRUE)
                        
                        print(data1[i])
                        
                        h1<-paste(url,plain.text[1],sep="")
                        
                        path1<-file.path("D:","lucky",cmp,data1[i])
                        path2<-paste(path1,i,".html",sep="")
                        
                        download.file(h1,path2)
                        
                        
                }        
        }
        if(k==0){
                print("there is no 10-K or 10-Q files")
        }
        
}
