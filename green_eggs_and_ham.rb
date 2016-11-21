class GreenEggsAndHam
  def initialize
    @text = File.read('green_eggs_and_ham.txt')
    @words = @text.split(/[ .!?,\n]/).reject { |word| word.empty? }
  end

  def word_count
    @words.length
  end

  # more methods here!!!!
  def sorted_unique_words
    word_selected = @words.map {|word| word.downcase}.uniq.sort
  end

  def number_of_words_shorter_than(num)
    @words.count {|word| word.length < num}
  end

  def longest_word
    @words.max {|word| word.length}
  end

  #
  def stanzas
    @text.split("\n\n") # use every resources available!!!!
  end

  def lines
    # string => array      => array   #.split will retun an array. It will split @text to an array
    @text.split("\n").reject{ |line| line.empty? }
  end

end
