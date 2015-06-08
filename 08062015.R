#Write a program to arrange a group of twenty people into a list of ten random pairs. 
group<-c(1:20)
mylist<-NULL
for(i in c(1:10)){
  pair<-sample(group,2,replace = FALSE)
  pair
  mylist<-rbind(mylist,pair)
  mylist
  i1 = which(group == pair[1])	
  i2 = which(group == pair[2])
  group = group[-c(i1, i2)]
  
}
mylist


#Redo the previous exercise a more efficient way,i.e.,without using a for loop
group<-c(1:20)
mylist<-NULL
pair<-matrix(data=sample(group,20,replace = FALSE),nrow= 10,ncol = 2,byrow=TRUE,dimnames = NULL)
group<-group[-pair]
pair


#Write anR program to first create a general random sample of ten uniformly distributed values between -50and +50(runif), and sort them from lowest to highest. Imagine that these valuesrepresent the endpoints of nine adjacent intervals on the real line.Compute the midpoints of these nine intervals.output the ten sorted values and mid points
values<-runif(10,min=-50L,max=50L)
values
mydata<-NULL
midvalues<-NULL
asc<-sort(values,decreasing = FALSE)
for(i in c(1:9)){
  pair<-c(asc[i],asc[i+1])
  pair
  sum<-sum(pair)
  midpoints=sum/2
  mydata=rbind(mydata,pair)
  midvalues<-rbind(midvalues,midpoints)
}
asc
midvalues


#Redothe previous exercisea more efficient way,i.e.,without using a for loop
values<-runif(10,min=-50L,max=50L)
values
mydata<-NULL
midvalues<-NULL
asc<-sort(values,decreasing = FALSE)
i<-1
while(!i==10){
  pair<-c(asc[i],asc[i+1])
  pair
  sum<-sum(pair)
  midpoints=sum/2
  mydata=rbind(mydata,pair)
  midvalues<-rbind(midvalues,midpoints)
  i<-i+1
}
asc
midvalues


#program to print the prime numbers
n<-20
input<-c(1:n)
input
for(i in c(2:n)){
  if(!is.nan(input[i])){
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




