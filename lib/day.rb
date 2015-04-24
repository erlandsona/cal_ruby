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
  # - h is the day of the week (0 = Saturday, 1 = Sunday, 2 = Monday, ..., 6 = Friday)
  # - q is the day of the month (1..31)
  # - m is the month (3 = March, 4 = April, 5 = May, ..., 14 = February)
  # - k the year of the century (year % 100).
  # - j is the zero-based century (actually (year/100).floor) For example, the zero-based centuries for 1995 and 2000 are 19 and 20 respectively (to not be confused with the common ordinal century enumeration which indicates 20th for both cases).
  #
  # Check out the wikipedia article for more info...
  # http://en.wikipedia.org/wiki/Zeller's_congruence
  #
  ###########################

  def zellers(q, m, k, j)
    h = (q + ((13 * (m + 1)) / 5).floor + k + (k / 4).floor + (j / 4).floor + (5 * j)) % 7 
  end

end
