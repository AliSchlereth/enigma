gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/crack"
require 'pry'


class CrackTest <Minitest::Test

  def test_crack_checks_how_many_letters_to_analyze_for_cracking
    crack = Crack.new("b5i5s0e5axgqttvezyv.")
    assert_equal 0, crack.remainder
  end

  def test_crack_isolates_the_last_4_characters_in_a_message
    crack = Crack.new("b5i5s0e5axgqttvezyv.")
    assert_equal ["z", "y", "v", "."], crack.crackable_characters
  end

  # def test_crack_uses_the_remainder_to_determine_relationship_of_characters_to_rotation_order
  #   crack = Crack.new("tvezyv.")
  #   assert_equal "d_a_b_c", crack.rotation_relationship
  # end

end
