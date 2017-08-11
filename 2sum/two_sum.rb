# DOES NOT WORK: Because of two factors being the same number but only
# occur once.

def two_sum_seth?(array, target)
  array.each do |num|
    return true if array.include?(target - num)
  end
  false
end

arr = [0, 1, 5, 7]
# p two_sum_seth?(arr, 6) # => should be true
# p two_sum_seth?(arr, 10) # => should be false

def two_sum_julie?(array, target) # O(n^2) (Brute Force)
  sums = []
  array.each_with_index do |el, i|
    array.each_with_index do |el2, j|
      next if i == j
      sums << el + el2
    end
  end
  sums.include?(target)
end

# p two_sum_julie?(arr, 6) # => should be true
# p two_sum_julie?(arr, 10) # => should be false

def okay_two_sum(array, target)

  array.sort!
  # Variable for 0 (starting) = FRONT
  # Variable for array.length = BACK
  # Look at array[FRONT] + array[BACK] <=> target
  # Case ^^^^^

  # when 1 (greater than target) we move BACK down
  # when -1 (less than target) we move FRONT up
  # when 0 and IDX != IDX, found it
  # when 0 and IDX == IDX, didn't find it.

  


end






def two_sum_hash(array, target)
  hash = Hash.new(0)

  array.each do |ele|
    hash[ele] = array.count(ele)
  end

  hash.each do |hash_key, hash_val|
    if target.even? && hash_key == target / 2 && hash_val < 2
       next
    elsif hash[target - hash_key] >= 1
      return true
    end
  end
  false

end


p two_sum_hash(arr, 6)
p two_sum_hash(arr, 10)
p two_sum_hash(arr, 12)
