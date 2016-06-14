require_relative 'offsets'
require_relative 'initial_rotation'
require_relative 'key_generator'

class FinalRotation
  attr_reader :initial_rotation, :offsets

  def initialize(key, date)
    @key = KeyGenerator.new
    # @key = key
    @offsets = Offsets.new(date)
    @initial_rotation = InitialRotation.new(key)
  end

  def a_final_rotation
    initial_rotation.a_rotation + offsets.a_offset
  end

  def b_final_rotation
    initial_rotation.b_rotation + offsets.b_offset
  end

  def c_final_rotation
    initial_rotation.c_rotation + offsets.c_offset
  end

  def d_final_rotation
    initial_rotation.d_rotation + offsets.d_offset
  end

end
