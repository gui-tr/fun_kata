def smaller(arr)
  output = []
  array = arr

  while array.length > 0
    occurence = 0
    index = 0
    current_value = array.shift

    loop do 
      break if array[index] == nil
      if array[index] < current_value
        occurence += 1
      end
      index += 1
    end
    output << occurence
  end
  output
end


arr = [1, 2, 0] # => [1, 1, 0]
arr2 = [1, 1, -1, 0, 0] # => [3, 3, 0, 0, 0]

smaller(arr2) 