class Month
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
  end

  def to_s
    months = %w[January February March April May June July August September October November December]
    year_length = 5
    header_diff = ''
    (10 - ((months[month - 1].length + year_length) / 2)).times do
      header_diff << ' '
    end
    str = <<EOS
#{header_diff}#{months[month - 1]} #{year}
Su Mo Tu We Th Fr Sa
                1  2
 3  4  5  6  7  8  9
10 11 12 13 14 15 16
17 18 19 20 21 22 23
24 25 26 27 28 29 30
31
EOS
  end

end
