class BaseConverter
  attr_accessor :number
  attr_accessor :base

  def initialize(number, base)
    @number = number
    @base = base
  end

  def convert
    if base == 2
      base_2_to_10(number)
    elsif base == 10
      base_10_to_2(number)
    else
      return "Provide an integer in base 2 or base 10."
    end
  end

  def base_2_to_10(base_2)
    base_10 = 0
    array = base_2.to_s.split(//).map { |i| i.to_i }.reverse
    array.each_with_index do |v, i|
      if v == 0
        next
      else
        base_10 += 2 ** i
      end
    end
    base_10
  end

  def base_10_to_2(base_10)
    base_2 = []
    value = base_10
    result_remainder = value.divmod(2)
    until result_remainder[0] == 0
      result_remainder = value.divmod(2)
      if result_remainder[1] != 0
        base_2 << 1
      else base_2 << 0
      end
      value = result_remainder[0]
    end
    base_2.join.reverse.to_i
  end
end