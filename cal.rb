#!/usr/bin/env ruby

require_relative 'lib/month'

month = ARGV[0]
year = ARGV[1]

#Integration Tests
#puts `cal #{month} #{year}`

#Unit Tests


puts Month.new(month, year).to_s
