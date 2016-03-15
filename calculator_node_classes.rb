module Calculator
  
  class SyntaxNode < Treetop::Runtime::SyntaxNode; end

  module CalculatorNode

    def SyntaxNode.isEvaluable?
      self.method_defined?(:eval)
    end

  end

  class BinaryOperation < SyntaxNode
    include CalculatorNode

    def eval(env={})
      tail.elements.inject(head.eval(env)) { |value, element|
        element.operator.apply(value, element.operand.eval(env))
      }
    end
  end
end
