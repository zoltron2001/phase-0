Reflection

How does Ruby handle addition, subtraction, multiplication, and division of numbers?
	
	All require a symbol between numbers or variables. The following operations are denoted 
	as such:

	Addition: +
	Subtraction: -
	Multiplication: *
	Division: /

What is the difference between integers and floats?
	
	Integers are whole numbers (positive, negative, or zero) without decimal points. 
	Floats, or floating-point numbers, have decimal points.

	Examples
	Integer: 1
	Integer: 0
	Integer: -608
	Float: 1.0
	Float: -0.608
	Float: 0.0

What is the difference between integer and float division?
	
	Dividing with a float will give the exact decimal answer (assuming the number does not 
	repeat infinitely). Dividing with an integer will return the proper answer assuming the 
	numbers devide into eachother evenly. That is to say, that no remainder exists.

	Examples
	1/2.to_f == 0.5
	1/2 == 0
	8/4.to_f == 2.0
	8/4 == 2

What are strings? Why and when would you use them?
	
	 A string is a collection of characters (letters, numbers, etc.). You can use them for 
	 all sorts of purposes - to contain names, paragraphs, or entire documents. The idea is 
	 to place these characters in a particular order and for them to represent nothing but 
	 themselves. When we refer to the string "apple", we are refering to those five 
	 characters in the order they have been placed. Unadulterated, "apple" is simply apple. 
	 It is not 5, "elppa" or fruit.

What are local variables? Why and when would you use them?
	
	Local variables can be thought of as containers that the local computer can use to 
	store strings and numbers. Their names should be in lower case and can include most 
	characters. You use them in the same way that the computer will - to store information. 
	Maybe you want to save the string "apple" in one, or the number 15 in another.

How was this challenge? Did you get a good review of some of the basics?

	This challenge was fine. It seems a bit overly philosophical to ask whey and when you 
	would use such basic tools (letters, numbers, and variables). But it certainly got me 
	thinking.

```ruby
#Hours in a year

year = 1
days = 365
hours = 24

hours_in_a_year = (year*days*hours)
p hours_in_a_year

#Minutes in a Decade

decade = 10*year
minutes = 60

minutes_in_a_decade = (hours_in_a_year*decade*minutes)
p minutes_in_a_decade
```

4.2.1 
[https://github.com/zoltron2001/phase-0/blob/master/week-4/defining-variables.rb](https://github.com/zoltron2001/phase-0/blob/master/week-4/defining-variables.rb)

4.2.2
[https://github.com/zoltron2001/phase-0/blob/master/week-4/simple-string.rb.rb](https://github.com/zoltron2001/phase-0/blob/master/week-4/simple-string.rb)

4.2.3
[https://github.com/zoltron2001/phase-0/blob/master/week-4/basic-math.rb.rb](https://github.com/zoltron2001/phase-0/blob/master/week-4/basic-math.rb.rb)