def bubble_sort(array)

  n = array.length

  swapped = true

  while swapped do
      swapped = false
      0.upto(n-1) do |i|
    if array[i] > array[i + 1]
      array[i], array[i + 1] = array[i + 1], array[i] # means to swap values
      swapped = true
    end
  end
  array
end

a = [7, 3, 4, 6, 1, 4, 6, 8]

bubble_sort(a)