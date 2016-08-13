gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/decrypt"
require 'pry'

class DecryptTest <Minitest::Test

  def test_decrypt_translates_a_string_into_an_array
    decrypt = Decrypt.new("b5i5s0e5axgqt")
    assert_equal ["b", "5", "i", "5", "s", "0", "e", "5", "a", "x", "g", "q", "t"], decrypt.message
  end

  def test_decrypt_finds_character_in_the_character_map
    decrypt = Decrypt.new("b5i5s0e5axgqt")
    assert_equal 19, decrypt.identify_character_in_map('t')
  end

  def test_decrypt_rotates_by_a_final_rotation
    decrypt = Decrypt.new("b5i5s0e5axgqt", 12345, 110916)
    assert_equal 21, decrypt.rotation_number
  end

  def test_decrypt_rotates_by_b_final_rotation
    decrypt = Decrypt.new("b5i5s0e5axgqt", 12345, 110916)
    assert_equal 21, decrypt.rotation_number
    assert_equal 23, decrypt.rotation_number
  end

  def test_decrypt_rotates_by_a_final_rotation_on_5th_try
    decrypt = Decrypt.new("b5i5s0e5axgqt", 12345, 110916)
    assert_equal 21, decrypt.rotation_number
    assert_equal 23, decrypt.rotation_number
    assert_equal 39, decrypt.rotation_number
    assert_equal 51, decrypt.rotation_number
    assert_equal 21, decrypt.rotation_number
  end

  def test_Decrypt_uses_the_character_map_location_and_final_rotation_to_identify_new_number
    decrypt = Decrypt.new("b5i5s0e5axgqt", 12345, 110916)
    assert_equal "t", decrypt.find_new_character(1)
    assert_equal "h", decrypt.find_new_character(30)
  end

  def test_decrypt_rotates_through_to_replace_each_letter_of_the_message
    decrypt = Decrypt.new("b5i5s0e5axgqt", 12345, 110916)
    assert_equal "this message.", decrypt.decrypter
  end
  

end
