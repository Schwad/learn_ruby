#done
class Fixnum
  def in_words
    if self == 0
      puts "zero"
    else
      @word_input = self.to_s.split(//)
      @word_result = []
      @hash_o_teens = { 11 => "eleven",
        12 => "twelve",
        13 => "thirteen",
        14 => "fourteen",
        15 => "fifteen",
        16 => "sixteen",
        17 => "seventeen",
        18 => "eighteen",
        19 => "nineteen"
      }
      @hash_o_single = { 1 => "one",
        2 => "two",
        3 => "three",
        4 => "four",
        5 => "five",
        6 => "six",
        7 => "seven",
        8 => "eight",
        9 => "nine"
      }
      @hash_o_double = { 2 => "twenty",
        3 => "thirty",
        4 => "forty",
        5 => "fifty",
        6 => "sixty",
        7 => "seventy",
        8 => "eighty",
        9 => "ninety"
      }
      @hash_o_triple = { 1 => "one hundred",
        2 => "two hundred", 
        3 => "three hundred",
        4 => "four hundred",
        5 => "five hundred",
        6 => "six hundred",
        7 => "seven hundred",
        8 => "eight hundred",
        9 => "nine hundred"
      }
      i = 1
      while i <= @word_input.length
        checker = i * -1
        if @word_input[-2..-1].join("").to_i < 20 && @word_input[-2..-1].join("").to_i > 10
          if checker == -1
            @hash_o_teens.each do |key, value|
              if @word_input[-2..-1].join("").to_i == key
                @word_result << value
              end
            end
          end
        else
          if checker == -1
            @hash_o_single.each do |key, value|
              if key == @word_input[checker].to_i
                @word_result << value
              end
            end
          end

          if checker == -2
            @hash_o_double.each do |key, value|
              if key == @word_input[checker].to_i
                @word_result << value
              end
            end
          end
        end

        if checker == -3
          @hash_o_triple.each do |key, value|
            if key == @word_input[checker].to_i
              @word_result << value
            end
          end
        end       
       i += 1
      end
      puts @word_result.reverse.join(" ")
    end
  end
end

717.in_words
1.in_words
34.in_words
12.in_words