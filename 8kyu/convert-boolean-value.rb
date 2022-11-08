# TODO
# Complete the method that takes a boolean value and return a "Yes" string for true, or a "No" string for false.

# My Solution:
def bool_to_word bool
  if bool == true
    return 'Yes'
 else
    return 'No'
 end
end

# Alternative Ternary:
def bool_to_word bool
  bool ? 'Yes' : 'No'
end
