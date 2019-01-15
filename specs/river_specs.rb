require("minitest/autorun")
require("minitest/rg")
require_relative("../River")
require_relative("../Fish")
require_relative("../Bear")

class TestRiver < MiniTest::Test

  def setup
    @fish1 = Fish.new("Spotty")
    @fish2 = Fish.new("Flapper")
    @fish3 = Fish.new("Yellow Tail")
    @fish4 = Fish.new("Billy")
    @fish5 = Fish.new("Snapper")
    @fish6 = Fish.new("Kinna")

    @fish = [@fish1, @fish2, @fish3, @fish4, @fish5, @fish6]

    @river = River.new("Waikato", @fish)

  end

  def test_river_fish_population()
    assert_equal(6, @river.river_fish_population())
  end

  def test_get_river_name()
    assert_equal("Waikato", @river.name)
  end

  def test_get_fish()
    assert_equal(@fish1, @river.get_fish(@fish1))
  end

  def test_river_loses_fish_to_bear()
    @river.river_loses_fish_to_bear()
    assert_equal(5, @river.river_fish_population())
  end

end
