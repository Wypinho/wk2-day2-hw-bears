require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')
require_relative('../bear')
require_relative('../river')

class RiverTest < MiniTest::Test

  def setup()
    @fish1 = ("Carp")
    @fish2 = ("Salmon")
    @fish3 = ("Cod")

    @fish = [@fish1, @fish2, @fish3]

    @river = River.new("Devon", @fish)

    @bear = Bear.new("Charlie", "Grizzly")
  end

  def test_river_has_a_name()
    assert_equal("Devon", @river.name)
  end

  def test_count_river_fish()
    assert_equal(3, @river.fish_count())
  end

  def test_bear_can_catch_fish()
    @river.remove_fish(@fish1)
    @bear.eat_fish(@fish1)
    assert_equal(2, @river.fish_count())
    assert_equal(1, @bear.fish_munched())
  end

end
