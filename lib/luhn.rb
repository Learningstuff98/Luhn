require_relative 'class_method_addon'

module Luhn
  def self.valid?(card_number)
    card_number = split_method(card_number).reverse_method.double_digits
    card_number = card_number.remove_nine.sum_digits
    (card_number % 10).zero?
  end

  def self.split_method(card_number)
    card_number = card_number.to_s
    card_number.split('').collect { |i| i.to_i }
  end
end
