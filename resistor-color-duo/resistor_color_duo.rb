# https://exercism.org/tracks/ruby/exercises/resistor-color-duo
# Resistor Color Duo

module ResistorColorDuo
  BAND = {
    "black" =>  0,
    "brown" =>  1,
    "red" =>    2,
    "orange" => 3,
    "yellow" => 4,
    "green" =>  5,
    "blue" =>   6,
    "violet" => 7,
    "grey" =>   8,
    "white" =>  9
  }
  def self.value colors
    colors_index = ""
    colors[..1].each_with_object(BAND) do |index , colors|
      colors_index += colors[index].to_s
    end
    colors_index.to_i
  end
end