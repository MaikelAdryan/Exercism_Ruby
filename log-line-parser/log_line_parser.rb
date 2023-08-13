class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    #@line.slice(@line.index(' '), @line.size).strip
    @line.split(":")[1].strip
    
  end

  def log_level
    @line.split(":")[0].gsub("[", "").gsub("]","").downcase.strip
  end

  def reformat
    @line.split(":")[1].strip + " " + @line.split(":")[0].gsub("[","(").gsub("]",")").downcase.strip
  end
end
