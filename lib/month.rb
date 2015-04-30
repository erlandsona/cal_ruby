require_relative '../lib/day'

class Month
  attr_reader :month, :year, :first_day_of_month
  COLUMN_WIDTH = 20
  PADDING = 3
  MONTHS = %w[nil January February March April May June July August September October November December]

  def initialize(month, year)
    @month = month
    @year = year
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
    header = MONTHS[month] + " #{year}"

    str = <<-eos
#{header.center(20).rstrip}
Su Mo Tu We Th Fr Sa
eos

    days_of_month = String.new.rjust(first_day_of_month * PADDING)
    num_of_weeks = 1

    1.upto(num_of_days) do |i|
      date = i.to_s
      obj = {true => date.center(PADDING), false => date.ljust(PADDING)}
      if days_of_month.length > COLUMN_WIDTH
        str << days_of_month.rstrip + "\n"
        days_of_month = ""
        num_of_weeks += 1
      end
      days_of_month << obj[i <= 9]
    end

    num_of_newlines = {true => "\n" * 3, false => "\n" * 2}
    return str << days_of_month.rstrip + num_of_newlines[num_of_weeks <= 4] if num_of_weeks <= 5
    str << days_of_month.rstrip + "\n"
  end
end

