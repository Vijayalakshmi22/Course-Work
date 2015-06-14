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

#5
mat<-function(n,k){
        m<-matrix(0,n,n)
        for(i in 1:n){
                for(j in 1:n){
                        if(i==j){
                                m[i,j]=k
                        }
                        else if(abs(i-j)==1){
                                m[i,j]=1
                        }
                        else{
                                m[i,j]=0
                        }
                }
        }
        return(m)
}


#6
quadrant<-function(n){
        x<-n/90
        if(x%%4>=0 & x%%4<1){
                return("quadrant 1")
        }
        else if(x%%4>=1 & x%%4<2){
                return("quadrant 2")
        }
        else if(x%%4>=2 & x%%4<3){
                return("quadrant 3")
        }
        else{
                return("quadrant 4")
        }
}

#7
weekday<-function(day,month,year){
        k<-day
        print(k)
        m<-month-2
        if(m==0){
                m=12
        }
        else if(m==-1){
                m=11
        }
        print(m)
        c<-floor(year/100)
        print(c)
        y<-year%%100
        print(y)
        s<-(floor((2.6*m)-0.2)+k+y+floor(y/4)+floor(c/4)-2*c)%%7
        if(s==0){
                s=7
        }
        days<-c("Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday")
        return(days[s])
        
}


#7.b)
d<-c(12,13,14,15,16,17)
months<-c(6,5,4,3,12,11)
year<-c(2015,2014,2013,2015,2013,2014)
weekday<-function(day,month,year){
        k<-day
        print(k)
        m<- month-2
        if(m==0){
                m<-12
        }
        else if(m==-1){
                m<-11
        }
        print(m)
        c<-floor(year/100)
        print(c)
        y<-year%%100
        print(y)
        s<-(floor((2.6*m)-0.2)+k+y+floor(y/4)+floor(c/4)-2*c)%%7
        if(s==0){
                s=7
        }
        days<-c("Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday")
        return(days[s])
        
}
#.it will not work because when comparing month with 0 or 1 it will show error that the condition has length>1 and only the first element will be used

#8.
testLoop<-function(n){
        x<-c(1,2)
        for(j in 3:n){
                x<-c(x,x[j-1]+(2/x[j-1]))
        }
        return(x)
}

#8.b)
y<-c(1:10)
testLoop2<-function(yVec){
        return(exp(yVec))
}