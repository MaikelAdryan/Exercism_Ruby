# https://exercism.org/tracks/ruby/exercises/isogram
# Isogram

module Isogram
  def self.isogram? input
    letters = [];
    input.downcase.gsub("-","").gsub(" ","").split("").each do |letter|
      letters.include?(letter) ? return : letters << letter
    end
  end
end