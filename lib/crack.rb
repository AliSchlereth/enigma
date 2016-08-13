require_relative "tools"
require_relative "final_rotation"

class Crack
  attr_reader :message, :remainder, :crackable_characters

  def initialize(incoming_message)
    @message = incoming_message
  end

  include Tools

  def remainder
    @remainder = message.length % 4
  end

  def crackable_characters
    @crackable_characters = message[-4, 4].split("")
  end

  def rotation_relationship
    if remainder == 3
      # nd.. = d,a,b,c
      d_a_b_c
    elsif remainder == 2
      # nd.. = c,d,a,b
    elsif remainder == 1
      # nd.. = b,c,d,a
    else
      # nd.. = a,b,c,d
    end
  end

  def d_a_b_c
    # Match dabc to nd..
    # Compare indices to get final rotation number
    # subtract offsets from final rotation number
    # Put iniital rotation numbers together to make key
    character = crackable_characters[0]
      # Find current character in character map
      start_index = character_map.index(character)
      # Find end character in character map
     end_index = character_map.index("n")
       #count how many characters between start and end
     d_rotation = start_index - end_index
      #  But what happens if you end up with a neg number?
      # Here we'd have 25-13 = 12 but what if you had 7-13 = -6
      # How does this relate with % numbers
     character = crackable_characters[1]
     start_index = character_map.index(character)
     end_index = character_map.index("d")
     a_rotation = start_index - end_index

     character = crackable_characters[2]
     start_index = character_map.index(character)
     end_index = character_map.index(".")
     b_rotation = start_index - end_index

     character = crackable_characters[-1]
     start_index = character_map.index(character)
     end_index = character_map.index(".")
     c_rotation = start_index - end_index
  end








end

# Each message ends in "..end.."
# % 4 the total length of the incoming encrypted message
# If the remainder is 3 use d.. to help find out the d,a,b,c rotations
# If the remainder is 2 use .. to help find out the c,d,a,b rotations
# If the remainder is 1 use . to help find out the b,c,d,a rotations
# If the remainder is 0 use nd.. to help find out the a,b,c,d rotations
# You can find the offset since you know the date
# You know final rotation - offset = initial rotation
# Use initial rotations to put together the key
