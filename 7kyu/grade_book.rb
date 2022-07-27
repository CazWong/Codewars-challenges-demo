# Grade book
# Complete the function so that it finds the average of the three scores passed to it and returns the letter value associated with that grade.

# Numerical Score	Letter Grade
# 90 <= score <= 100	'A'
# 80 <= score < 90	'B'
# 70 <= score < 80	'C'
# 60 <= score < 70	'D'
# 0 <= score < 60	'F'
# Tested values are all between 0 and 100. Theres is no need to check for negative values or values greater than 100.

# My Solution:
def get_grade(s1, s2, s3)

  average_score = (s1+s2+s3) / 3

  if average_score >= 90
    'A'
  elsif average_score < 90 && average_score >= 80
    'B'
  elsif average_score < 80 && average_score >= 70
    'C'
  elsif average_score < 70 && average_score >= 60
    'D'
  else
    'F'
  end
end

def get_grade(s1, s2, s3)
  m = (s1 + s2 + s3)/3.to_f
  m >= 90 ? 'A' : m >= 80 ? 'B' : m >= 70 ? 'C' : m >= 60 ? 'D' : 'F'
end

def get_grade(*scores)
  case scores.inject(:+).fdiv(3)
  when 90..100 then "A"
  when 80...90 then "B"
  when 70...80 then "C"
  when 60...70 then "D"
  else "F"
  end
end
