require_relative 'final_rotation'
require_relative 'tools'

class Decrypt
attr_reader :message, :rotation_counter, :final_rotation,
            :new_character

  def initialize(incoming_message, key = nil, date = nil)
    @message = incoming_message.downcase.split("")
    @rotation_counter = 1
    @final_rotation = FinalRotation.new(key, date)
    @new_character = new_character
  end

  include Tools

  def decrypter
    new_message = message.map do |character|
      character_index = identify_character_in_map(character)
      find_new_character(character_index)
    end
    new_message.join
  end

  def find_new_character(character_index)
    new_index = (character_index - rotation_number) % 39
    # @position_counter += 1
    @new_character = character_map[new_index]
  end

  # Identify the character used in the given message.
  # Find this letter in the character map.
  # Rotate the character map X to select the appropriate character.
  # Replace the character in the original message with new character.
  # Note that spaces are also encrypted.

end
