n<-100

doors<-rep(0,n)
for(i in c(1:n)){
        for(j in c(1:n)){
                if(j%%i==0){
                        if(doors[j]==0){
                                doors[j]=1
                        }
                        else{
                                doors[j]=0
                        }
                }
        }
       
        
}

for(i in c(1:n)){
        if(doors[i]==1){
                print(i)
        } 
}
print("doors remain open")
