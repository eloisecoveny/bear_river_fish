require("minitest/autorun")
require("minitest/rg")
require_relative("../Fish")
require_relative("../River")
require_relative("../Bear")

class TestFish < MiniTest::Test

  def setup
    @fish1 = Fish.new("Spotty")
    @fish2 = Fish.new("Sparky")
    @fish3 = Fish.new("Tweedle")
  end

  def test_get_fish_name()
    assert_equal("Spotty", @fish1.get_fish_name())
  end

end
