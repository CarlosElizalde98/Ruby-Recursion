def merge_sort(array)
    if array.length <= 1
        return array
    end
    mid = (array.length / 2) 
    final = array.length
    left_array = merge_sort(array[0...mid])
    right_array = merge_sort(array[mid...final])
  
    merge(left_array, right_array)
end

def merge(left, right)
    sorted_array = []
    while !left.empty? && !right.empty? do
        if left[0] < right[0]
            sorted_array.push(left.shift)
        else
            sorted_array.push(right.shift)
        end
    end
    sorted_array.concat(left).concat(right)
end

unsorted_array = [3, 2, 1, 13, 8, 5, 0, 1]
unsorted_array_two = [105, 79, 100, 110]
p merge_sort(unsorted_array)
p merge_sort(unsorted_array_two)