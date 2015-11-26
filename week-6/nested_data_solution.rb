# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# p array[1][2][0]
p array[1][1][2][0]
# ============================================================



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# hash[outer:][inner:]["almost"][3]
p hash[:outer][:inner]["almost"][3]
# ============================================================



# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
p nested_data[:array][1][:hash]
# ============================================================



# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |x|
  if x.kind_of?(Array)
    x.map! do |y|
      y += 5
    end
  else
    x += 5
  end
end
p number_array

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

startup_names.map! do |name|
  #   1st level array values as a name
  if name.kind_of?(Array)
    #     Check if 1st level value is an array and if it is
    name.map! do |also_name|
      #       Map the second level array values as also_name
      if also_name.kind_of?(Array)
        #         Check if second level value is an array and if it is
        also_name.map! do |also_also_name|
          # Map the third level value as also_also_name
          also_also_name += "ly"
          # Add ly to also also name
        end
        # End the name
      else
        also_name += "ly"
      end
    end 
  else
    name += "ly"
  end
end
p startup_names