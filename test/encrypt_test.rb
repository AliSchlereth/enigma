gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative "../lib/encrypt"
require 'pry'

class EncryptTest <Minitest::Test

  def test_encrpyt_can_ramdomly_generate_a_five_digit_key
    encrypt = Encrypt.new
    assert_equal 5, encrypt.key_generator.to_s.length
  end

  def test_encrypt_key_does_not_use_any_letter_or_special_characters
    encrypt = Encrypt.new
    refute encrypt.key_generator.to_s.include?(/^[A-Za-z]=$/)
  end

end
