#incluir lo de magic square, hace lo mimso aqui dimmension 4 * 4

class MagicSquareDimmension4x4
  attr_accessor :first_value, :square, :total

  def initialize(total)
    @total = total
    @first_value = calculate_first_number(total)
    fill_up_square(first_value)
  end

  def calculate_first_number(total)
    (total - 30) / 4
  end

  def fill_up_square(first_value)
    @square = []
    square << [first_value + 15, first_value + 1, first_value + 2, first_value + 12]
    square << [first_value + 4, first_value + 10, first_value + 9, first_value + 7]
    square << [first_value + 8, first_value + 6, first_value + 5, first_value + 11]
    square << [first_value + 3, first_value + 13, first_value + 14, first_value]
  end

  def to_s
    puts 'Dimmension 4x4'
    puts "Total sum = #{total}"
    puts "First number = #{first_value}"
    puts "Square = #{square}"
  end
end

magic_square = MagicSquareDimmension4x4.new(-2)
magic_square.to_s