x<-c(5:1)
n<-length(x)
#1.a)
tmpFn1<-function(xVec){
        n<-length(xVec)
        v<-0
        for(i in 1:n){
                v<-c(v,xVec[i]^i)
                 
        }
       return(v[-1])
}

tmpFn2<-function(xVec){
        n<-length(xVec)
        v<-0
        for(i in 1:n){
                v<-c(v,((xVec[i]^i)/i))
        }
        return(v[-1])
}

#1.b)
tmpFn3<-function(x,n){
        m<-1
        for(i in 1:n)
                m<-m+((x^i)/i)
        
        return(m)
}

#2.a)
tmpFn<-function(xVec){
        n<-length(xVec)
        v<-0
        for(i in 1:(n-2)){
            v<-c(v,((xVec[i]+xVec[i+1]+xVec[i+2])/3))    
        }
        return(v[-1])
}
tmpFn(c(1:5,6:1))

#3.
tmpFn<-function(xVec){
        n<-length(xVec)
        v<-0
        for(i in 1:n){
                if(xVec[i]<0){
                        v<-c(v,((xVec[i]^2)+2*(xVec[i])+3))
                }
                else if(xVec[i]>=0 & xVec[i]<2){
                        v<-c(v,(xVec[i]+3))
                }
                else{
                        v<-c(v,((xVec[i]^2)+4*(xVec[i])-7))
                }
                
        }
        return(v[-1])
}
tmpFn(c(-3:3))

#4.
m<-matrix(c(1,5,-2,1,2,-1,3,6,-3),3,3)
mat<-function(x){
        n<-nrow(x)
        m<-ncol(x)
        v<-0
        for(i in 1:n){
                for(j in 1:m){
                        if(x[j,i]%%2==0){
                                v<-c(v,x[j,i])
                        }
                        else{
                                v<-c(v,x[j,i]+x[j,i])
                        }
                }
        }
        return(matrix(v[-1],n,m))
}

