# Virus Predictor
# I worked on this challenge [by myself, with: Cortney].
# We spent [2] hours on this challenge.
# EXPLANATION OF require_relative
# Require needs an absolute path, explicit
# Require relative file w/in same directory. Is generally another Ruby file.

require_relative 'state_data'
class VirusPredictor
  attr_accessor :population_density
  # Create a new object with state_of_origin, population_density and population.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # Calls other methods and orders them correctly.
  def virus_effects
    predicted_deaths
    speed_of_spread
  end
  private
  # Predicts deaths in states based on population density and and total population.
   def predicted_deaths
  #   # predicted deaths is solely based on population density
  #   if population_density >= 200
  #     number_of_deaths = (@population * 0.4).floor
  #   elsif population_density >= 150
  #     number_of_deaths = (@population * 0.3).floor
  #   elsif population_density >= 100
  #     number_of_deaths = (@population * 0.2).floor
  #   elsif population_density >= 50
  #     number_of_deaths = (@population * 0.1).floor
  #   else
  #     number_of_deaths = (@population * 0.05).floor
  #   end
  case population_density
    when (1000000..200)
    then number_of_deaths = (@population * 0.4).floor
    when (150..200)
    number_of_deaths = (@population * 0.3).floor
    when (150..100)
    number_of_deaths = (@population * 0.2).floor
    when (50..100)
    number_of_deaths = (@population * 0.1).floor
    else
    number_of_deaths = (@population * 0.05).floor
  end
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"
  end
  # Predicts how fast disease will spread in state based on population density.
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0
    # if population_density >= 200
    #   speed += 0.5
    # elsif population_density >= 150
    #   speed += 1
    # elsif population_density >= 100
    #   speed += 1.5
    # elsif population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end
    case population_density
      when (1000000..200)
      speed += 0.5
      when (200..150)
      speed += 1
      when (150..100)
      speed += 1.5
      when (100..50)
      speed += 2
      else
      speed += 2.5
    end
    puts " and will spread across the state in #{speed} months.\n\n"
  end
end
#=======================================================================
# DRIVER CODE
 # initialize VirusPredictor for each state
# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects
#
# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects
#
# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects
#
# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects
#
STATE_DATA.each do |state, pop_hash|
  each_state = VirusPredictor.new(state, pop_hash[:population_density], pop_hash[:population])
  each_state.virus_effects
end
#=======================================================================
# Reflection Section