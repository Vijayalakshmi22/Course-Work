x=5
if x<10:
    print 'smaller'
if x>20:
    print 'bigger'
print 'finish'

#comparison operators
x=5
if x==5:
    print 'equals 5'
if x>4:
    print 'greater than 4'
if x>=5:
    print 'greater than or equal 5'
if x<6:print 'less than 6'
if x<=5:
    print 'less than or equal 5'
if x!=6:
    print 'not equal 6'

#Indentation
x=5
print 'before 5'
if x==5:
    print 'is 5'
    print 'is still 5'
    print 'third 5'
print 'afterwards 5'
print 'before 6'
if x==6:
    print 'is 6'
    print 'is still 6'
    print 'third 6'
print 'afterwards 6'

#Nested decisions
x=42
if x>1:
    print 'more than one'
    if x<100:
        print 'less than 100'
print 'all done'

#two-way using else
x=4
if x>2:
    print 'bigger'
else:
    print 'smaller'
print 'all done'

#many elif's
x=4
if x<2:
    print 'small'
elif x<10:
    print 'medium'
elif x>20:
    print 'big'
elif x<40:
    print 'large'
elif x<100:
    print 'huge'
else:
    print 'ginormous'

#multi-way
x=2
if x<2:
    print 'smaller'
elif x<10:
    print 'medium'
else:
    print 'large'
print 'all done'

#multi-way no else
x=95
if x<2:
    print 'small'
elif x<10:
    print 'medium'
print 'all done'

#multi-way puzzles
x=5
if x<2:
    print 'below 2'
elif x>=2:
    print '2 or more'
else:
    print 'something else'    #this will never print

#multi-way puzles
x=5
if x<2:
    print 'below 2'
elif x<20:
    print 'below 20'
else:
    print 'something else'

#using try and except
astr='hello bob'
try:
    istr=int(astr)
except:
    istr=-1
print 'firdt',istr
astr='123'
try:
    istr=int(astr)
except:
    istr=-1
print 'second',istr


#multiple lines in try block
astr='bob'
try:
    print 'hello'
    istr=int(astr)
    print 'there'
except:
    istr=-1
    print 'done',istr

#sample try/except
rawstr=raw_input("enter a number")
try:
    ival=int(rawstr)
except:
    ival=-1
if ival>0:
    print 'nice work'
else:
    print 'not a number'

#excersise
hours=raw_input('enter hours')
rate=raw_input('enter rate')
try:
    hours1=int(hours)
    rate1=int(rate)
except:
    print 'please enter numeric input'
pay=hours1*rate1
print 'pay is',pay

    
