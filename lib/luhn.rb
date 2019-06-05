class Array
  def double_digits
    map.with_index { |num, index| index.odd? ? num * 2 : num }
  end

  def remove_nine
    map { |num| num >= 10 ? num - 9 : num }
  end

  def reverse_method
    reverse
  end

  def sum_digits
    sum
  end
end

module Luhn
  def self.is_valid?(card_number)
    card_number = split_method(card_number).reverse_method.double_digits.remove_nine.sum_digits
    card_number % 10 == 0
  end

  def self.split_method(card_number)
    card_number = card_number.to_s
    card_number = card_number.split('').collect{|i| i.to_i}
  end
end
