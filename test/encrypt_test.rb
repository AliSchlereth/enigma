gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/encrypt"
require 'pry'

class EncryptTest <Minitest::Test

  def test_encrypt_takes_a_message
    encrypt = Encrypt.new("This is a message.")
    assert_equal "this is a message.", encrypt.message
  end

  # def test_encrypt_translates_a_string_into_an_array
  #   encrypt = Encrypt.new("This is a message")
  #   assert_equal ['t', 'h', 'i', 's', 'i', 's', 'a', 'm', 'e', 's', 's', 'a', 'g', 'e'], encrypt.message
  # end

  # def test_encrypt_identifies_each_character_in_the_given_message_array
  #   encrypt = Encrypt.new("This message.")
  # end

  def test_encrypt_finds_character_in_the_character_map
    encrypt = Encrypt.new("This message.")
    assert_equal 19, encrypt.identify_character_in_map
  end

  def test_encrypt_uses_the_character_map_location_and_final_rotation_to_swap_out_the_character
    encrypt = Encrypt.new("This message.")
    assert_equal "CHARACTER", encrypt.find_new_character
  end



end
