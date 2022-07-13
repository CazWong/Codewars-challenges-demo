# Simple, remove the spaces from the string, then return the resultant string.

# My Solution:

def no_space(x)
  # code go here
  x.split.join
end

def no_space(x)
  x.delete(' ')
end
