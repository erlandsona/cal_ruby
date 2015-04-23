#!/usr/bin/env ruby

month = ARGV[0]
year = ARGV[1]

output = `cal #{month} #{year}`

puts output
