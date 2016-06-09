gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/offsets"
require 'pry'

class OffsetsTest <Minitest::Test

  def test_offsets_takes_a_key_and_todays_date
    offset = Offsets.new(12345, 110916)
    assert_equal 12345, offset.key
    assert_equal 110916, offset.date
  end

  def test_offset_squares_the_numeric_form_of_todays_date
    offset = Offsets.new(12345, 110916)
    assert_equal 12302359056, offset.square_date
  end

  def test_offset_utilizes_last_four_digits_of_the_squared_date
    offset = Offsets.new(12345, 110916)
    assert_equal 9056, offset.select_digits
  end

  def test_a_offset_equates_to_first_of_last_four_digits
    offset = Offsets.new(12345, 110916)
    assert_equal 9, offset.a_offset
  end

  def test_b_offset_equates_to_second_of_last_four_digits
    offset = Offsets.new(12345, 110916)
    assert_equal 0, offset.b_offset
  end

  def test_c_offset_equates_to_third_of_last_four_digits
    offset = Offsets.new(12345, 110916)
    assert_equal 5, offset.c_offset
  end

  def test_d_offset_equates_to_fourth_of_last_four_digits
    offset = Offsets.new(12345, 110916)
    assert_equal 6, offset.d_offset
  end

  def test_offset_combines_an_offset_with_a_rotation_for_a_final_a_rotation
    offset = Offsets.new(12345, 110916)
    assert_equal 21, offset.a_final_rotation
  end

  def test_offset_combines_an_offset_with_a_rotation_for_a_final_b_rotation
    offset = Offsets.new(12345, 110916)
    assert_equal 23, offset.b_final_rotation
  end

  def test_offset_combines_an_offset_with_a_rotation_for_a_final_c_rotation
    offset = Offsets.new(12345, 110916)
    assert_equal 57, offset.c_final_rotation
  end

  def test_offset_combines_an_offset_with_a_rotation_for_a_final_d_rotation
    offset = Offsets.new(12345, 110916)
    assert_equal 51, offset.d_final_rotation
  end



end
