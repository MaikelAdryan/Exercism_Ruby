class Series
  def initialize series
    @series = series
  end
  def slices size
    raise ArgumentError if size > @series.length
    @series.chars.each_cons(size).map(&:join)
  end
end