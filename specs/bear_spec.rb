require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')
require_relative('../bear')

class BearTest < MiniTest::Test

  def setup()
    @bear = Bear.new("Charlie")
  end

  def test_bear_has_a_name()
    assert_equal("Charlie", @bear.name)
  end

  def test_bear_has_empty_stomach()
    assert_equal(0, @bear.fish_munched())
  end

end
