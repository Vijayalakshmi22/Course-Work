##5.printing the matrix in the pattern.
mata<-matrix(outer(0:4,0:4,'+'),nrow = 5,ncol = 5)%%5
mata

##5(b)
mata1<-matrix(outer(0:9,0:9,'+'),nrow = 10,ncol = 10)%%10
mata1

##5(c)
mata2<-matrix(outer(0:8,0:8,'-'),nrow = 9,ncol = 9)%%9
mata2

#6
m<-matrix(0,5,5)
m
m<-abs(row(m)-col(m))+1

#7
set.seed(75)
aMat<-matrix(sample(10,size=60,replace = T),nr=6)
aMat
n<-ncol(aMat)
m<-nrow(aMat)

#7.a)

for(i in 1:m){
        k<-0
        for(j in 1:n){
                if(aMat[i,j]>4)
                        k<-k+1
        
        
        }
 print( k)
}

#7.b)
for(i in 1:m){
        k<-0
        for(j in 1:n){
                if(aMat[i,j]==7)
                        k<-k+1
                
                
        }
        if(k==2)
        print( i)
}

#7.c)
x<-NULL
for(i in 1:n){
s<-0
for(j in 1:m){
        s<-s+aMat[j,i]
}
x<-c(x,s)
}
x
for(i in 1:n){
        for(j in 1:n){
                if(x[i]+x[j]>75){
                        print(aMat[,c(i,j)])
                }
        }
}

for(i in 1:n){
        for(j in 1:n){
                if(x[i]+x[j]>75){
                        if(i<j || i==j){
                                print(aMat[,c(i,j)])
                        }
                        
                }
        }
}

#8.a)
s<-0
for(i in 1:20){
        for(j in 1:5){
                s<-s+((i^4)/(3+j))
        }
}
s

#8.b)
s<-0
for(i in 1:20){
        for(j in 1:5){
                s<-s+((i^4)/(3+(i*j)))
        }
}
s

#8.c)
s<-0
for(i in 1:10){
        for(j in 1:i){
                s<-s+((i^4)/(3+i*j))
        }
}
s
