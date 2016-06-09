gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/key_generator"
require 'pry'

class KeyGeneratorTest <Minitest::Test

  # def test_key_generator_can_ramdomly_generate_a_five_digit_key
  #   key = KeyGenerator.new
  #   assert_equal 5, key.key_generator.to_s.length
  # end
  #
  # def test_key_generator_key_does_not_use_any_letter_or_special_characters
  #   key = KeyGenerator.new
  #   refute key.key_generator.to_s[/[A-z]/]
  # end

  def test_key_generator_calcualtes_the_A_rotation
    key = KeyGenerator.new
    assert_equal 12, key.a_rotation
  end

  def test_key_generator_calcualtes_the_B_rotation
    key = KeyGenerator.new
    assert_equal 23, key.b_rotation
  end

  def test_key_generator_calcualtes_the_C_rotation
    key = KeyGenerator.new
    assert_equal 34, key.c_rotation
  end

  def test_key_generator_calcualtes_the_D_rotation
    key = KeyGenerator.new
    assert_equal 45, key.d_rotation
  end


end
