require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../fish')

class FishTest < MiniTest::Test

  def test_fish_has_name()
    fish = Fish.new("Carp")
    assert_equal("Carp", fish.name)
  end

end
