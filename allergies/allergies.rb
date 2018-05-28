
# An allergy test produces a single numeric score which contains the information
# about all the allergies the person has (that they were tested for).
#
# The list of items (and their value) that were tested are:
#
# eggs (1)
# peanuts (2)
# shellfish (4)
# strawberries (8)
# tomatoes (16)
# chocolate (32)
# pollen (64)
# cats (128)
# So if Tom is allergic to peanuts and chocolate, he gets a score of 34.
#
# Write a program that, given a person's score can tell them
#
# a) whether or not they're allergic to a given item, and b) the full list of allergies.
#
# allergies = Allergies.new(34)
# allergies.allergic_to?('chocolate')
# => true
# allergies.allergic_to?('cats')
# => false
# allergies.list
# => ['peanuts', 'chocolate']

# take a score of person
# is the score less than or equal to the items on the list
# subtract that allergin from the score
# add allergin to the list
# if there is a remainder then go back and check the next one
# print list of allergies


allergies = {
  eggs: 1,
  peanuts: 2,
  shellfish: 4,
  strawberries: 8,
  tomatoes: 16,
  chocolate: 32,
  pollen: 64,
  cats: 128
}

class Allergies

  def initialize(score)
    score = Allergies.new


  end

  def allergic_to?

  end

  def list

  end

end
