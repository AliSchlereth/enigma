gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/final_rotation"
require 'pry'

class FinalRotationTest <Minitest::Test

  def test_finalrotation_combines_an_offset_with_a_rotation_for_a_final_a_rotation
    final_rotation = FinalRotation.new(12345, 110916)
    assert_equal 21, final_rotation.a_final_rotation
  end

  def test_finalrotation_combines_an_offset_with_a_rotation_for_a_final_b_rotation
    final_rotation = FinalRotation.new(12345, 110916)
    assert_equal 23, final_rotation.b_final_rotation
  end

  def test_finalrotation_combines_an_offset_with_a_rotation_for_a_final_c_rotation
    final_rotation = FinalRotation.new(12345, 110916)
    assert_equal 39, final_rotation.c_final_rotation
  end

  def test_finalrotation_combines_an_offset_with_a_rotation_for_a_final_d_rotation
    final_rotation = FinalRotation.new(12345, 110916)
    assert_equal 51, final_rotation.d_final_rotation
  end



end
