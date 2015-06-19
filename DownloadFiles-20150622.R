company<-function(){
        library(RCurl)
        library(XML)
        library(qdapRegex)
        library(raster)
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
        #Reads only 1st column of the table
        plain.text2 <- xpathSApply(doc, "//table//td[1]", simplify = TRUE,xmlValue)
        data6<-plain.text2[c(-1,-2)]
        print(data6)
        folder<-file.path("D:","lucky",str1)
        #create a directory
        dir.create(folder)
        if(length(plain.text2)==0){
                print("enter the company name correctly")
                break
        }
        else if(!(plain.text2[1]=="Filter Results:")){
                plain.text4<- xpathSApply(doc, "//table//td[2]", simplify = TRUE,xmlValue)
                print(plain.text4)
                comp<-readline(prompt = "Enter the full company name:")
                fcmp<-grep(comp,plain.text4,ignore.case = TRUE)
                print(fcmp)
                n1<-length(fcmp)
                if(!(n1==1)){
                        print("enter the unique group of company name:")
                        break
                }
                else{
                        url6="http://www.sec.gov/cgi-bin/browse-edgar?action=getcompany&CIK="
                        url5="&owner=exclude&count=40&hidefilings=0"
                        url7<-paste(url6,plain.text2[fcmp],url5,sep="")
                        print(url7)
                        html4 <- getURL(url7, followlocation = TRUE)
                        #Parses all the text data
                        doc2 = htmlParse(html4, asText =TRUE,trim = TRUE)
                        #Reads only 1st column of the table
                        plain.text5 <- xpathSApply(doc2, "//table//td[1]", simplify = TRUE,xmlValue)
                        
                        data1<-plain.text5[c(-1,-2)]
                        files(data1,doc2,str1)    
                        }
        }
        else{
                files(data6,doc,str1)
        }
}
files<-function(data8,doc8,str1){
        files<-NULL
        len<-length(data8)
        if(len==0)
        {
                print("no files available")
        }
        else{
                n<-readline(prompt="Enter the no.of files you want to download:")
                for(i in 1:n){
                        file1<-readline(paste("enter the file",i,":"," "))
                        files<-c(files,file1)
                }
                doc2<-doc8
                data1<-data8
                #Reads href related to html data
                plain.text1 <- xpathSApply(doc2, "//table//td//a",xmlGetAttr,'href', simplify = TRUE)
                #Extracts .htm files
                plain.text3<-grep(".htm",plain.text1)
                #sets the file path
                folder<-file.path("D:","lucky",str1)
                #create a directory
                dir.create(folder)
                h<-length(data1)
                k<-0
                for(i in 1:h){
                        #compares data1 with 10-Q and 10-K
                        for(j in 1:n){
                                if(tolower(data1[i])==tolower(files[j]))
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
                                        path2<-paste(path1,i,".html",sep="")
                                        #downoad the data into the files
                                        download.file(h1,path2)
                                }       
                        }
                }
                if(k==0){
                        cat("there is no",files,"files")
                }      
        }
}
