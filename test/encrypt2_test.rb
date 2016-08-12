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
    assert_equal ['t', 'h', 'i', 's', 'i', 's', 'a', 'm', 'e', 's', 's', 'a', 'g', 'e'], encrypt.message
  end

  




end
