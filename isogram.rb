# https://exercism.org/tracks/ruby/exercises/isogram
# Isogram

module Isogram
  def self.isogram? input
    letters = [];
    input.downcase.gsub("-","").gsub(" ","").split("").each{|letter|
      if letters.include?(letter)
        return false 
      else
        letters << letter
      end
    }
  end
end