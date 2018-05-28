# Quiz Letter blocks
# Language: Javascript or Ruby
# You are given a collection of ABC blocks. Just like the ones you had when you were a kid. There are 19 blocks with two letters on each block. You are guaranteed to have a complete alphabet amongst all sides of the blocks. The sample blocks are:
#
# [
#   ['B','O'],
#   ['X','K'],
#   ['D','Q'],
#   ['C','P'],
#   ['N','A'],
#   ['G','T'],
#   ['R','E'],
#   ['T','G'],
#   ['Q','D'],
#   ['F','S'],
#   ['J','W'],
#   ['H','U'],
#   ['V','I'],
#   ['A','N'],
#   ['E','R'],
#   ['F','S'],
#   ['L','Y'],
#   ['P','C'],
#   ['Z','M']
# ]
# If you test these words, these results will happen:
#
# can_make_word("A")
# # => true
# can_make_word("BARK")
# # => true
# can_make_word("BOOK")
# # => false
# can_make_word("TREAT")
# # => true
# can_make_word("COMMON")
# # => false
# can_make_word("SQUAD")
# # => true
# can_make_word("CONFUSE")
# # => true
# can_make_word("BOUGHT")
# # => false
# Write the can_make_word function to output the results above.

@blocks = [
  ['B','O'],
  ['X','K'],
  ['D','Q'],
  ['C','P'],
  ['N','A'],
  ['G','T'],
  ['R','E'],
  ['T','G'],
  ['Q','D'],
  ['F','S'],
  ['J','W'],
  ['H','U'],
  ['V','I'],
  ['A','N'],
  ['E','R'],
  ['F','S'],
  ['L','Y'],
  ['P','C'],
  ['Z','M']
]

# can_make_word function explanation line-by-line:
# 1) Duplicate blocks so we can re-use the function to test different words.
# 2) Iterate through each letter in the word and return true if blocks are found for all letters.
# 3) Find location of letter in flattened array of letters.
# 4) Delete block from nested array if letter found. Must divide index by 2 since there are 2 letters per block.
def can_make_word(word)
  blocks = @blocks.dup
  word.upcase.chars.all? do |letter|
    index = blocks.flatten.index(letter)
    blocks.delete_at index/2 if index
  end
end

puts can_make_word 'a' # => true
puts can_make_word 'bark' # => true
puts can_make_word 'book' # => false
puts can_make_word 'treat' # => true
puts can_make_word 'common' # => false
puts can_make_word 'squad' # => true
puts can_make_word 'confuse' # => true
puts can_make_word 'bought' # => false
