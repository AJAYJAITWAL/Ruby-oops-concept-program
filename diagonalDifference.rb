def diagonalDifference(arr)
    left_to_right=0
    right_to_left=0
    arr.each_with_index do |array, index|
        left_to_right += array[index]
        right_to_left += array[-index-1]
    end
    p (right_to_left - left_to_right).abs
end
diagonalDifference([[1, 2, 3], [4, 5, 6], [9, 8, 9]])