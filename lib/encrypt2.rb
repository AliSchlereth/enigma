require_relative 'final_rotation'

class Encrypt
attr_reader :message, :count, :position_counter, :character,
            :rotation_counter, :final_rotation, :character_location,
            :new_character

  def initialize(incoming_message, key = nil, date = nil)
    @message = incoming_message.downcase.split("")
    @character = character
    @count = message.length
    @position_counter = 0
    @rotation_counter = 1
    @final_rotation = FinalRotation.new(key, date)
    @character_location = character_location
    @new_character = new_character
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

  def encrypter
    new_message = message.map do |character|
      character_index = identify_character_in_map(character)
      find_new_character(character_index)
    end
    new_message.join
  end

  def identify_character_in_map(character)

    # Find this letter in the character map.
    # @character_location = character_map.index(character)
    character_map.index(character)
  end

  def find_new_character(character_index)
    rotate_now = (character_index + rotation_number) % 39
    # @position_counter += 1
    @new_character = character_map[rotate_now]
  end

  def rotation_number
    # If counter is the first of four then a final rotation
    # If counter is the second of four then b final rotation
    # If counter is the third of four then c final rotation
    # If counter is the fourth of four then d final rotation

    if rotation_counter == 1
      @rotation_counter += 1
      rotate = final_rotation.a_final_rotation
    elsif rotation_counter == 2
      @rotation_counter += 1
      rotate = final_rotation.b_final_rotation
    elsif rotation_counter == 3
      @rotation_counter += 1
      rotate = final_rotation.c_final_rotation
    else
      @rotation_counter = 1
      rotate = final_rotation.d_final_rotation
    end
  end

  def replace_character_in_incoming_message(character, new_character)
    character.gsub!(new_character)
  end


  # Identify the character used in the given message.
  # Find this letter in the character map.
  # Rotate the character map X to select the appropriate character.
  # Replace the character in the original message with new character.
  # Note that spaces are also encrypted.

end
