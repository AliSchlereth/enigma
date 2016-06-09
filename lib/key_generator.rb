require 'pry'

class KeyGenerator
attr_reader :key

  def initialize
    @key = 12345
  end

  # def key_generator
  #   key = Random.new
  #   key = key.rand(10000..100000)
  # end

  def a_rotation
    a_rotation = key.to_s[0,2].to_i
  end

  def b_rotation
    b_rotation = key.to_s[1,2].to_i
  end

  def c_rotation
    c_rotation = key.to_s[2,2].to_i
  end

  def d_rotation
    d_rotation = key.to_s[-2,2].to_i
  end



end
