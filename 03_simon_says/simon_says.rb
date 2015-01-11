def echo(phrase)
  return phrase
end

def shout(phrase)
  return phrase.upcase
end

def repeat(phrase,num=1)
  if num == 1
    puts "#{phrase} #{phrase}"
   return "#{phrase} #{phrase}"
  end

  return "#{phrase} " * (num -1) + phrase
end

def start_of_word(phrase,num)
  num = num-1
  return phrase.split(//)[0..num].join('')
end

def first_word(phrase)
  return phrase.split(" ")[0]
end

def titleize(phrase)
  final_phrase = []
  if phrase.split(" ").length == 1
    return phrase.capitalize
  end
  final_phrase << phrase.split(" ")[0].capitalize
  z = 0
  phrase.split(" ").each do |x|
    if z == 0
      z += 1
      next
    end
    if x == "and" || x == "over" || x == "the"
      final_phrase << x
    else
      final_phrase << x.capitalize
    end
  end
  return final_phrase.join(" ")
end

puts titleize("the bridge over the river kwai")