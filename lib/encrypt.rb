require_relative 'final_rotation'

class Encrypt
attr_reader :message, :count, :position_counter, :character,
            :rotation_counter, :final_rotation, :character_location,
            :new_character

  def initialize(incoming_message, key = nil, date = nil)
    @message = incoming_message.downcase!
    # @message = message.split(%r{\s*})
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

  def rotater
    identify_character
    identify_character_in_map
    find_new_character
    replace_character_in_incoming_message
  end

  def identify_character
    # Identify the character used in the given message.
    # Position Counter is the position of character in the incoming message
    @character = message[position_counter]
  end

  def identify_character_in_map
    # Find this letter in the character map.
    identify_character
    @character_location = character_map.index(@character)

  end

  def find_new_character
    rotate_now = (identify_character_in_map + rotation_number) % 39
    @position_counter += 1
    @new_character = character_map[rotate_now]
    binding.pry
  end

  def rotation_number
    # identify_character_in_map
    # This gives you the location of the character on the character map
    # by calling character_location
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

    def replace_character_in_incoming_message
      if position_counter <= count
        binding.pry
        @message = message.gsub!(@character, @new_character)
      else
        message
      end
    end

  end

    # If counter is the first of four then a final rotation
    # If counter is the second of four then b final rotation
    # If counter is the third of four then c final rotation
    # If counter is the fourth of four then d final rotation







  # Identify the character used in the given message.
  # Find this letter in the character map.
  # Rotate the character map X to select the appropriate character.
  # Replace the character in the original message with new character.
  # Note that spaces are also encrypted.

end
