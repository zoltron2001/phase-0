#Attr Methods

# I worked on this challenge [by myself]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: 
# Output: 
# Steps: 

class NameData

end


class Greetings

end



# Reflection
=begin

Release 1
  
  What are these methods doing?
    
    The first method initializes some information about a person. The 
    second method prints that information. And the rest of the methods 
    prepare that information to be altered outside of the class.

  How are they modifying or returning the value of instance 
  variables?
    
    Instance variables are created in their own methods. For each 
    instance variable, there is another method that sets the variable 
    equal to an argument like this:
      def method=(argument)
        @instance = argument
      end
    The equals sign allows the user to call the method outside of the 
    class and set that call equal to a new value. It looks like this:
      instance_of_class.method = new_value

Release 2

  What changed between the last release and this release?
    
    We've added a reader attribute to 'age.' It rendered obsolete the 
    method that declares @age into existence. That also means that when 
    we change the age outside of the class that we are calling on #age 
    rather than #what_is_age.

  What was replaced?

    #what_is_age has been replaced by the reader attribute.
    
  Is this code simpler than the last?
    
    Yes. One line of code replaces a three line method.

Release 3

  What changed between the last release and this release?

    We've added the writer attribute to 'age.' No age-related methods 
    are necessary now. When we call for age to be changed we now use 
    'age' in place of a method name. It looks like this:
      class.age = new_age

  What was replaced?

    All age related methods were removed. '.age' has replaced the method 
    name when calling for an alteration.

  Is this code simpler than the last?

    Yes.

Release 6

  What is a reader method?
    
  What is a writer method?
    
  What do the attr methods do for you?
    
  Should you always use an accessor to cover your bases? 
  Why or why not?
    
  What is confusing to you about these methods?
    

=end