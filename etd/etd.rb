# O(n^2)

def my_min_p1(array)
  array.each_with_index do |el1,i|
    return el1 if array.all? {|el2| el1 <= el2}
  end
end

# O(n)

def my_min_p2(array)
  array.reduce {|smallest, num| smallest > num ? num : smallest }
end

my_min_p1([ 0, 3, 5, 4, -5, 10, 1, 90 ])
my_min_p2([ 0, 3, 5, 4, -5, 10, 1, 90 ])


# O(n^2)

def largest_contiguous_subsum_p1(array)
  i = 1
  result = array.min
  until i > array.length
    array.each_cons(i) do |sub|
      var = sub.reduce(:+)
      result = var if var > result
    end
    i += 1
  end
  result
end

def largest_contiguous_subsum2(arr)

  largest = arr.first
  current = arr.first
  return arr.max if arr.all? { |num| num < 0 }

  arr.drop(1).each do |num|
    current = 0 if current < 0
    current += num
    largest = current if current > largest
  end

  largest
end

  list = [2, 3, -6, 7, -6, 7]
  p largest_contiguous_subsum2(list)
