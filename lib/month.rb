require_relative '../lib/day'

class Month
  attr_reader :month, :year, :months, :month_lengths, :first_day_of_month
  COLUMN_WIDTH = 20
  PADDING = 3

  def initialize(month, year)
    @month = month
    @year = year
    @months = %w[January February March April May June July August September October November December]
    @month_lengths = {
       1 => 31,
       2 => year % 400 == 0 ? 29 : year % 4 == 0 && year % 100 != 0 ? 29 : 28,
       3 => 31, 4 => 30, 5 => 31, 6 => 30, 7 => 31, 8 => 31,
       9 => 30, 10 => 31, 11 => 30, 12 => 31
    }
    @first_day_of_month = Day.new(1, month, year).zellers
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

    month_lengths[month].times do |i|
      if days_of_month.length > COLUMN_WIDTH
        str << days_of_month.rstrip + "\n"
        days_of_month = ""
        week_length += 1
      end
      i < 9 ? days_of_month << " #{i + 1} " :
      days_of_month << "#{i + 1} "
    end
    if week_length < 4
      str << days_of_month.rstrip + "\n\n\n"
    elsif week_length == 4
      str << days_of_month.rstrip + "\n\n"
    else
      str << days_of_month.rstrip + "\n"
    end
  end
end

