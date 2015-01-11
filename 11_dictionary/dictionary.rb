#notdone

class Dictionary

  def initialize
    @dictionary = Hash.new(nil)
  end

  def add(hasher)
    @dictionary.store(hasher)
  end

  def entries
    puts @dictionary
  end

  def keywords
  end

end

#schwad = Dictionary.new
#schwad.add('fish')
#schwad.entries
bill = Dictionary.new
bill.add("greg" => "nineteen")
bill.entries

