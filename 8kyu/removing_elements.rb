# Take an array and remove every second element from the array. Always keep the first element and start removing with the next element.

def remove_every_other(array)
  array.select.with_index { |_, index| index.even? }
end

# Alternative:

def remove_every_other(array)
  array.each_slice(2).map(&:first)
end
