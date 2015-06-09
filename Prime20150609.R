n<-100
input<-c(1:n)
input
for(i in c(2:n)){
        if(!is.na(input[i])){
                k<-input[i]
                m<-k+1
                for(j in c(m:n)){
                        if(j%%k==0){
                                input[j]<-NA
                        }
                }
        }
}
for(i in c(2:n)){
        if(!is.na(input[i]))
        {
                print(input[i])
        }
}
