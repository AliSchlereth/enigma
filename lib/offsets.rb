require 'pry'

class Offsets
attr_reader :date

  def initialize(date)
    @date = date
  end

  def square_date
    square_date = date**2
  end

  def select_digits
    squared = square_date
    digits = squared.to_s[-4, 4].to_i
  end

  def a_offset
    digits = select_digits
    digits.to_s[0].to_i
  end

  def b_offset
    digits = select_digits
    digits.to_s[1].to_i
  end

  def c_offset
    digits = select_digits
    digits.to_s[2].to_i
  end

  def d_offset
    digits = select_digits
    digits.to_s[-1].to_i
  end


end
