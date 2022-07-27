# An isogram is a word that has no repeating letters, consecutive or non-consecutive. Implement a function that determines whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case.

#   Example: (Input --> Output)

#   "Dermatoglyphics" --> true
#   "aba" --> false
#   "moOse" --> false (ignore letter case)

# My Solution:
def is_isogram(string)
  #your code here
  # 1. separate each letter of word and put in an array - .chars (returns array of individual characters)
  # 2. remove duplicates of letters - .uniq (new array with removed duplicates)
  # 3. compare the new array of removed duplicates with original - ==
  # 4. if the original is not the same as the array.uniq then return false.
  # 5. Otherwise return true
  string.downcase.chars.uniq == string.downcase.chars
end

def is_isogram(string)
string.downcase.chars.uniq.size == string.size
end
