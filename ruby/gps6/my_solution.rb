# Virus Predictor

# I worked on this challenge with: Nestor Ceron and Angie Rivera and John Gil(Guide)
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# require_relative statement is a link to another file relative to the directory that you are currently in.
#
require_relative 'state_data'

class VirusPredictor

  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  def predicted_deaths
    # predicted deaths is solely based on population density
    num = case @population_density
          when(200..9999) then 0.4
          when(150..199) then 0.3
          when(100..149) then 0.2
          when(50..99) then 0.1
          else 0.05
          end

    number_of_deaths = (@population * num).floor
    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

    # predicted deaths is solely based on population density
    # if @population_density >= 200
    #   num = 0.4
    # elsif @population_density >= 150
    #   num = 0.3
    # elsif @population_density >= 100
    #   num = 0.2
    # elsif @population_density >= 50
    #   num = 0.1
    # else
    #   num = 0.05
    # end
    # number_of_deaths = (@population * num).floor
    # print "#{@state} will lose #{number_of_deaths} people in this outbreak"

    #predicted deaths is solely based on population density
    # if @population_density >= 200
    #   number_of_deaths = (@population * 0.4).floor
    # elsif @population_density >= 150
    #   number_of_deaths = (@population * 0.3).floor
    # elsif @population_density >= 100
    #   number_of_deaths = (@population * 0.2).floor
    # elsif @population_density >= 50
    #   number_of_deaths = (@population * 0.1).floor
    # else
    #   number_of_deaths = (@population * 0.05).floor
    # end

    # print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = case @population_density
            when(200..9999) then 0.5
            when(150..199) then 1
            when(100..149) then 1.5
            when(50..99) then 2
            else 2.5
            end

    # if @population_density >= 200
    #   speed += 0.5
    # elsif @population_density >= 150
    #   speed += 1
    # elsif @population_density >= 100
    #   speed += 1.5
    # elsif @population_density >= 50
    #   speed += 2
    # else
    #   speed += 2.5
    # end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state

# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, population_info|
  VirusPredictor.new(state, population_info[:population_density],population_info[:population]).virus_effects
end

#=======================================================================
# Reflection Section
