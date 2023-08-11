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
        # if @matrix[number_of_column].split(" ").index(number+1)
        if @matrix[number_of_column].split(" ").index(i.to_i) == number
          matrix_numbers << i.to_i
        end
        p @matrix[number_of_column].split(" ")[number-1]
      }
      number_of_column+=1
    end
    matrix_numbers
  end
end

matrix = Matrix.new("1 2 3\n4 5 6\n7 8 9\n8 7 6")
p matrix.column(2)