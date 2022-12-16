def bubble_sort(list)
  
  for i in 1..list.size - 1 
    swap = false
    for a in 0..list.size - (i + 1)
      prev = list[a]
      nex = list[a + 1]
      if prev > nex
        list[a] = nex
        list[a + 1] = prev
        swap = true
      end
    end
    if swap == false
      return list
    end
  end
end

p bubble_sort([4,3,78,2,0,2])
p bubble_sort([98, 54, 67, 21, 4, -2, 3,78,2,0,2,5])