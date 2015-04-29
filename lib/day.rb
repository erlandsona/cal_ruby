class Day

  attr_reader :day, :month, :year

  def initialize(d, m, y)
    @day   = d
    @month = m
    @year  = y
  end

  ###################################
  #
  #The following method implements Zeller's Congruence an algorithm to determin what day of the week it is.
  #
  #
  # - h is the day of the week (0 = Sunday, 1 = Monday, 2 = Tuesday, ..., 6 = Saturday)
  #
  # Check out the wikipedia article for more info...
  # http://en.wikipedia.org/wiki/Zeller's_congruence
  #
  ###########################

  def zellers
    @month += 12 and @year -= 1 if @month <= 2
    h = (@day + ((26 * (@month + 1)) / 10).floor + @year + (@year / 4).floor + (6 * (@year/100).floor) + (@year/400).floor) % 7
    d = ((h + 6) % 7)
  end


end
