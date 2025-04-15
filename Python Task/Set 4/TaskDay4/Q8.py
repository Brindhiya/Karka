for i in range (1,101):
    if (i%3)==0:
        print(i,"called Fizz")
    elif (i%5)==0:
        print(i,"called Buzz")
    elif(i%3)==0 and (i%5)==0:
        print(i,"called FizzBuzzz")
    else:
        print (i)