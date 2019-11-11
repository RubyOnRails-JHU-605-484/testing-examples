require 'test/unit'
require_relative 'calculator'

class CalculatorTest < Test::Unit::TestCase
  def test_addition
    calc = Calculator.new('test')
    assert_equal 4, calc.add(2, 2)
  end
  def test_subtraction
    calc = Calculator.new('test')
    assert_equal 0, calc.subtract(2, 2)
  end
  def test_division
    calc = Calculator.new('test')
    assert_equal 2, calc.divide(4, 2)
    assert_raise ZeroDivisionError do
      calc.divide(1, 0)
    end
  end
end