# frozen_string_literal: true

def add(*numbers)
  numbers.inject(0) {|sum, number| sum + number} # What is inject?
end

def subtract(*numbers)
  current_result = numbers.shift # what is shift?
  numbers.inject(current_result) { |current_result, number| current_result - number }
end

def calculate(*arguments)
  options[:add] = true if options.empty?
  return add(*arguments) if options[:add]
  return subtract(*arguments) if options[:subtract]
end
