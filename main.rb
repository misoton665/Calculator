require 'treetop'

Treetop.load 'calculator'

loop {
  input = STDIN.gets
  tree = CalculatorParser.new.parse(input)
  puts "=> #{tree.eval.to_s}"
}

