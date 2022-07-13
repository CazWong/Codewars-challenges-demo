# Your task is to create the functionisDivideBy (or is_divide_by) to check if an integer number is divisible by both integers a and b.

# A few cases:


# (-12, 2, -6)  ->  true
# (-12, 2, -5)  ->  false

# My solution:

def is_divide_by(number, a, b)
  # good luck
  number % a == 0 && number % b == 0
end
