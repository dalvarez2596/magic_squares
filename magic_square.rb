class MagicSquare
  # this is for 3x 3 dimmensions
  attr_accessor :first_value, :square

  def initialize(total)
    @first_value = calculate_first_number(total)
    fill_up_square(first_value)
  end

  def calculate_first_number(total)
    (total - 12) / 3
  end

  def fill_up_square(first_value)
    @square = []
    square << [first_value + 7, first_value, first_value + 5]
    square << [first_value + 2, first_value + 4, first_value + 6]
    square << [first_value + 3, first_value + 8, first_value + 1]
  end

  def to_s
    "Value #{first_value}, Square = #{square} "
  end
end

magic_square = MagicSquare.new(9)
magic_square2 = MagicSquare.new(6)
puts magic_square
puts magic_square2