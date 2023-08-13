class Matrix
  def initialize matrix
    @matrix = matrix.split("\n")
  end

  def row number
    matrix_numbers = []
    @matrix[number-1].split(" ").each{|i|
      matrix_numbers << i.to_i
    }
    matrix_numbers
  end

  def column number
    matrix_numbers = []
    number_of_column = 0
    while number_of_column != @matrix.length
      @matrix[number_of_column].split(" ").each{|i|
        if @matrix[number_of_column].split(" ")[number-1].to_i == i.to_i
          matrix_numbers << i.to_i 
          #@matrix[number_of_column].split(" ")[number-1].to_i
        end
      }
      number_of_column+=1
    end
    matrix_numbers
  end
end