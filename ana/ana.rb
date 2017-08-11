# permutations for phrase 1
# start with small string input

# O(n * n!)
# beyond exponential growth - would take forever
def first_anagram?(str1, str2)
  bank = str1.chars.permutations.to_a
  bank.include?(str2)
end

# O(n^)
def second_anagram?(str1, str2)
  arr1 = str1.split('')
  arr2 = str2.split('')

  arr1.each do |letter|
    target_idx = arr2.find_index(letter)
    return false unless target_idx
    arr2.delete_at(target_idx)
  end

  arr2.empty?
end

# O(n log n)
# assume sorts are n log n
# O(n log n) + O (n log n) == 2 * O(n log n) == O(n log n)
def third_anagram?(str1, str2)
  return true if str1.sort == str2.sort
  false
end

# First version fails due to possiblity of str1 = AA and str2 = OO.
#    Also, str1 = AA str2 = ""
# O(n)

def fourth_anagram?(str1, str2)
  # string = str1 + str2
  # hash = Hash.new(0)
  # string.each_char do |letter|
  #   hash[letter] += 1
  # end
  # hash.values.all? { |val| val.even?}

  hash = Hash.new(0)

  str1.each_char do |letter|
    hash[letter] += 1
  end

  str2.each_char do |letter|
    hash[letter] -= 1
  end

  hash.values.all? {|val| val.zero? }

end

p fourth_anagram?("gizmo", "sally")    #=> false
p fourth_anagram?("elvis", "lives")    #=> true
