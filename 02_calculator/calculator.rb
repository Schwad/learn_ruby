def add(num1,num2)
  return num1 + num2
end

def subtract(num1,num2)
  return num1 - num2
end

def sum(ary)
  if ary == []
    return 0
  end
  answer = 0
  ary.each do |x|
    answer += x
  end
  return answer
end

def multiply(ary)
  if ary == []
    return 0
  end
  answer = 1
  ary.each do |x|
    answer *= x
  end
  return answer
end

def power(num1,num2)
  return num1 ** num2
end

def factorial(num)
  if num == 0
    return 0
  end
  answer = 1
  (1..num).each do |x|
    answer *= x
  end
  return answer
end

sum([7])