# https://exercism.org/tracks/ruby/exercises/resistor-color-duo
# Resistor Color Duo

module ResistorColorDuo
  BLEND = {
    :black  => 0,
    :brown  => 1,
    :red    => 2,
    :orange => 3,
    :yellow => 4,
    :green  => 5,
    :blue   => 6,
    :violet => 7,
    :grey   => 8,
    :white  => 9
  }
  def self.value colors
    (BLEND[colors[0].to_sym].to_s + BLEND[colors[1].to_sym].to_s).to_i
  end
end
