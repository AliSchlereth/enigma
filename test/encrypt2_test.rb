gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/encrypt2"
require 'pry'

class EncryptTest <Minitest::Test

  # def test_encrypt_takes_a_message
  #   encrypt = Encrypt.new("This is a message.")
  #   assert_equal "this is a message.", encrypt.message
  # end

  def test_encrypt_translates_a_string_into_an_array
    encrypt = Encrypt.new("This is a message")
    assert_equal ['t', 'h', 'i', 's', ' ', 'i', 's', ' ', 'a', ' ', 'm', 'e', 's', 's', 'a', 'g', 'e'], encrypt.message
  end

  def test_encrypt_finds_character_in_the_character_map
    encrypt = Encrypt.new("This message.")
    assert_equal 19, encrypt.identify_character_in_map('t')
  end

  def test_encrypt_rotates_by_a_final_rotation
    encrypt = Encrypt.new("This message.", 12345, 110916)
    assert_equal 21, encrypt.rotation_number
  end

  def test_encrypt_rotates_by_b_final_rotation
    encrypt = Encrypt.new("This message.", 12345, 110916)
    assert_equal 21, encrypt.rotation_number
    assert_equal 23, encrypt.rotation_number
  end

  def test_encrypt_rotates_by_a_final_rotation_on_5th_try
    encrypt = Encrypt.new("This message.", 12345, 110916)
    assert_equal 21, encrypt.rotation_number
    assert_equal 23, encrypt.rotation_number
    assert_equal 39, encrypt.rotation_number
    assert_equal 51, encrypt.rotation_number
    assert_equal 21, encrypt.rotation_number
  end

  def test_encrypt_uses_the_character_map_location_and_final_rotation_to_identify_new_number
    encrypt = Encrypt.new("This message.", 12345, 110916)
    assert_equal "b", encrypt.find_new_character(19)
    assert_equal "5", encrypt.find_new_character(7)
  end

  def test_encrypt_rotates_through_to_replace_each_letter_of_the_message
    encrypt = Encrypt.new("This message.", 12345, 110916)
    assert_equal "b5i5s0e5axgqt", encrypt.encrypter
  end





end
