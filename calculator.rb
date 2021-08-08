require "rspec"

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do
  describe "#add" do
    it "should return the sum of two numbers" do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end

    it "should work with negative numbers" do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
  end

  describe "#subtract" do
    it "should return the difference of two numbers" do
      calculator = Calculator.new
      result = calculator.subtract(50, 14)
      expect(result).to eq(36)
    end
  end

  describe "#multiply" do
    it "should return the product of two numbers" do
      calculator = Calculator.new
      result = calculator.multiply(4, 6)
      expect(result).to eq(24)
    end
  end

  describe "#divide" do
    it "should return the quotient of two numbers" do
      calculator = Calculator.new
      result = calculator.divide(9, 3)
      expect(result).to eq(3)
    end
  end

  describe "#square" do
    it "should return the squared value of a number" do
      calculator = Calculator.new
      result = calculator.square(9)
      expect(result).to eq(81)
    end
  end

  describe "#power" do
    it "should return the number raised by the value of the second number" do
      calculator = Calculator.new
      result = calculator.power(3, 3)
      expect(result).to eq(27)
    end
  end
end
