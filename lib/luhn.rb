module Luhn
  def self.is_valid?(card_number)
    card_number = split_method(card_number)
    card_number = reverse_method(card_number)
    card_number = double_digits(card_number)
    card_number = remove_nine(card_number)
    card_number = sum_digits(card_number)
    card_number % 10 == 0
  end

  def self.split_method(card_number)
    card_number = card_number.to_s
    card_number = card_number.split('').collect{|i| i.to_i}
  end

  def self.reverse_method(num_array)
    num_array = num_array.reverse
  end

  def self.double_digits(num_array)
    num_array.map.with_index do |num, index|
      if index.odd?
        num *= 2
      else
        num
      end
    end
  end

  def self.remove_nine(num_array)
    num_array.map do |num|
      if num >= 10
        num -= 9
      else
        num
      end
    end
  end

  def self.sum_digits(num_array)
    num_array.sum
  end
end
