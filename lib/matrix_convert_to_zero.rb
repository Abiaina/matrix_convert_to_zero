# Updates the input matrix based on the following rules:
# Assumption/ Given: All numbers in the matrix are 0s or 1s
# If any number is found to be 0, the method updates all the numbers in the
# corresponding row as well as the corresponding column to be 0.

def matrix_convert_to_0(matrix)

  rows = matrix.length
  columns = matrix[0].length
  track_zeros = []

  rows.times do |row|
    columns.times do |column|
      if matrix[row][column] == 0
        track_zeros << [row, column]
      end
    end
  end

  track_zeros.length.times do |index|
    columns.times do |column|
      matrix[track_zeros[index][0]][column] = 0
    end

    rows.times do |row|
      matrix[row][track_zeros[index][1]] = 0
    end
  end

end
