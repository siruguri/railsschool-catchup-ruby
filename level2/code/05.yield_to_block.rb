def each_cell(matrix, &blk1)
  ret_matrix=[]
  matrix.each_with_index do |row, row_num|
    out_row = []
    row.each_with_index do |cell_val, col_num|
      out_row << blk1.call(cell_val, row_num, col_num)
    end
    ret_matrix << out_row
  end

  ret_matrix
end

# We can now use this function on a "matrix", that is, an array of arrays, like so:

matrix = [ [1,1], [2,4], [3, 9], [4, 16] ]
new_matrix = each_cell(matrix) { |val, rn, cn| puts "returning #{2*val}"; 2*val }
# Or we can splat it
puts new_matrix
