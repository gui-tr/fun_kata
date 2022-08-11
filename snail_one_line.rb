def snail(array)
  array.empty? ? [] : array.shift + snail(array.transpose.reverse)
end

array = [
  [1,2,3],
  [8,9,4],
  [7,6,5]
]

snail(array) 