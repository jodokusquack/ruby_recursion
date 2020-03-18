def merge_sort(list)
  if list.length <= 1 
    return list
  else
    halfway_point = list.length/2
    left = merge_sort(list.slice!(0, halfway_point))
    right = merge_sort(list)
    return merge_lists(left, right)
  end
end

def merge_lists(left, right)
  res = []
  until left.empty? or right.empty?
    left[0] < right[0] ? res.push(left.shift) : res.push(right.shift)
  end
  res + left + right
end

p merge_sort([1,3, 2, 4, 5, 6, 1, 2, ])
p merge_sort([2,4,1,0,-1,2,3,1,1])
p merge_sort([2,1])
