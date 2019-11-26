require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')
require_relative('../bear')

class BearTest < MiniTest::Test

  def test_bear_has_a_name()
    bear = Bear.new("Charlie")
    assert_equal("Charlie", bear.name)
  end

end
