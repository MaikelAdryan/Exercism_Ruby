class Tournament

  def self.tally input
    plays = []
    input.split(/\R/).each{|i|
      plays << i.split(";")
    }
    check_wins(plays)
  end

  def self.check_wins game
    game.each{|i, j, p|
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