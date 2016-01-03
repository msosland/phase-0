# Virus Predictor

# I worked on this challenge with Kurt Schlueter.
# We spent 1.25 hours on this challenge.

# EXPLANATION OF require_relative
# require_relative says that this program needs another file and gives the relative path.  - used for local files
# require is used for the absolute path - used for external libraries or sources

require_relative 'state_data'

class VirusPredictor

  #creating instance variables for state, pop density, and population
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #this method calls the other two methods below
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # this method calculates the number of deaths in a state based on its pop and pop density and returns in a string
  def predicted_deaths
    # predicted deaths is solely based on population density
    case @population_density
      when 150..199 then number_of_deaths = (@population * 0.3).floor
      when 100..149 then number_of_deaths = (@population * 0.2).floor
      when 50..99 then number_of_deaths = (@population * 0.1).floor
      when 0..49 then number_of_deaths = (@population * 0.05).floor
      else
        number_of_deaths = (@population * 0.4).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  #this method calcs the speed that the virus will spread based on pop density and returns in a string
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    case @population_density
      when 150..199 then speed = 1
      when 100..149 then speed = 1.5
      when 50..99 then speed = 2
      when 0..49 then speed = 2.5
      else
        speed = 0.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"
  end
end


#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

STATE_DATA.each do |key, value|
  a = VirusPredictor.new(key, value[:population_density], value[:population])
  a.virus_effects
end

#=======================================================================
# Reflection Section
# What are the differences between the two different hash syntaxes shown in the state_data file?
# The state keys are all strings, which is useful because they are printed out as strings when we call our
# methods, and they are all unique anyway.
# The inner hash uses symbols for population_density and population, which is useful so that there
# is not a new string created in memory for every single inner hash key. It is also a quicker way to make comparisons.

# What does require_relative do? How is it different from require?
# Require_relative pulls in a local relative file path, whereas require is better
# used for external libraries or sources that are not local, and using an absolute path.

# What are some ways to iterate through a hash?
# We used STATE_DATA.each |key, value| to access the keys and the inner hash values. You can also use each_key, each_value, each_pair.

# When refactoring virus_effects, what stood out to you about the variables, if anything?
# If the only variables used are instance variables, then nothing needed to be passed in as a
#  parameter - the method would already have access to those instance variables.

# What concept did you most solidify in this challenge?
# It was good practice to review case/when structures in Ruby because I dont think I have ever actually used one
#   in practice before.
#   I learned that I could use a range with when like when 0..49 and also combine when/then on
#   the same line for better readability.
#   Also it has been a couple of weeks since I coded in Ruby so it was nice to review it again.