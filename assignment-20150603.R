sink("D:/vijji/R/assignment-20150603.txt",append=TRUE)
#find the square root of -1
sqrt(-1)

#The vector consisting of the decreasing sequence of consecutive integers from 57 to -11.
M<-c(57: -11)
M

#The vector consisting of the increasing sequence of odd integers from -11 to 57. Hint: See seq
N<-seq(-11,57,2)
N

#The vector consisting of five hundred alternating zeros and ones. 
K<-rep(0:1,100)
K

#The average of 12.7, 9.4, 6.6, 10.8, 5.3, and 7.2.
B<-c(12.7, 9.4, 6.6, 10.8, 5.3, 7.2)
mean(B)

#Sort the six preceding numbers in decreasing order.
sort(B)

#A vector of fifty, uniformly distributed, random values between - 1 and +1.
F<-runif(50,-1,1)
F

#The vector consisting of positive values from the preceding vector.
L<-subset(F,F>0)
L

#The positions of the positive values in the original vector.
D<-c(F<0)
D

H<-matrix(c(F,K),10,50)
H


#The vector of the first 100 positive integers, without the perfect squares.
G<-seq(1,100)
V<-G^2
W<-G[-V]
W

