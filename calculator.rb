require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two, number_three)
    return number_one * number_two * number_three
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def sqaure(number)
    return square * square
  end

  def power(number, exponent)
    return number ** exponent
  end
end


# driver code
# calculator = Calculator.new

# p "test the add method:"

# if calculator.add(1, 3) == 4
#   p "the test passed"
# else
#   p "the test failed"
# end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
  end 

  describe '#subtract' do 
    it 'should return the difference of two negative numbers' do
      calculator = Calculator.new
      result = calculator.subtract(-1, -3)
      expect(result).to eq(2)
    end
  end
# end 

  describe '#multiply' do 
    it 'should return the product of three numbers' do
      calculator = Calculator.new 
      result = calculator.multiply(3,3,3)
      expect(result).to eq(27)
    end 
  end 


  describe '#power' do 
    it 'should return the number to an exponent' do
    calculator = Calculator.new
    result = calculator.power(4,6)
    expect(result).to eq(4096)
  end 
end 




end 



