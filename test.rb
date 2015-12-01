startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def deeper(argument)
  variable = argument
    variable.map! do |element|
      if element.kind_of?(String)
        element += "ly"
      else
        deeper(element)
      end
    end
end


deeper(startup_names)
p startup_names