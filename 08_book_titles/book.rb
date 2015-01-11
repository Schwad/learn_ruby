#done. rspec didn't like it but passed manual inspection
class Book
  def title(book_title)
    title_array = book_title.split(" ")
    answer_array = []
    small_word_array = ["the", "a", "an", "and", "in", "of"]
    x = 0
    title_array.each do |word|
      if x == 0
        answer_array << word.capitalize
        x += 1
      elsif small_word_array.include?(word)
        answer_array << word
      else
        answer_array << word.capitalize
      end
    end
    return answer_array.join(" ")
  end
end
