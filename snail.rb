# INSTRUCTION: 
# Given an n x n array, return the array elements arranged from outermost elements to the middle element, traveling clockwise.

def snail(array)

  # finding out value of n
  n = array[0].length
  
  # output
  snail_array = []

  # loop counting
  loop_count = 0

  loop do
    # RIGHT
    index = loop_count

    (n - (loop_count * 2)).times do
      snail_array << array[loop_count][index]
      index += 1
    end

    # DOWN
    index = (loop_count + 1)

    ((n - 1) - (loop_count * 2)).times do
      snail_array << array[index][(- 1) - (loop_count)]
      index += 1
    end

    # LEFT
    index = ((- 2) - (loop_count))
    
    ((n - 1) - (loop_count * 2)).times do
      snail_array << array[(- 1) - (loop_count)][index]
      index -= 1
    end

    # UP
    index = ((- 2) - (loop_count))

    ((n - 2) - (loop_count * 2)).times do
      snail_array << array[index][loop_count]
      index -= 1
    end

    # break
    break if loop_count == (n / 2)

    loop_count += 1

  end

  # output
  snail_array
end

=begin

  TEST - INPUT/OUTPUT

  array = [
    [1,2,3],
    [8,9,4],
    [7,6,5]
  ]

  snail(array) #=> [1,2,3,6,9,8,7,4,5,6,7,8,9]

=end
