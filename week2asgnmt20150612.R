#1.a)Print values from 1 to 20
x<-c(1:20)
x

#b)print values from 20 to 1
y<-c(20:1)
y

#c)print values from 1 to 20 and 19 to 1
z<-c(x,y[-1])
z

#d)cancatenates 4,6,3
tmp<-c(4,6,3)

#e)prints tmp for 10 times
rep(tmp,10)

#f)repeatedly prints tmp upto the length 31
rep(tmp,length=31)

#g)repeatedly print 1st value for 10times next 2nd value for 20 times and so on..
rep(tmp,c(10,20,30))

#2)prints the sequence 3 to 6 with adding 0.1
x<-seq(3,6,0.1)
exp(x)*cos(x)

#3.a) (0.1^3(2.1^1),0.1^6(2.1^4),....,0.1^36(0.2^34))
a<-0.1^(seq(3,36,3))*(0.2^(seq(1,34,3)))
a

#3.b) (2,2^2/2,...2^25/25)
b<-2^(1:25)/(1:25)
b

#4.a)i^3+(4i^2) for i from 10 to 100
a<-((c(10:100)^3)+4*(c(10:100)^2))
sum(a)

#b)(2^i/i+(3^i/(i^2))) for i from 1 to 25
b<-(2^c(1:25))/(c(1:25))+((3^c(1:25))/(t^c(1:25)))
sum(b)

#5.a)print ("label 1","label 2",..."label 10")
x<-paste("label",c("1":"10"),sep=" ")
x

#5.b)print ("fn1","fn2",...."fn30")
x<-paste("fn",c("1":"30"),sep="")
x

#6) randomly selects 250 characters with repetition from 1 to 999
xVec<-sample(0:999,250,replace=T)
xVec
yVec<-sample(0:999,250,replace=T)
yVec
#prints length of the vector
n<-length(yVec)
#6.a)(y2-x1,...yn-xn-1) y and x values fron xVec yVec
yVec[2:n]-xVec[1:(n-1)]

#6.b)(sin(y1)/cos(x2),....,sin(yn-1)/cos(xn))
sin(yVec[1:(n-1)])/cos(xVec[2:n])

#6.c)(x1+2x2-x3,....,xn-2+2xn-1-xn)
xVec[1:(n-2)]+2*(xVec[n:(n-1)])-xVec[3:n]

#6.d)(e^-x(i+1)/(xi+10))
z<-0
z<-exp(-xVec[2:n])/(xVec[1:n-1]+10)
sum(z)

#7
sort(yVec)
order(yVec)
mean(yVec)
sqrt(yVec)
sum(yVec)
abs(yVec)

#7.a)prints yVec>600
for(i in 1:n){
        if(yVec[i]>600){
                print(yVec[i])
        }
}

#7.b)prints the indexes of yVec>600
for(i in 1:n){
        if(yVec[i]>600){
                print(i)
        }
}

#7.c)prints xVec corresponds to yVec>600
for(i in 1:n){
        if(yVec[i]>600){
                print(xVec[i])
        }
}

#7.d)create a vector |x1-X|^1/2,...,|xn-X|^1/2
X<-mean(xVec)
abs(xVec[1:n]-X)^0.5

#7.e)to count the values with in 200 of max value of yVec
y<-0
n1<-max(yVec)
for(i in 1:250){
        if(yVec[i]>(n-200) & yVec[i]<=n){
                y<-c(y,yVec[i])
                print(yVec[i])
        }
}
length(y)

#7.f)count the numbers in xVec divisible by 2
for(i in 1:n){
        if(xVec[i]%%2==0){
                X<-c(X,xVec[i])
                print(xVec[i])
        }
}
length(X)

#7.g)
xVec[order(yVec)]

#7.h)
yVec[seq(1,250,3)]

#8
1+sum(cumprod(seq(2,38,2)/seq(3,39,2)))

