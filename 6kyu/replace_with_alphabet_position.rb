# In this kata you are required to, given a string, replace every letter with its position in the alphabet.

# If anything in the text isn't a letter, ignore it and don't return it.

# "a" = 1, "b" = 2, etc.

# Example
# alphabet_position("The sunset sets at twelve o' clock.")
# Should return "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11" ( as a string )


# My Failed Attempt:
def alphabet_position(text)
  only_letters = text.delete(" ").gsub(/[^A-Za-z0-9 ]/, '') # => delete spaces and remove all non alphabet character
  string_array = only_letters.downcase.chars # => downcase letters and separate letters individually to array
  letter_index = ("a".."z").each.with_index(1).to_h # => assign all alphabet letters with respective index position

  string_array.map { |l| letter_index[l] }.join(" ") # => match string letters to value of has
end



# Beautiful Solution:
def alphabet_position(text)
  # Delete everything but letters from the string
  only_letters = text.delete("^a-zA-Z")

  # Make every letter in the new string lowercase
  lower_case = only_letters.downcase

  # Convert each letter to byte position
  # Note: byte positions are sequential - subtract 96 from
  # each value and you get their position in the alphabet
  byte_value = lower_case.bytes

  # Produce new array using .map with alphabet position correct
  mapped_text = byte_value.map { |ltr| ltr - 96 }

  # Return final answer
  final_answer = mapped_text.join(' ')
end



# N number of glasses to contain K liters of water
# K liters of water


