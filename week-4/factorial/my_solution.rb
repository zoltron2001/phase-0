# Factorial

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
#factoring 0 always results in 1
  if number == 0
    return 1
#factoring 1 always results in 1
  elsif number == 1
    return 1
#must be a positive, non negative number
  elsif number > 1
    product = number
    while number > 1 do
#walk down one
     number -=1
#factor and add to total
     product *= number
   end
    return product
  end
end