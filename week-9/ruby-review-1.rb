# Drawer Debugger

# I worked on this challenge [with: Jenna].
# I spent [1.5] hours on this challenge.

# Original Code

class Drawer

  attr_reader :contents

  def initialize
    @contents = []
    @open = true
  end
  # push argument into contents array
  def add_item(item)
    @contents << item
  end
  # identify last item in array and remove it
  def remove_item(item = @contents.pop)
    @contents.delete(item)
  end
  # recursively loop array until all items have been removed
  def dump
    until @contents.empty?
      @contents.each { |item| remove_item(item) }
    end
    puts "Your drawer is empty."
  end
  # print each item in array
  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.to_s }
  end
end

class Silverware
  attr_reader :type, :clean

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  # prints the item and updates clean to false
  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  # updates clean to true
  def clean_silverware
    @clean = true
  end
end



# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
# knife1 = Silverware.new("knife")

# silverware_drawer = Drawer.new
# silverware_drawer.add_item("knife1")
# silverware_drawer.add_item(Silverware.new("spoon"))
# silverware_drawer.add_item(Silverware.new("fork"))
# silverware_drawer.view_contents

# silverware_drawer.remove_item(-1)
# silverware_drawer.view_contents
# sharp_knife = Silverware.new("sharp_knife")


# silverware_drawer.add_item(sharp_knife)

# silverware_drawer.view_contents

# removed_knife = silverware_drawer.remove_item(sharp_knife)
# removed_knife.eat
# removed_knife.clean_silverware
# raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

# silverware_drawer.view_contents
# silverware_drawer.dump
# raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
# silverware_drawer.view_contents

# # What will you need here in order to remove a spoon? You may modify the driver code for this error.
# spoon = Silverware.new("spoon")
# silverware_drawer.add_item(spoon)
# raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
# silverware_drawer.remove_item(spoon) #What is happening when you run this the first time?
# spoon.eat
# puts spoon.clean #=> this should be false

# DRIVER TESTS GO BELOW THIS LINE
silverware_drawer = Drawer.new
spoon1 = Silverware.new("spoon")
spoon2 = Silverware.new("spoon")
fork1 = Silverware.new("fork")
fork2 = Silverware.new("fork")
silverware_drawer.add_item("spoon1")
silverware_drawer.add_item("spoon2")
silverware_drawer.add_item("fork1")
silverware_drawer.add_item("fork2")
p silverware_drawer.contents

p silverware_drawer.remove_item("spoon2")
spoon2.eat
p silverware_drawer.view_contents

# Reflection

