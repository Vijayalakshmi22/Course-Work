company<-function(){
        library(RCurl)
        library(XML)
        library(qdapRegex)
        str1<-readline(prompt = "Enter the company name:")
        url2<-"http://www.sec.gov/cgi-bin/browse-edgar?company="
        url3<-"&owner=exclude&action=getcompany"
        company1<-gsub("[[:space:]]","+",str1)
        url4<-paste(url2,company1,url3,sep="")
        html <- getURL(url4, followlocation = TRUE)
        doc = htmlParse(html, asText =TRUE,trim = TRUE)
        plain.text2 <- xpathSApply(doc, "//table//td[1]", simplify = TRUE,xmlValue)
        if(length(plain.text2)==0){
                print("enter the company name correctly")
                break
        }
        else if(!(plain.text2[1]=="Filter Results:")){
                plain.text4<- xpathSApply(doc, "//table//td[2]", simplify = TRUE,xmlValue)
                print(plain.text4)
                plain.text14<- xpathSApply(doc, "//table//td[1]", simplify = TRUE,xmlValue)
                comp<-readline(prompt = "Enter the company full name:")
                cik<-grep(comp,plain.text4,ignore.case = TRUE)
                data10<-plain.text14[cik]
                files(data10,comp)
        }
        else{
                plain.text1 <- xpathSApply(doc, "//div//span//a",xmlValue, simplify = TRUE)
                data10<- gsub("[a-zA-Z() ]","",plain.text1)
                files(data10,str1)
        }
}
files<-function(data10,str1){
        url4<-"http://www.sec.gov/cgi-bin/browse-edgar?action=getcompany&CIK="
        url5<-"&type="
        url6<-"&dateb="
        url7<-"&owner=exclude&count=100"
        url10<-paste(url4,data10,url5,url6,url7,sep="")
        html14 <- getURL(url10, followlocation = TRUE)
        doc1 = htmlParse(html14, asText =TRUE,trim = TRUE)
        plain.text1 <- xpathSApply(doc1, "//table//td[1]", simplify = TRUE,xmlValue)
        data2<-plain.text1[c(-1,-2)]
        print(data2)
        print("1.File name:")
        print("2.Both file name and prior date:")
        opt1<-readline(prompt = "Enter your option:")
        switch(opt1,
               "1"={
                       file<-readline(prompt="Enter the file type:")
                       url<-paste(url4,data10,url5,file,url6,url7,sep="")
               },
               "2"={
                       file<-readline(prompt="Enter the file type:")
                       date13<-readline(prompt = "Enter the prior date(yyyymmdd):")
                       url<-paste(url4,data10,url5,file,url6,date13,url7,sep="")
               },files(data10,str1))
        html4 <- getURL(url, followlocation = TRUE)
        doc = htmlParse(html4, asText =TRUE,trim = TRUE)
        plain.text12 <- xpathSApply(doc, "//table//td[4]", simplify = TRUE,xmlValue)
        data2<-plain.text12[-1]
        print(data2)
        print("1.Single file:")
        print("2.Multiple files from that year:")
        opt<-readline(prompt = "Enter your option:")
        while(opt!=1 & opt!=2){
                print("enter your option correctly:")
                opt<-readline(prompt = "Re-enter your option:")
                if(opt==1 | opt==2)
                        break
        }
        switch(opt,
               "1"={
                       date11<-readline(prompt = "Enter the date(yyyy-mm-dd):")
               },
               "2"={
                       date1<-readline(prompt = "Enter the date(yyyy):")
                       date11<-grep(date1,data2)
               })
        plain.text2 <- xpathSApply(doc, "//table//td[1]", simplify = TRUE,xmlValue)
        data1<-plain.text2[c(-1,-2)]
        n<-length(data1)
        plain.text1 <- xpathSApply(doc, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
        plain.text3<-grep(".htm",plain.text1)
        folder<-file.path("D:","lucky",str1)
        dir.create(folder)
        n1<-length(date11)
        for(i in 1:n){
                for(j in 1:n1){
                        if((date11[j]==i) || (date11==data2[i])){  
                                url<-"http://www.sec.gov"
                                h<-paste(url,plain.text1[plain.text3[i]],sep="")
                                html1 <- getURL(h, followlocation = TRUE)
                                doc1 = htmlParse(html1, asText =TRUE,trim = TRUE)
                                plain.text <- xpathSApply(doc1, "//table//td//a",xmlGetAttr,'href',simplify = TRUE)
                                print(data1[i])
                                print(data2[i])
                                h1<-paste(url,plain.text[1],sep="")
                                path1<-file.path("D:","lucky",str1,data1[i])
                                path3<-paste(path1,data2[i],sep="_")
                                path2<-paste(path3,".html",sep="")
                                download.file(h1,path2)
                        }      
                }
        }
}
