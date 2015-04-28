#!/usr/bin/env ruby

require_relative 'lib/month'
require_relative 'lib/year'

month = ARGV[0].to_i
year = ARGV[1].to_i

#Integration Tests
#puts `cal #{month} #{year}`

#Unit Tests
if month.to_s.length == 4 and year.zero?
  puts Year.new(month).to_s
else
  if year < 1800 or year > 3000
    puts <<-eos
Date not in accepatble format/range
./cal.rb [mm] [yyyy]
  eos
  else
    puts Month.new(month, year).to_s
  end
end
