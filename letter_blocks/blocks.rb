require 'pry'
#go to first letter of word, find that letter on a block, strike that block out as no longer useable
#move to next letter and repeat until whole word is made and return true, if it can not be made return false

@blocks = [ #must be an instance variable to be used in the function
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

def can_make_word(word)
  block_str = @blocks.flatten.join #turns letters into strings and puts them together ie("BOXKD...")
  blocks_found = 0
  word.upcase.chars.each do |letter| #loops through letters turn into upcase and separate them ie. "B","O","X","K",..."
    if block_str.include?(letter) #does the string include the letter in the word?
      index = block.str.index(letter)
      block_str = block_str.chars.delete_at index #deletes that letter
      if index.even?
        block_str.chars.delete_at index
      else
        block_str.chars.delete_at index-1
      end
      blocks_found += 1
    end
  end
  blocks_found == word.length
end
