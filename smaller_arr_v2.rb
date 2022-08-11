def smaller(arr)
  output = []
  index = 0
  
  arr.each do |int|
    count = 0
    arr[(index + 1)..-1].each do |r_int|
      if r_int < int
        count += 1
      end
    end
    output << count
    index += 1
  end
p output
end


arr = [1, 2, 0] # => [1, 1, 0]
arr2 = [1, 1, -1, 0, 0] # => [3, 3, 0, 0, 0]

smaller(arr2)

arr = [1, 2, 0] # => [1, 1, 0]
arr2 = [1, 1, -1, 0, 0] # => [3, 3, 0, 0, 0]

smaller(arr) 