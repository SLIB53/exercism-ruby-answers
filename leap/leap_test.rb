require 'minitest/autorun'
require_relative 'leap'

class LeapTest < Minitest::Test
  def test_year_not_divisible_by_4_common_year
    refute Leap.leap?(2015), "Expected 'false', 2015 is not a leap year."
  end

  def test_year_divisible_by_4_not_divisible_by_100_leap_year
    assert Leap.leap?(1996), "Expected 'true', 1996 is a leap year."
  end

  def test_year_divisible_by_100_not_divisible_by_400_common_year
    refute Leap.leap?(2100), "Expected 'false', 2100 is not a leap year."
  end

  def test_year_divisible_by_400_leap_year
    assert Leap.leap?(2000), "Expected 'true', 2000 is a leap year."
  end

  def test_year_divisible_by_200_not_divisible_by_400_common_year
    refute Leap.leap?(1800), "Expected 'false', 1800 is not a leap year."
  end
end
