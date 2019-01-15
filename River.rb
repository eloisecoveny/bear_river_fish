class River

  # - A river should have a name e.g. "Amazon"
  # - A river should hold many fish
  # - A river should lose a fish when a bear takes a fish

attr_accessor :name

  def initialize(name, population)
    @name = name
    @population = population
  end

  def river_fish_population()
    @population.length()
  end

  def get_fish(fish)
    for fish in @population
      return fish
    end
  end

  def river_looses_fish_to_bear()
    condemned_fish = @population.pop()
    return condemned_fish
  end

end
