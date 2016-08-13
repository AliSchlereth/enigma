module Tools

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

  def identify_character_in_map(character)
    # Find this letter in the character map.
    # @character_location = character_map.index(character)
    character_map.index(character)
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

end
