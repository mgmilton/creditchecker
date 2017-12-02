require 'pry'
class CreditCheck
  attr :double, :sum, :total_sum

  def card_number_getter
    puts "Let's check a card number's validity"
    card_number = gets.chomp.to_s
    card_digits = card_number.reverse.chars
  end
end

number = CreditCheck.new(7189476916723,0,79927398713)
p "Number: #{number.inspect}"
