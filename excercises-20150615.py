#1.max() function to find the max of 2 numbers
def max(x,y):
    if x>y:
        return x
    else:
       return y
print max(10,20)


#2.max() function to find the max of three numbers
def max(x,y,z):
    if x>y and x>z:
        return x
    elif y>x and y>z:
        return y
    else:
        return z
print max(40,50,30)


#3.len()
print len("vijji")


#4.fun() to print the given character is a vowel or consonant
def char(str):
    if(str[0]=='a' or str[0]=='A' or
        str[0]=='e' or str[0]=='E' or
       str[0]=='i' or str[0]=='I' or
        str[0]=='o' or str[0]=='O' or
        str[0]=='u' or str[0]=='U'):
        return 'vowel'
    elif(str[0]=='b' or str[0]=='c' or str[0]=='d' or str[0]=='f' or str[0]=='g' or str[0]=='h' or str[0]=='i' or str[0]=='j' or str[0]=='k' or
         str[0]=='l' or str[0]=='m' or str[0]=='n' or str[0]=='p' or str[0]=='q' or str[0]=='r' or str[0]=='s' or str[0]=='t' or str[0]=='v' or
         str[0]=='w' or str[0]=='x' or str[0]=='y' or str[0]=='z' or str[0]=='B' or str[0]=='C' or str[0]=='D' or str[0]=='F' or str[0]=='G' or
         str[0]=='H' or str[0]=='I' or str[0]=='J' or str[0]=='K' or str[0]=='L' or str[0]=='M' or str[0]=='N' or str[0]=='P' or str[0]=='Q' or
         str[0]=='R' or str[0]=='S' or str[0]=='T' or str[0]=='V' or
         str[0]=='W' or str[0]=='X' or str[0]=='Y' or str[0]=='Z'): 
        return 'consonant'
print char('o')


#5.fun() to translate text into swedish for rubber language
def translate(str):
    str1=""
    for i in range(len(str)):
        if(char(str[i])=='consonant'):
            str2=str[i]+'o'+str[i]
            str1=str1+str2
        elif(char(str[i])=='vowel'):
            str1=str1+str[i]
        else:
            str1=str1+str[i]
    return str1
print translate('this is fun')

#6.fun() to calculate the sum of digits in an array
def sum(arr):
    sum=0
    for i in range(len(arr)):
        sum=sum+arr[i]
    return sum
a=[1,2,3,4,5]
print sum(a)


#6.function to calculate the multiplication of digits in an array
def mul(arr):
    mul=1
    for i in range(len(arr)):
        mul=mul*arr[i]
    return mul
a=[1,2,3,4]
print mul(a)


#7.fun() to reverse the characters in a string
def reverse(str):
    str1=""
    for i in range(len(str)):
        str1=str1+str[len(str)-i-1]
    return str1
print reverse("this is fun")


#8.fun() to chech the given string is palindrom or not
def is_palindrom(str):
    str1=""
    if(str==reverse(str)):
        str1=str+" is palindrom"
    else:
        str1=str+" is not a palindrom"
    return str1
print is_palindrom("vijji")




