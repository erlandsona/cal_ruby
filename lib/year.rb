require_relative '../lib/day'
require_relative '../lib/month'




class Year

  attr_reader :year

  def initialize(year)
    @year = year
  end

  def to_s
    header = "#{year}".center(62).rstrip + "\n"
    jan = Month.new(1, year).to_s.split("\n")
    feb = Month.new(2, year).to_s.split("\n")
    mar = Month.new(3, year).to_s.split("\n")
    apr = Month.new(4, year).to_s.split("\n")
    may = Month.new(5, year).to_s.split("\n")
    jun = Month.new(6, year).to_s.split("\n")
    jul = Month.new(7, year).to_s.split("\n")
    aug = Month.new(8, year).to_s.split("\n")
    sep = Month.new(9, year).to_s.split("\n")
    oct = Month.new(10, year).to_s.split("\n")
    nov = Month.new(11, year).to_s.split("\n")
    dec = Month.new(12, year).to_s.split("\n")

    str = <<-eos
#{header}
#{jan[0][0..-5].strip.center(20)}#{feb[0][0..-5].strip.center(24)}#{mar[0][0..-5].strip.center(20).rstrip}
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
#{jan[2]}  #{feb[2]}  #{mar[2]}
#{jan[3]}  #{feb[3]}  #{mar[3]}
#{jan[4]}  #{feb[4]}  #{mar[4]}
#{jan[5]}  #{feb[5]}  #{mar[5]}
#{jan[6].ljust(20)}  #{feb[6].ljust(20)}  #{mar[6].ljust(17)}
#{jan[7]}                                       
#{apr[0][0..-5].strip.center(20)}#{may[0][0..-5].strip.center(24)}#{jun[0][0..-5].strip.center(20).rstrip}
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
#{apr[2]}  #{may[2]}  #{jun[2]}
#{apr[3]}  #{may[3]}  #{jun[3]}
#{apr[4]}  #{may[4]}  #{jun[4]}
#{apr[5]}  #{may[5]}  #{jun[5]}
#{apr[6]}  #{may[6].ljust(20)}  #{jun[6]}
#{apr[7]}                                          
#{jul[0][0..-5].strip.center(20)}#{aug[0][0..-5].strip.center(24)}#{sep[0][0..-5].strip.center(20).rstrip}
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
#{jul[2]}  #{aug[2]}  #{sep[2]}
#{jul[3]}  #{aug[3]}  #{sep[3]}
#{jul[4]}  #{aug[4]}  #{sep[4]}
#{jul[5]}  #{aug[5]}  #{sep[5]}
#{jul[6].ljust(20)}  #{aug[6].ljust(20)}  #{sep[6].ljust(20)}
#{jul[7]}                                       
#{oct[0][0..-5].strip.center(20)}#{nov[0][0..-5].strip.center(24)}#{dec[0][0..-5].strip.center(20).rstrip}
Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa  Su Mo Tu We Th Fr Sa
#{oct[2]}  #{nov[2]}  #{dec[2]}
#{oct[3]}  #{nov[3]}  #{dec[3]}
#{oct[4]}  #{nov[4]}  #{dec[4]}
#{oct[5]}  #{nov[5]}  #{dec[5]}
#{oct[6].ljust(20)}  #{nov[6].ljust(20)}  #{dec[6].ljust(20)}
#{dec[7].rjust(46)}
eos
    return str
  end

end

