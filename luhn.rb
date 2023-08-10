# https://exercism.org/tracks/ruby/exercises/luhn
# Luhn

module Luhn
  def self.valid? card
    digits = [];

    card = card.strip.gsub(" ","").split("")
    return false if card.length <= 1
    card.each do |index|
      if index.match(/[0-9]/)
        digits << index.to_i
      else
        return false
      end
    end

    index = 0
    digits = digits.reverse
    for digit in digits do
      if index % 2 == 1
        digits[index]*=2
        if digits[index] > 9
          digits[index] -= 9
        end
      end
      index+=1
    end
    
    result = 0;
    digits.reverse.each do |index|
      result += index
    end
    result % 10 != 0 ? false : true
  end
end

Luhn.valid?("4539 3195 0343 6467")