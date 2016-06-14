require_relative 'key_generator'

class InitialRotation
attr_reader :key

  def initialize(key)
    @key = key
    # key = KeyGenerator.new
  end

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
