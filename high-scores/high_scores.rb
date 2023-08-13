# https://exercism.org/tracks/ruby/exercises/high-scores
# High Scores

class HighScores
  def initialize scores
    @scores = scores
  end
  
  def scores
    @scores
  end
  
  def latest
    @scores[-1]
  end

  def personal_best
    @scores.max
  end

  def personal_top_three
    @scores.max(3)
  end

  def latest_is_personal_best?
    @scores.max == @scores[-1] ? true : false
  end
end