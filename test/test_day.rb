require_relative 'helper'
require_relative '../lib/day'

class TestDay < Minitest::Test

  def test_init_day_saves_values
    d = Day.new(1, 1, 2012)
    assert_equal 1, d.day
    assert_equal 1, d.month
    assert_equal 2012, d.year
  end

  def test_zellers_returns_zero
    d = Day.new(1, 1, 2012)
    z = d.zellers(1, 13, 99, 19)
    assert_equal 0, z
  end

















end
