require_relative '../lib/day'

class Month < Day
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
  end

  # This to_s method is based on a fixed width font and puts out a 20 column wide month. All "Magic numbers are based on the width of the string:)"

  #def to_s
    #months = %w[January February March April May June July August September October November December]
    #header = months[month - 1] + " #{year}"
    #days_of_month = <<EOS
 #1  2  3  4  5  6  7
 #8  9 10 11 12 13 14
#15 16 17 18 19 20 21
#22 23 24 25 26 27 28
#29 30 31
#EOS
    #str = <<EOS
##{header.center(20).rstrip}
#Su Mo Tu We Th Fr Sa
##{days_of_month}
#EOS
  #end


  def to_s
    months = %w[January February March April May June July August September October November December]
    header = months[month - 1] + " #{year}"

    month_lengths = {
       1 => 31,
       2 => year % 4 == 0 ? 29 : 28,
       3 => 31,
       4 => 30,
       5 => 31,
       6 => 30,
       7 => 31,
       8 => 31,
       9 => 30,
      10 => 31,
      11 => 30,
      12 => 31
    }

    month_length = month_lengths[month]
    days_of_month = ''

    day = Day.new(1, month, year)
    first_day_of_month = day.zellers(1, month, year)
    str = <<-eos
#{header.center(20).rstrip}
Su Mo Tu We Th Fr Sa
eos

    #first_day_of_month.times do |i|
      #days_of_month << "  " 
    #end
    month_length.times do |i|
      if days_of_month.length > 20
        str << days_of_month + "\n"
        days_of_month = ''
      end
      i < 9 ? days_of_month << " #{i + 1} " :
      days_of_month << "#{i + 1} "
    end
    str << days_of_month + "\n\n"
    return str.gsub(/\s\n/, "\n")
  end
end

