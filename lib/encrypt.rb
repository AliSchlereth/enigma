require_relative 'final_rotation'

class Encrypt
attr_reader :message, :count, :counter, :character

  def initialize(incoming_message)
    @message = incoming_message.downcase!
    # @message = message.split(%r{\s*})
    @character = character
    @count = message.length
    @counter = 0
  end

  def character_map
    [ "a", 'b', 'c', 'd', 'e',
      'f', 'g', 'h', 'i', 'j',
      'k', 'l', 'm', 'n', 'o',
      'p', 'q', 'r', 's', 't',
      'u', 'v', 'w', 'x', 'y',
      'z', '1', '2', '3', '4',
      '5', '6', '7', '8', '9',
      '0', ' ', '.', ',']
  end

  def rotater
    identify_character
    identify_character_in_map
    find_new_character
  end

  def identify_character
    # Identify the character used in the given message.
    @character = message[counter]
  end

  def identify_character_in_map
    # Find this letter in the character map.
    identify_character
    character_location = character_map.index(@character)
  end

  def find_new_character
    new_character = character_map.index(character_location + rotation_number)
  end

  def rotation_number
    count 
  end






  # Identify the character used in the given message.
  # Find this letter in the character map.
  # Rotate the character map X to select the appropriate character.
  # Replace the character in the original message with new character.
  # Note that spaces are also encrypted.

end
