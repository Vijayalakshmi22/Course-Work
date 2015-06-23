company<-function(){
        library(RCurl)
        library(XML)
        library(qdapRegex)
        str1<-readline(prompt = "Enter the company name:")
        url2<-"http://www.sec.gov/cgi-bin/browse-edgar?company="
        url3<-"&owner=exclude&action=getcompany"
        #combines words with plus
        company1<-gsub("[[:space:]]","+",str1)
        #combines url2,company1,url3 without any spaces
        url4<-paste(url2,company1,url3,sep="")
        html <- getURL(url4, followlocation = TRUE)
        #Parses all the text data
        doc = htmlParse(html, asText =TRUE,trim = TRUE)
        #Reads only 1st column of the table(file names)
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
        file<-readline(prompt="Enter the file type:")
        url<-paste(url4,data10,url5,file,url6,url7,sep="")
        html4 <- getURL(url, followlocation = TRUE)
        doc = htmlParse(html4, asText =TRUE,trim = TRUE)
        plain.text12 <- xpathSApply(doc, "//table//td[4]", simplify = TRUE,xmlValue)
        data2<-plain.text12[-1]
        print("1.Single file:")
        print("2.Multiple files from that year:")
        opt<-readline(prompt = "Enter your option:")
        switch(opt,
               "1"={
                       print(data2)
                       date1<-readline(prompt = "Enter the date(yyyy-mm-dd):")
                       plain.text2 <- xpathSApply(doc, "//table//td[1]", simplify = TRUE,xmlValue)
                       data1<-plain.text2[c(-1,-2)]
                       n<-length(data1)
                       plain.text1 <- xpathSApply(doc, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
                       #Extracts .htm files
                       plain.text3<-grep(".htm",plain.text1)
                       folder<-file.path("D:","lucky",str1)
                       #create a directory
                       dir.create(folder)
                       for(i in 1:n){
                               k<-NULL
                               if(tolower(data1[i])==tolower(file) & date1==data2[i])
                               {    
                                       k<-k+1
                                       #url of the Starting page
                                       url<-"http://www.sec.gov"
                                       #paste the url and plain.text1.text[i] without any spaces
                                       h<-paste(url,plain.text1[plain.text3[i]],sep="")
                                       #Read the ur and pass it into html1
                                       html1 <- getURL(h, followlocation = TRUE)
                                       #Parses all the text data
                                       doc1 = htmlParse(html1, asText =TRUE,trim = TRUE)
                                       #Reads the href from the table
                                       plain.text <- xpathSApply(doc1, "//table//td//a",xmlGetAttr,'href',simplify = TRUE)
                                       #prints the file name
                                       print(data1[i])
                                       #paste the url,plain.text[1]
                                       h1<-paste(url,plain.text[1],sep="")
                                       #set the path to the files
                                       path1<-file.path("D:","lucky",str1,data1[i])
                                       #giving the extension to the files
                                       path3<-paste(path1,data2[i],sep="_")
                                       path2<-paste(path3,".html",sep="")
                                       #downoad the data into the files
                                       download.file(h1,path2)
                               }       
                       }
                       if(k==0){
                               cat(file,"file not found with date",date1)
                       }
               },
               "2"={
                       print(data2)
                       date1<-readline(prompt = "Enter the date(yyyy):")
                       date11<-grep(date1,data2)
                       plain.text2 <- xpathSApply(doc, "//table//td[1]", simplify = TRUE,xmlValue)
                       data1<-plain.text2[c(-1,-2)]
                       n<-length(data1)
                       plain.text1 <- xpathSApply(doc, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
                       #Extracts .htm files
                       plain.text3<-grep(".htm",plain.text1)
                       folder<-file.path("D:","lucky",str1)
                       #create a directory
                       dir.create(folder)
                       n1<-length(date11)
                       for(i in 1:n){
                               k<-NULL
                               for(j in 1:n1){
                                       if(tolower(data1[i])==tolower(file) & data2[date11[j]]==data2[i])
                                       {    
                                               k<-k+1
                                               #url of the Starting page
                                               url<-"http://www.sec.gov"
                                               #paste the url and plain.text1.text[i] without any spaces
                                               h<-paste(url,plain.text1[plain.text3[i]],sep="")
                                               #Read the ur and pass it into html1
                                               html1 <- getURL(h, followlocation = TRUE)
                                               #Parses all the text data
                                               doc1 = htmlParse(html1, asText =TRUE,trim = TRUE)
                                               #Reads the href from the table
                                               plain.text <- xpathSApply(doc1, "//table//td//a",xmlGetAttr,'href',simplify = TRUE)
                                               #prints the file name
                                               print(data1[i])
                                               #paste the url,plain.text[1]
                                               h1<-paste(url,plain.text[1],sep="")
                                               #set the path to the files
                                               path1<-file.path("D:","lucky",str1,data1[i])
                                               #giving the extension to the files
                                               path3<-paste(path1,data2[i],sep="_")
                                               path2<-paste(path3,".html",sep="")
                                               #downoad the data into the files
                                               download.file(h1,path2)
                                       }       
                               }
                       }
                       if(k==0){
                               cat(file,"file not found with in that date",date1)
                       }
               })
}
