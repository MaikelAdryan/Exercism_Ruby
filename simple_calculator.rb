# https://exercism.org/tracks/ruby/exercises/simple-calculator
# Simple Calculator

class SimpleCalculator
  class UnsupportedOperation < StandardError
  end
  ALLOWED_OPERATIONS = ["+", "/", "*"].freeze

  def self.calculate(first_operand, second_operand, operation)
    begin
      raise UnsupportedOperation.new if not ALLOWED_OPERATIONS.include? operation
      raise ArgumentError.new if first_operand.class == String or second_operand.class == String
      raise ZeroDivisionError.new("Division by zero is not allowed.") if second_operand == 0 && operation == "/"
      result = eval first_operand.to_s + operation + second_operand.to_s
      return "#{first_operand.to_s} #{operation} #{second_operand} = #{result}"
    rescue ZeroDivisionError => error
      error.message
    end
  end
end
