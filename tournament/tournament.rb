class Tournament
  @teams = []
  @matches_played = []
  @wins = []
  @drawn_matches = []
  @loss = []
  @team_points = []

  def self.tally input
    matches = []
    input.split(/\R/).each{|match|
      matches << match.split(";")
    }
    matches.each{|first_team, second_team, match_result|
      checking_matches_played(first_team, second_team)
      checking_winner(first_team, second_team, match_result)
    }
    adding_points()
    to_s()
  end

  def self.checking_matches_played first_team, second_team
    @matches_played << first_team << second_team
    @teams << first_team unless @teams.include? first_team
    @teams << second_team unless @teams.include? second_team
  end

  def self.checking_winner first_team, second_team, match_result
    if match_result == "draw"
      @drawn_matches << first_team << second_team

    end
    if match_result == "win"
      @wins << first_team
      @loss << second_team

    end
    if match_result == "loss"
      @wins << second_team
      @loss << first_team

    end
  end

  def self.adding_points
    @teams.sort.map{|team|
      @team_points << [@wins.count(team)*3 + @drawn_matches.count(team), team]
    }
    @team_points = @team_points.sort_by!
  end
  
  def self.to_s
    result = ""
    p @team_points
    @team_points.each{|value, team|
      result += "#{team.ljust(30)} |  #{@matches_played.count(team)} |  #{@wins.count(team)} |  #{@drawn_matches.count(team)} |  #{@loss.count(team)} |  #{value}\n"
    }
    <<~TALLY
    Team                           | MP |  W |  D |  L |  P\n#{result} 
    TALLY
  end
end


input = <<~INPUT
Courageous Californians;Devastating Donkeys;win
Allegoric Alaskans;Blithering Badgers;win
Devastating Donkeys;Allegoric Alaskans;loss
Courageous Californians;Blithering Badgers;win
Blithering Badgers;Devastating Donkeys;draw
Allegoric Alaskans;Courageous Californians;draw
INPUT

print Tournament.tally(input)

# Team                           | MP |  W |  D |  L |  P
# Allegoric Alaskans             |  3 |  2 |  1 |  0 |  7
# Courageous Californians        |  3 |  2 |  1 |  0 |  7
# Blithering Badgers             |  3 |  0 |  1 |  2 |  1
# Devastating Donkeys            |  3 |  0 |  1 |  2 |  1