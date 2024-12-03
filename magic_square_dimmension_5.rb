class MagicSquareDimmension5
  attr_accessor :first_value, :square, :total

  def initialize(total)
    @total = total
    @first_value = calculate_first_number(total)
    fill_up_square(first_value)
  end

  def calculate_first_number(total)
    (total - 60) / 5
  end

  def fill_up_square(first_value)
    @square = []
  end

  def to_s
    puts 'Dimmension 5x5'
    puts "Total sum = #{total}"
    puts "First number = #{first_value}"
    puts "Square = #{square}"
  end
end