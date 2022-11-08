# When provided with a number between 0-9, return it in words.

# Input :: 1

# Output :: "One".

# My Solution:
def switch_it_up(number)
  case number
  when 1
    "One"
  when 2
    "Two"
  when 3
    "Three"
  when 4
    "Four"
  when 5
    "Five"
  when 6
    "Six"
  when 7
    "Seven"
  when 8
    "Eight"
  when 9
    "Nine"
  when 0
    "Zero"
  end
end

# VERY Clever Alternative
def switch_it_up(number)
  # Each number in array is the same as its index value. ie: 0 is position "Zero"
  arr = ["Zero","One","Two","Three","Four","Five","Six","Seven","Eight","Nine"]
  return arr[number];
end
