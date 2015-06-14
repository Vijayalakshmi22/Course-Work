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
    if(str[0].lower()=='a' or str[0].lower()=='e' or str[0].lower()=='i' or
       str[0].lower()=='o' or str[0].lower()=='u'):
        return 'vowel'
    elif(str[0].lower()=='b' or str[0].lower()=='c' or str[0].lower()=='d' or
         str[0].lower()=='f' or str[0].lower()=='g' or str[0].lower()=='h' or
         str[0].lower()=='i' or str[0].lower()=='j' or str[0].lower()=='k' or
         str[0].lower()=='l' or str[0].lower()=='m' or str[0].lower()=='n' or
         str[0].lower()=='p' or str[0].lower()=='q' or str[0].lower()=='r' or
         str[0].lower()=='s' or str[0].lower()=='t' or str[0].lower()=='v' or
         str[0].lower()=='w' or str[0].lower()=='x' or str[0].lower()=='y' or
         str[0].lower()=='z'): 
        return 'consonant'
print char('V')


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
    if(str.lower()==reverse(str).lower()):
        str1=str+" is palindrom"
    else:
        str1=str+" is not a palindrom"
    return str1
print is_palindrom("vijji")

#9.fun() to check that the given value is a member of list or not
def is_member(x,list):
    for i in range(len(list)):
        if(list[i]==x):
            return "TRUE"
            break
        else:
            continue
mylist=["vijji",2,5,"lucky"]
print is_member(10,mylist)

#10.fun() to return true if the two lists having atleast one common factor
def overlapping(list1,list2):
    for i in range(len(list1)):
        for j in range(len(list2)):
            if(list1[i]==list2[j]):
                return "TRUE"
                break
            else:
                continue
            
print overlapping([1,2,3,4,5],[5,11,7,8,9])

#11.fun() that takes a integer,character and returns a string (5,'x') returns "xxxxx"
def generate_n_chars(x,char):
    str=""
    for i in range(x):
        str=str+char

    return str
print generate_n_chars(10,'y')

#12.fun() that takes the list of integers and prints the histogram
def histogram(list):   
    for i in range(len(list)):
        str=""
        for i in range(list[i]):
            str=str+'*'
        print str
histogram([4,7,5])

#13.fun() that takes a list of numbers and returns the largest one
def max_in_list(list):
    max=0
    for i in range(len(list)):
        if(list[i]>max):
            max=list[i]
    return max
print max_in_list([4,3,2,5,1])

#14.fun() that takes a list of strings into a list of integers representing the length of strings
def words_into_int(list):
    k=0
    for i in range(len(list)):
        k=len(list[i])
        list[i]=k
    return list
print words_into_int(["vijji","suma","uma","venu"])

#15.fun() to find longest word from a list and prints the length of longest word
def find_longest_word(list):
    k=0
    str=""
    for i in range(len(list)):
        if(len(list[i])>k):
            k=len(list[i])
            str=list[i]
    return str,k
print find_longest_word(["vijji","sumathi","uma","venu"])

#16.fun() that takes a list of words and n and returns the words which are having the length more than n
def find_long_words(list,n):
    str=""
    for i in range(len(list)):
        if(len(list[i])>n):
            str=str+" "+list[i]
    return str
print find_long_words(["vijji","lucky","suma","uma"],4)

#17.fun() that recognises palindrom by ignoring spaces,capitalization,punctuation,exclamation
def palindrom(list):
    for j in range(len(list)):
        str1=""
        str=list[j]
        for i in range(len(str)):
            if(str[i]==" " or str[i]=="?" or str[i]=="!" or str[i]=="'"):
                continue
            else:
                str1=str1+str[i]
        if(str1.lower()==reverse(str1).lower()):
            print "palindrom"
        else:
            print "not a palindrome"
palindrom(["Ra da'r?","ma d?a "])
        
#18.fun() to check a sentence whether it is panagram or not(contains all the 26letters)
def panagram(str):
    str1=""
    k=0
    for i in range(len(str)):
        if(char(str[i])=='vowel' or char(str[i])=='consonant'):
            if(is_member(str[i].lower(),str1.lower())=="TRUE"):
               str1=str1+str[i]
               
            else:
                str1=str1+str[i]
                k=k+1
        else:
            str1=str1+str[i]
    if(k==26):
        print "panagram"
    else:
        print "not a panagram"
panagram("The Quick BrowN fox jumps over the lazy dog")

#19.
def song():
    str1=""
    for i in range(99):
        n=99-i
        str1=str(n)+"Bottles of beer,on the wall,"+str(n)+" bottles of beer.Take one down,pass it around."
        print str1
song()

#20.
def translate(list):
    str1=""
    l={"merry":"god", "christmas":"jul", "and":"och", "happy":"gott", "new":"nytt", "year":"år"}
    for i in range(len(list)):
        str1=str1+" "+l[list[i]]
    return str1
print translate(["merry","christmas"])


        
                
            
            
        
        
        

