def fibs(number)
  fibonacci_array = []
  length = number - 2
  first = 0
  second = 1
  fibonacci_array.push(first, second)
  length.times {|i|
      result = first + second
      first = second
      second = result 
      fibonacci_array << result
  }
  puts fibonacci_array
end

def fibs_rec(result = [0,1], number)
  if result.length >= number
    return result
  else
    next_value = result[-1] + result[-2]
    result << next_value
    fibs_rec(result, number)
  end
end

puts fibs_rec(8)