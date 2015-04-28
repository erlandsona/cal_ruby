require_relative '../lib/day'
require_relative '../lib/month'

class Year

  attr_reader :year

  def initialize(year)
    @year = year
  end

  def to_s
    header = "#{year}".center(62).rstrip + "\n"
    all_months = [ Month.new(1, year).to_s.split("\n"), Month.new(2, year).to_s.split("\n"), Month.new(3, year).to_s.split("\n"), Month.new(4, year).to_s.split("\n"), Month.new(5, year).to_s.split("\n"), Month.new(6, year).to_s.split("\n"), Month.new(7, year).to_s.split("\n"), Month.new(8, year).to_s.split("\n"), Month.new(9, year).to_s.split("\n"), Month.new(10, year).to_s.split("\n"), Month.new(11, year).to_s.split("\n"), Month.new(12, year).to_s.split("\n")
    ]

    str = <<-eos
#{header}
eos
    all_months.each_slice(3) do |months|
      one, two, three = months
      str << <<-eos
#{one[0][0..-5].strip.center(20)}#{two[0][0..-5].strip.center(24)}#{three[0][0..-5].strip.center(20).rstrip}
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
#{one[2].to_s.rjust(20) + "  " + two[2].to_s.rjust(20) + "  " + three[2].to_s.rjust(20)}
#{one[3].to_s + "  " + two[3].to_s + "  " + three[3].to_s}
#{one[4].to_s + "  " + two[4].to_s + "  " + three[4].to_s}
#{one[5].to_s + "  " + two[5].to_s + "  " + three[5].to_s}
#{one[6].to_s.ljust(20) + "  " + two[6].to_s.ljust(20) + "  " + three[6].to_s.ljust(20).rstrip}
#{one[7].to_s.ljust(20) + "  " + two[7].to_s.ljust(20) + "  " + three[7].to_s.ljust(0)}
eos
    end

    return str

  end

end
