class PositiveBitCounter
  def count(input)
    validate_range(input)
    reverse_binary_array = input.to_s(2).reverse.split("")
    result = []
    reverse_binary_array.each_with_index { |element, i| result.push(i) if element == '1' }
    result.unshift(result.size)
  end

  protected

  def validate_range(input)
    raise(RangeError) if input < 0
  end
end

class RangeError < StandardError
  def initialize
    message = "The input should be a possitive integer."
    super(message)
  end
end
