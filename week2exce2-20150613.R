#1.a)ctreating the 3*3 matrix with all 0's'
a<-matrix(0,3,3)
#calculate a^3
a%*%a%*%a
m<-matrix(c(1,5,-2,1,2,-1,3,6,-3),3,3)
#1.b)repalace the third column of m by the sum of the 2nd and 3rd column of m
m[,3]<-m[,2]+m[,3]

#2.creating the 15*3 matrix
a<-matrix(rep(c(10,-10),each=15),15,3)
#2.b)caluculate transpose(a)*a
crossprod(a,y=NULL)


matE<-matrix(0,6,6)
#3)creating the matrix in the given formate using row and col functions
matE[(abs(col(matE)-row(matE)))==1]<-1
matE

#4.a)creating the matrix in the given formate using outer function
x<-0:4
outer(x,x,"+")