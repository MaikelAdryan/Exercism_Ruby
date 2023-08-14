class Phrase
  def initialize text
    @text = text.downcase.scan(/\b[\w']+\b/)
  end
  def word_count
    counts = {}
    @text.each do |word|
      counts[word] = @text.count(word)
    end
    counts
  end
end