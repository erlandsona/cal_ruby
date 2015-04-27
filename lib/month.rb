require_relative '../lib/day'

class Month < Day
  attr_reader :month, :year

  def initialize(month, year)
    @month = month
    @year = year
  end

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
    days_of_month = ""

    day = Day.new(1, month, year)
    first_day_of_month = day.zellers(1, month, year)
    str = <<-eos
#{header.center(20).rstrip}
Su Mo Tu We Th Fr Sa
eos

    if first_day_of_month == 0
      days_of_month = days_of_month.rjust(18)
    elsif first_day_of_month == 2
      days_of_month =days_of_month.rjust(3)
    elsif first_day_of_month == 3
      days_of_month = days_of_month.rjust(6)
    elsif first_day_of_month == 4
      days_of_month = days_of_month.rjust(9)
    elsif first_day_of_month == 5
      days_of_month = days_of_month.rjust(12)
    elsif first_day_of_month == 6
      days_of_month = days_of_month.rjust(15)
    end

    week_length = 0

    month_length.times do |i|
      if days_of_month.length > 20
        str << days_of_month + "\n"
        days_of_month = ""
        week_length += 1
      end
      i < 9 ? days_of_month << " #{i + 1} " :
      days_of_month << "#{i + 1} "
    end
    if week_length == 4
      str << days_of_month + "\n\n"
    else
      str << days_of_month + "\n"
    end
    return str.gsub(/\s\n/, "\n")
  end
end

