
#DONE
def translate(phrase)
  such_vowelage = ["a", "e", "i", "o", "u"]
  words = phrase.split(" ")
  new_words = []

  words.each do |word|
    first_letter_check = 1
    if word[0..1] == "qu"
      greg = word[2..-1] + "quay"
      new_words << greg
      next
    elsif word[0..2] == "squ"
      greg = word[3..-1] + "squay"
      new_words << greg
      next
    elsif word[0..2] == "sch"
      greg = word[3..-1] 
      new_words << greg + "schay"
      next
    end
    value = 1
    word.each_char do |letter|
      if first_letter_check == 1
        if such_vowelage.include?(letter)
          new_words << word + "ay"
          break
        end 
        first_letter_check += 1
      else
         
        #it hates this section
          if such_vowelage.include?(letter)
            greg = word[value..-1].to_s + word[0..(value-1)].to_s + "ay"
            new_words << greg
            break
          end
          value += 1
      end
    end
  end
  return new_words.join(" ")
end
