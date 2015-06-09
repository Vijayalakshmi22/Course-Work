sink("D:/vijji/R/practice-20150603.txt",append=TRUE)
2 + 3
x = 2 + 3
x
y = c(2, 3)
y
sum(y)
v = c(5: 40)
v
length(v)
v[10]
v[-10]
v[50]
z=c(3:10)
z+5
2*z
w=c(1,2,3,4,5,6,7,8)
w+z
z-w
w-z
w*z
w/z
z/w
w^2
z^2
c(z,w)
c(w,z)
two.by.eight=rbind(w,z)
two.by.eight
two.by.eight=rbind(z,w)
two.by.eight
eight.by.two=cbind(w,z)
eight.by.two
eight.by.two=cbind(z,w)
eight.by.two
two.by.eight[1,6]
two.by.eight[2,6]
eight.by.two[6,1]
eight.by.two[6,2]
matrix(data = c(w,z),nrow = 2,ncol = 8)
matrix(data = c(z,w),nrow = 8,ncol = 2)
matrix(data = c(z,w),nr = 8,nc = 2)
matrix(data = c(z,w),8,2)
matrix(data = c(z,w),8,2,byrow = FALSE)
matrix(data = c(z,w),8,2,byrow = F)
matrix(data = c(z,w),8,2,F)
matrix(data = c(w,z),8,2,F)
matrix(c(w, z), 8, 2, F,list(c(1:8), c("w", "z"))) 
m=matrix(c(w,z),4,4)
m
m[2:4,1:2]

  