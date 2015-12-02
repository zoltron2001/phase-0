# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#
# Loads the data and methods from the required file into the current file. 
# Require = have to pass the full path of the file 
# require_relative = just pass the relative path and then it will figure out where that file lives based on where the current file lives.
# require_relative 'state_data'

  # "Alabama" => {pop_den: 94, etc}
  # {pop_den: 94}
  
  # alabama[:pop_den]
  # STATE_DATA["Alabama"][:pop_den]
  
  
  # "Key" => value
  # This is called hash rocket syntax.
  
  # key: value
  # Rails 4 syntax.
  # Symbol syntax.

  # :key => value
  
  # Hash[key] => value
  
  # {key: value}
  # my_hash[:key]
  # my_hash[key:] # this will not work!

  # :key
  # not_a_key:
  
  # key: value
  # :key => value
  # Syntax suger.


STATE_DATA = {
  "Alabama" => {population_density: 94.65, population: 4822023},
  "Alaska" => {population_density: 1.1111, population: 731449},
  "Arizona" => {population_density: 57.05, population: 6553255},
  "Arkansas" => {population_density: 56.43, population: 2949131},
  "California" => {population_density: 244.2, population: 38041430},
  "Colorado" => {population_density: 49.33, population: 5187582},
  "Connecticut" => {population_density: 741.4, population: 3590347},
  "Delaware" => {population_density: 470.7, population: 917092},
  "Florida" => {population_density: 360.2, population: 19317568},
  "Georgia" => {population_density: 172.5, population: 9919945},
  "Hawaii" => {population_density: 216.8, population: 1392313},
  "Idaho" => {population_density: 19.15, population: 1595728},
  "Illinois" => {population_density: 231.9, population: 12875255},
  "Indiana" => {population_density: 182.5, population: 6537334},
  "Iowa" => {population_density: 54.81, population: 3074186},
  "Kansas" => {population_density: 35.09, population: 2885905},
  "Kentucky" => {population_density: 110.0, population: 4380415},
  "Louisiana" => {population_density: 105.0, population: 4601893},
  "Maine" => {population_density: 43.04, population: 1329192},
  "Maryland" => {population_density: 606.2, population: 5884563},
  "Massachusetts" => {population_density: 852.1, population: 6646144},
  "Michigan" => {population_density: 174.8, population: 9883360},
  "Minnesota" => {population_density: 67.14, population: 5379139},
  "Mississippi" => {population_density: 63.50, population: 2984926},
  "Missouri" => {population_density: 87.26, population: 6021988},
  "Montana" => {population_density: 6.86, population: 1005141},
  "Nebraska" => {population_density: 23.97, population: 1855525},
  "Nevada" => {population_density: 24.8, population: 2758931},
  "New Hampshire" => {population_density: 147.0, population: 1320718},
  "New Jersey" => {population_density: 1205, population: 8864590},
  "New Mexico" => {population_density: 17.16, population: 2085538},
  "New York" => {population_density: 415.3, population: 19570261},
  "North Carolina" => {population_density: 200.6, population: 9752073},
  "North Dakota" => {population_density: 9.92, population: 699628},
  "Ohio" => {population_density: 282.5, population: 11544225},
  "Oklahoma" => {population_density: 55.22, population: 3814820},
  "Oregon" => {population_density: 40.33, population: 3899353},
  "Pennsylvania" => {population_density: 285.3, population: 12763536},
  "Rhode Island" => {population_density: 1016, population: 1050292},
  "South Carolina" => {population_density: 157.1, population: 4723723},
  "South Dakota" => {population_density: 10.86, population: 833354},
  "Tennessee" => {population_density: 156.6, population: 6456243},
  "Texas" => {population_density: 98.07, population: 26059203},
  "Utah" => {population_density: 34.3, population: 2855287},
  "Vermont" => {population_density: 67.73, population: 626011},
  "Virginia" => {population_density: 207.3, population: 8185867},
  "Washington" => {population_density: 102.6, population: 6724540},
  "Washington,D.C."=> {population_density: 10357, population: 632323},
  "West Virginia" => {population_density: 77.06, population: 1855413},
  "Wisconsin" => {population_density: 105.2, population: 5726398},
  "Wyoming" => {population_density: 5.851, population: 576412}
  }

  
class VirusPredictor

  # Sets instance variables for the 3 parameters
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
    @number_deaths
    @speed = 0.0
  end

  #calls 2 methods that takes in instance variables 
  def virus_effects
    predicted_deaths #(@population_density, @population, @state)
    speed_of_spread #(@population_density, @state)
    puts_string
  end

  
  private
  # Private method are only visible INSIDE the class.
  # This means that other class methods can use them
  # But your driver code cannot
  
  # aka you can do...
  # VirusEffects.new.virus_effects
  
  # But not...
  # VirusEffects.new.predicted_deaths

  
  #Private method that calculates num of death based on pop density 
  def predicted_deaths
    #  How are arguements initialized inside a class?
    # - As local variables.
    
    # predicted deaths is solely based on population density
    if @population_density >= 200
      @number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      @number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      @number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      @number_of_deaths = (@population * 0.1).floor
    else
      @number_of_deaths = (@population * 0.05).floor
    end

  end

  
  #How fast death spreads based on pop density 
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    # NEW FEATURE
    
    if @population_density >= 200
      @speed += 0.5
    elsif @population_density >= 150
      @speed += 1
    elsif @population_density >= 100
      @speed += 1.5
    elsif @population_density >= 50
      @speed += 2
    else
      @speed += 2.5
    end

  end
  
  def puts_string
    puts "#{@state} will lose #{@number_of_deaths} people in this outbreak and will spread across the state in #{@speed} months.\n\n"
  end
  #  Could you make a third print_results method?
  #  Would you have to change the scope of any variables to do this?

end

#=======================================================================

# DRIVER CODE
# initialize VirusPredictor for each state

# The Driver code is the real code.
# Everything above, is just tools for your driver code to use.
# It is completely appropriate to have free floating variables, methods, or even naked loops.

def all_states_predictor
  # HINT: Find a way to automate the creation of all 50 states.
  # class.new
  # grab 
  # STATE_DATA.each do |state_name, state_info|
  #   state = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population])
  #   state.virus_effects
  # end
  
  # STATE_DATA.each_key do |state_name|
  #   state = VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population])
  #   state.virus_effects
  # end
  
  
  
#   <h1> Video Comments </h1>
    
#   @comments.each do |current_comment|
#     <p> current_comment </p>
#   end 
  
  
  
    STATE_DATA.each do |state_name, state_info|
      
      # state_name => "Alabama"
      # state_info => {pop_den: 92}
      
      # STATE_DATA[state_name] => {pop_den: 92}
  
      # STATE_DATA[state_name] == state_info
      
      # STATE_DATA[state_name][:pop_den] => 92
      # state_info[:pop_den] => 92
      
      state = VirusPredictor.new(state_name, state_info[:population_density], state_info[:population])
      state.virus_effects
  end

end

all_states_predictor


# my_array.each do |element|
#   # do something with element
# end

# # There is also an each loop for a hash.
# my_hash.each do |key, value|
#   #   do something with key, value, or both.
# end




#  Can you turn this into a template? What parts change for each state?
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects





# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

# rhode_island = VirusPredictor.new("Rhode Island", STATE_DATA["Rhode Island"][:population_density], STATE_DATA["Rhode Island"][:population])
# rhode_island.virus_effects


#=======================================================================
# Reflection Section


