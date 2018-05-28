

#
# Texas Hold 'em Poker.
# Description:
#
# For those who want to know more about Texas Hold 'Em Poker or just need a refresher. Check Wikipedia Article on Texas Hold 'Em Poker For the first challenge we will simulate the dealing part of the game.
#
# Input:
# You will be asked how many players 2 to 8. You will always be one of the players and you are facing 1 to 7 other computer controlled players.
#
# Output:
# Display the 2 cards each player is dealt and the display the 5 community cards. Format is left up to you. (The exact method of the output a card. For my examples I am using verbal words but someone might use unicode symbols for the card suit or other. You design this as long as we can tell the cards apart it is all good)
#
# Example:
# How many players (2-8) ? 3
#
# Your hand: 2 of Clubs, 5 of Diamonds
# CPU 1 Hand: Ace of Spades, Ace of Hearts
# CPU 2 Hand: King of Clubs, Queen of Clubs
#
# Flop: 2 of Hearts, 5 of Clubs, Ace of Clubs
# Turn: King of Hearts
# River: Jack of Hearts
# Dealing Cards:
# To keep things close to the game you will be dealing from 1 deck of standard playing cards. Once you deal that card you cannot deal it again. The exact method is part of the challenge and for you to decide, design and implement. In Texas Hold em you burn a card (draw and discard without looking at it) before you do the flop, turn and river. It removes these cards from the pool of possible cards that can be dealt. If you wish to show these cards (I did not in my example) then please for science go for it.

ranks = '23456789TJQKA'.chars
suits = '♠♥♣♦'.chars
cards  = ranks.product(suits).map(&:join)

print 'How many players (2-22)? '
players = gets.to_i until (2..22) === players

cards.shuffle!
hands = Array.new(players) { [] }

# Deal one at a time (to prevent collusion).
2.times do
  players.times { |i| hands[i] << cards.pop }
end

river = [3, 1, 1].reduce([]) do |comm, n|
  cards.pop # Burn.
  comm.concat cards.pop(n)
end

hands.each_with_index do |hand, i|
  puts "Hand ##{i.succ}: #{hand * ' '}"
end
puts "River: #{river * ' '}"



###############################################################################
#version 1 below


def printCardName(number)
    if number < 14
            case number
            when 1
            "Ace of hearts"
            when 11
            "Jack of hearts"
            when 12
            "Queen of hearts"
            when 13
            "King of hearts"
            else
            "#{number} of hearts"
            end
        elsif number < 27
            number =number - 13
            case number
            when 1
            "Ace of diamonds"
            when 11
            "Jack of diamonds"
            when 12
            "Queen of diamonds"
            when 13
            "King of diamonds"
            else
            "#{number} of diamonds"
            end
        elsif number < 40
            number = number - (13*2)
            case number
            when 1
            "Ace of clubs"
            when 11
            "Jack of clubs"
            when 12
            "Queen of clubs"
            when 13
            "King of clubs"
            else
            "#{number} of clubs"
            end
        elsif number < 53
            number = number - (13*3)
            case number
            when 1
            "Ace of spades"
            when 11
            "Jack of spades"
            when 12
            "Queen of spades"
            when 13
            "King of spades"
            else
            "#{number} of spades"
            end
        else
        "Not a valid card"
    end
end

puts "How many players?\n"
a = gets.chomp.to_i
if a<2 or a>8
    while a<2 or a>8
        puts "Wrong number of players enter a number between 2 and 8.\n"
        a = gets.chomp.to_i
    end
end
deck = (1..52).to_a.shuffle
player_hands = Array.new(a) {Hash.new}
k=0
while k < 2
    i = 0
    while i< a
        player_hands[i][k] = deck.pop
    i+=1
end
k+=1
end
i = 1
player_hands.each{
    |x| puts "Player #{i} has been delt #{printCardName(x[0])} and #{printCardName(x[1])}"
    i += 1
 }
deck.pop
puts "The Flop is the #{printCardName(deck.pop)} the #{printCardName(deck.pop)} and the #{printCardName(deck.pop)}."
deck.pop
puts "The Turn is the #{printCardName(deck.pop)}"
deck.pop
puts "The River is the #{printCardName(deck.pop)}"
