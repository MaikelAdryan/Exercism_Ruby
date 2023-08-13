# https://exercism.org/tracks/ruby/exercises/acronym
# Acronym

module Acronym
  def self.abbreviate(text)
    short_text = ""
    text.sub("-", " ").split(" ").each do |letter|
      short_text << letter[0].upcase
    end
    short_text
  end
end