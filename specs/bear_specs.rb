require("minitest/autorun")
require("minitest/rg")
require_relative("../Bear")
require_relative("../River")
require_relative("../Fish")

class TestBear < MiniTest::Test

  def setup
    @bear = Bear.new("Bobby", "Grizzly")

    @fish1 = Fish.new("Spotty")
    @fish2 = Fish.new("Flapper")
    @fish3 = Fish.new("Yellow Tail")
    @fish4 = Fish.new("Billy")
    @fish5 = Fish.new("Snapper")
    @fish6 = Fish.new("Kinna")

    @fish = [@fish1, @fish2, @fish3, @fish4, @fish5, @fish6]

    @river = River.new("Waikato", @fish)
  end

  def test_get_bear_name()
    assert_equal("Bobby", @bear.name)
  end

  def test_get_bear_type()
    assert_equal("Grizzly", @bear.type)
  end

  def test_bear_eats_fish()
    @bear.bear_eats_fish(@river)
    assert_equal(1, @bear.stomach_fish_count())
    assert_equal(5, @river.river_fish_population())
  end

  def test_bear_roars()
    assert_equal("RROOOOooooaaaaaarrrrrr", @bear.bear_roars())
  end

end
