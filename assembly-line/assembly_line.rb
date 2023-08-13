class AssemblyLine
  CARS_PER_HOUR = 221
  cars_per_minute = 0
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed <= 4
      @speed * CARS_PER_HOUR.to_f
    elsif @speed <= 8
      (@speed * CARS_PER_HOUR)*0.9.to_f
    elsif @speed < 10
      (@speed * CARS_PER_HOUR)*0.8.to_f
    else
      (@speed * CARS_PER_HOUR)*0.77.to_f
    end
  end

  def working_items_per_minute
    production_rate_per_hour.to_i/60
  end
end
