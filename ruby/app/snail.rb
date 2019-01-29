def snail(matrix, up = false)
  if matrix.length > 0
    remaining = []
    matrix.map.with_index do |arr, index|
      if up
        remaining.push(arr.slice(1, arr.length - 1))
        arr.first
      elsif index === 0
        arr
      elsif index === matrix.length - 1
        arr.reverse
      else
        remaining.push(arr.slice(0, arr.length - 1))
        arr.last
      end
    end.flatten + snail(remaining.reverse, !up)
  else
    matrix
  end
end
