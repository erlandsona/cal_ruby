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
    d = Day.new(1, 13, 2012)
    z = d.zellers(1, 1, 2000)
    assert_equal 0, z
  end

  def test_zellers_returns_one
    d = Day.new(1, 1, 2012)
    z = d.zellers(13, 2, 2000)
    assert_equal 1, z
  end

  def test_zellers_returns_two
    d = Day.new(1, 1, 2012)
    z = d.zellers(1, 10, 2012)
    assert_equal 2, z
  end

  def test_zellers_returns_three
    d = Day.new(1, 1, 2012)
    z = d.zellers(14, 1, 1800)
    assert_equal 3, z
  end

  def test_zellers_returns_four
    d = Day.new(1, 1, 2012)
    z = d.zellers(2, 6, 2021)
    assert_equal 4, z
  end

  def test_zellers_returns_five
    d = Day.new(1, 1, 2012)
    z = d.zellers(30, 4, 2015)
    assert_equal 5, z
  end

  def test_zellers_returns_six
    d = Day.new(1, 1, 2012)
    z = d.zellers(27, 12, 2999)
    assert_equal 6, z
  end










end
