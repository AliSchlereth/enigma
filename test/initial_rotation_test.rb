gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/initial_rotation"
require 'pry'

class InitialRotationTest <Minitest::Test

  def test_intial_rotation_calcualtes_the_A_rotation
    rotation = InitialRotation.new(12345)
    assert_equal 12, rotation.a_rotation
  end

  def test_initial_rotation_calcualtes_the_B_rotation
    rotation = InitialRotation.new(12345)
    assert_equal 23, rotation.b_rotation
  end

  def test_initial_rotation_calcualtes_the_C_rotation
    rotation = InitialRotation.new(12345)
    assert_equal 34, rotation.c_rotation
  end

  def test_key_generator_calcualtes_the_D_rotation
    rotation = InitialRotation.new(12345)
    assert_equal 45, rotation.d_rotation
  end



end
