class Tournament

  def self.tally input
    matches = []
    input.split(/\R/).each{|i|
      matches << i.split(";")
    }
    check_wins(matches)
  end

  def self.check_wins matches
    matches.each{|i, j, p|
      p i
      p j
      p p
    }
  end
end

Tournament.tally(
"Allegoric Alaskans;Blithering Badgers;win
Allegoric Alaskans;Blithering Badgers;win"
)