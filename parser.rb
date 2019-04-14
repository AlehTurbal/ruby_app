#!/usr/bin/env ruby

require_relative 'lib/log_calculator'

log_file = LogCalculator.new(ARGV[0])

puts log_file.page_visits
puts log_file.page_views
