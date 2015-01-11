def measure(num=1)
  num.times do 
    beginning_time = Time.now
    yield 
    ending_time = Time.now    
  end
  puts (ending_time - beginning_time) / num
end

measure do 
end