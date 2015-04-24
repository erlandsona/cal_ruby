require_relative '../lib/day'

class Month < Day
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
  end

  
  # This to_s method is based on a fixed width font and puts out a 20 column wide month. All "Magic numbers are based on the width of the string:)"

  def to_s
    months = %w[January February March April May June July August September October November December]
    header = months[month - 1] + " #{year}"
    days_of_month = <<EOS
 1  2  3  4  5  6  7
 8  9 10 11 12 13 14
15 16 17 18 19 20 21
22 23 24 25 26 27 28
29 30 31
EOS
    str = <<EOS
#{header.center(20).rstrip}
Su Mo Tu We Th Fr Sa
#{days_of_month}
EOS
  end

end
