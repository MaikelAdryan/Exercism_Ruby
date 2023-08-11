# https://exercism.org/tracks/ruby/exercises/port-palermo
# Port Of Palermo

module Port
  Identifier = :PALE
  
  def self.get_identifier(city)
    city[0..3].upcase!.to_sym
  end

  def self.get_terminal(ship_identifier)
    ship = ship_identifier.to_s[0..2] 
    if ship == "OIL" or ship == "GAS"
      return :A
    else
      return :B
    end
  end
end
