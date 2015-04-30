require_relative '../lib/day'

class Month
  attr_reader :month, :year, :months, :month_lengths, :first_day_of_month
  COLUMN_WIDTH = 20
  PADDING = 3

  def initialize(month, year)
    @month = month
    @year = year
    @months = %w[January February March April May June July August September October November December]
    @first_day_of_month = Day.new(1, month, year).zellers
  end

  def is_leap_year?
    is_leap_year = year % 400 == 0 or (year % 4 == 0 and year % 100 != 0)
  end

  def thirty_day_mo?
    [4, 6, 9, 11].include?(month)
  end

  def num_of_days
    leap_cases = {true => 2, false => 3}
    month_length = 31
    month_length -= 1 if thirty_day_mo?
    month_length -= leap_cases[is_leap_year?] if month == 2
    return month_length
  end


  def to_s
    header = months[month - 1] + " #{year}"

    str = <<-eos
#{header.center(20).rstrip}
Su Mo Tu We Th Fr Sa
eos

    days_of_month = ""
    days_of_month = days_of_month.rjust(first_day_of_month * PADDING)
    week_length = 0

    num_of_days.times do |i|
      if days_of_month.length > COLUMN_WIDTH
        str << days_of_month.rstrip + "\n"
        days_of_month = ""
        week_length += 1
      end
      i < 9 ? days_of_month << " #{i + 1} " :
      days_of_month << "#{i + 1} "
    end
    if week_length < 4
      return str << days_of_month.rstrip + "\n\n\n"
    end
    if week_length == 4
      return str << days_of_month.rstrip + "\n\n"
    end
    str << days_of_month.rstrip + "\n"
  end
end

