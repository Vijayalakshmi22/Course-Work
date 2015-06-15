##5.printing the matrix in the pattern.
mata<-matrix(outer(0:4,0:4,'+'),nrow = 5,ncol = 5)%%5
mata

##5(b)
mata1<-matrix(outer(0:9,0:9,'+'),nrow = 10,ncol = 10)%%10
mata1

##5(c)
mata2<-matrix(outer(0:8,0:8,'-'),nrow = 9,ncol = 9)%%9
mata2