# TODO:
# Write a function that accepts an integer n and a string s as parameters, and returns a string of s repeated exactly n times.

# Examples (input -> output)
# 6, "I"     -> "IIIIII"
# 5, "Hello" -> "HelloHelloHelloHelloHello"

# My Solution:
def repeat_str (n, s)
  s * n
 end

# Alternative:
def repeat_str (n, s)
  "#{s * n}"
