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
