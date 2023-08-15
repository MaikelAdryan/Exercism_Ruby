module Raindrops
  def self.convert number
    raindrop_sound = ""

    raindrop_sound << "Pling" if number % 3 == 0
    raindrop_sound << "Plang" if number % 5 == 0
    raindrop_sound << "Plong" if number % 7 == 0

    return number.to_s if raindrop_sound.empty?
    raindrop_sound
  end
end