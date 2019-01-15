class Bear

  # - A bear should have a name e.g. "Yogi" and a type e.g. "Grizzly"
  # - A bear should have an empty stomach ( maybe an array )
  #
  # - A bear should be able to take a fish from the river

  attr_accessor :name, :type

  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def bear_eats_fish(river)
    @stomach << river.river_loses_fish_to_bear()
    return @stomach
  end

  def stomach_fish_count()
    return @stomach.length
  end

  def bear_roars()
    return "RROOOOooooaaaaaarrrrrr"
  end

end
