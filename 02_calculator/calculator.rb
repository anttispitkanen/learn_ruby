def add x, y
  x + y
end

def subtract x, y
  x - y
end

def sum array
  sum = 0
  array.each do |f|
    sum += f
  end
  sum
end


def multiply x, y, a=1, b=1, c=1, d=1
  x * y * a * b * c * d
end

def power x, y
  x ** y
end

def factorial x
  factorial = 1
  (1..x).each do |f|
    factorial *= x
  end
  factorial
end


#puts "add 2 + 5 = #{add(2,5)}"
#puts "subtract 90 - 44 = #{subtract 90, 44}"
#test_array = [1,2,3,4,5]
#puts "sum 1+2+3+4+5 = #{sum test_array}"
#puts "multiply 2 * 3 = #{multiply 2, 3}"
#puts "5! = #{factorial 5}"
