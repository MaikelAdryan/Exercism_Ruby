# https://exercism.org/tracks/ruby/exercises/resistor-color-duo
# Resistor Color Duo

module ResistorColorDuo
  RESISTOR_COLOR = {
    :black => 0,
    :brown => 1,
    :red => 2,
    :orange => 3,
    :yellow => 4,
    :green => 5,
    :blue => 6,
    :violet => 7,
    :grey => 8,
    :white => 9,
  }
  def self.value colors
    (RESISTOR_COLOR[colors[0].to_sym].to_s + RESISTOR_COLOR[colors[1].to_sym].to_s).to_i
  end
end
