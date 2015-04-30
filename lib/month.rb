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

  def num_of_days
    thirty_day_mo = [4, 6, 9, 11].include?(month)
    leap_cases = {true => 29, false => 28}
    month_length = 31
    month_length = 30 if thirty_day_mo
    month_length = leap_cases[is_leap_year?] if month == 2
    return month_length
  end

  def to_s
    header = (MONTHS[month] + " #{year}").center(20).rstrip
    str = <<-eos
#{header}
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

    num_of_newlines = String.new
    num_of_newlines += "\n" and num_of_weeks += 1 while num_of_weeks <= 6
    str << days_of_month.rstrip + num_of_newlines
  end
end

