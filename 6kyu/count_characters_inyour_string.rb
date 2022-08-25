# TODO:
# The main idea is to count all the occurring characters in a string. If you have a string like aba, then the result should be {'a': 2, 'b': 1}.

# What if the string is empty? Then the result should be empty object literal, {}.

# My Solution
def count_chars(s)
  # your code here
  hash = Hash.new

  s.empty? ? hash : s.chars.group_by { |l| l }.transform_values(&:size)

end

# Alternative

def count_chars(s)
  s.chars.uniq.each_with_object({}) { |c, h| h[c] = s.count(c) }
end

def count_chars(s)
  s.chars.group_by(&:itself).transform_values(&:count)
end
