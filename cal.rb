#!/usr/bin/env ruby

require_relative 'lib/month'

month = ARGV[0]
year = ARGV[1]

output = `cal #{month} #{year}`

puts output

#m = Month.new(month, year)
#
#puts m.to_s
