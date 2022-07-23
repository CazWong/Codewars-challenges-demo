# In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.

# Examples
# high_and_low("1 2 3 4 5")  # return "5 1"
# high_and_low("1 2 -3 4 5") # return "5 -3"
# high_and_low("1 9 3 4 -5") # return "9 -5"

# My Solution:

def high_and_low(numbers)
  #your code here
  # 1. Turn string of numbers into array - .split
  nums_array = numbers.split
  # 2. Iterate through array and convert each element to integer - .map
  nums_array.map!(&:to_i)
  # 3. Interpolate highest and lowest number in a string - .max and .min and
  return "#{nums_array.max} #{nums_array.min}"
end

# Best Practice Solution:

def high_and_low(numbers)
  numbers.split.map(&:to_i).minmax.reverse.join(' ')
end
