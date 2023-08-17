class Tournament
  @teams = []
  @matches_played = []
  @wins = []
  @drawn_matches = []
  @loss = []
  @team_points = {}

  def self.tally input
    matches = []
    input.split(/\R/).each{|match|
      matches << match.split(";")
    }
    matches.each{|first_team, second_team, match_result|
      checking_matches_played(first_team, second_team)
      checking_winner(first_team, second_team, match_result) #p @wins.count(first_team) #checando quantas vezes venceu o primeiro time
    }
    adding_points()
    to_s()
  end

  def self.checking_matches_played first_team, second_team
    @matches_played << first_team << second_team
    return @teams << first_team unless @teams.include? first_team
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
    @teams.each{|team|
      @team_points[team] = @wins.count(team)*3 + @drawn_matches.count(team)
    }
  end


  
  def self.to_s
    result = <<~TALLY"Team                           | MP |  W |  D |  L |  P\n"
    TALLY
    @teams.each{|team|
      result += "#{team.ljust(30)} |  #{@matches_played.count(team)} |  #{@wins.count(team)} |  #{@drawn_matches.count(team)} |  #{@loss.count(team)} |  #{@team_points[team]}\n"
    }
    result
  end
end
# print Tournament.tally(
# <<~INPUT
# Devastating Donkeys;Blithering Badgers;win
# Devastating Donkeys;Blithering Badgers;win
# Devastating Donkeys;Blithering Badgers;win
# Devastating Donkeys;Blithering Badgers;win
# Blithering Badgers;Devastating Donkeys;win
# INPUT
# )