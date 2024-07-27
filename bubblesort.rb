def bubblesort(array)
  swap_flag = false
  iteration = 1
  sorted = false
  while sorted == false do
    # For every item in array
    swap_flag = false
    for i in 0..(array.length-iteration-1)
      # if array[i] is greater than the next item array[i+1]
      if array[i] > array[i+1]
        debugger
        # Create a copy of item
        copy = array[i]
        # Set array[i] value to array[i+1]
        array[i] = array[i+1]
        # Set array[i+1] value to the copied array value
        array[i+1] = copy
        # 
        swap_flag = true
      else 
        next
      end
    end
    unless iteration >= (array.length-1)
      iteration += 1
    end
    if swap_flag == false
      sorted = true
    end
  end
  return array
end

bubblesort([55,6,4,3,2,1])