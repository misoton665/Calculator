require 'treetop'
require './calculator_node_classes'

Treetop.load 'calculator'

loop {
  print "$> "
  input = STDIN.gets
  tree = CalculatorParser.new.parse(input)
  puts "=> #{tree.eval.to_s}"
}

