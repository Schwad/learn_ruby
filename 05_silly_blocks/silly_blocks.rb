#THIS IS DONE

def reverser
  input_variable = yield
  answer = []
  input_variable.split(" ").each do |word|
    answer << word.reverse
  end  
  return answer.join(" ")
end

def adder(num=1)
  variable = yield + num
  puts variable
  return variable
end

def repeater(num=1)
  num.times do 
    yield
  end
end
